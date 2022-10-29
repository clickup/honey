import * as vs from "vscode";
import { HoneyCompilation, HoneyStepResult } from "./honey_connection";
import { TestDiscovery } from "./test_discovery";
import { disposeAll, getOutputChannel } from "./utils";

export class TestRunner implements vs.Disposable {
  private testDiscovery: TestDiscovery;
  private testController: vs.TestController;
  private channel: vs.OutputChannel;
  private disposables: vs.Disposable[] = [];

  private currentSession?: vs.DebugSession;
  private currentRun?: vs.TestRun;

  constructor(testDiscovery: TestDiscovery, testController: vs.TestController) {
    this.testDiscovery = testDiscovery;
    this.testController = testController;
    this.channel = getOutputChannel("Honey");

    const startDisposable = vs.debug.onDidStartDebugSession(
      this.handleStartSession,
      this
    );
    const terminateDisposable = vs.debug.onDidTerminateDebugSession(
      this.handleTerminateSession,
      this
    );

    const receiveDisposable = vs.debug.onDidReceiveDebugSessionCustomEvent(
      (e) => {
        if (e.event === "honey.compiled") {
          this.channel.appendLine("Test compilation received");
          this.channel.appendLine(JSON.stringify(e.body));
          this.handleTestCompiled(e.body.testUri, e.body.compilation);
        } else if (e.event === "honey.step") {
          this.channel.appendLine("Test step received");
          this.channel.appendLine(JSON.stringify(e.body));
          this.handleTestStep(e.body.testUri, e.body.step);
        }
      }
    );

    this.createRunProfile();

    this.disposables.push(
      startDisposable,
      terminateDisposable,
      receiveDisposable
    );

    this.channel.appendLine("Test runner initialized");
  }

  dispose() {
    disposeAll(this.disposables);
  }

  private isHoneySession(session: vs.DebugSession) {
    return session.type === "honey";
  }

  public isSessionRunning() {
    return this.currentSession !== undefined;
  }

  private handleStartSession(session: vs.DebugSession) {
    if (!this.isHoneySession(session)) {
      return;
    }

    const tests: string[] = session.configuration.tests;
    const testItems = tests.flatMap((t) => {
      const item = this.testDiscovery.getTestItem(t);
      return item ?? [];
    });
    const request = new vs.TestRunRequest(testItems);
    const run = this.testController.createTestRun(request, "honey", false);

    this.currentSession = session;
    this.currentRun = run;

    this.channel.appendLine("Test run started");
  }

  private handleTerminateSession(session: vs.DebugSession) {
    if (!this.isHoneySession(session)) {
      return;
    }

    this.currentRun?.end();
    this.currentSession = undefined;
    this.currentRun = undefined;
    this.channel.appendLine("Test run ended");
  }

  private handleTestCompiled(testUri: string, compilation: HoneyCompilation) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }
    if (compilation.error) {
      const markdown = new vs.MarkdownString();
      markdown.appendText("Could not compile test\n");
      markdown.appendText(compilation.error + "\n");
      if (compilation.errorLine) {
        markdown.appendText(`Line ${compilation.errorLine} `);
      }
      if (compilation.errorColumn) {
        markdown.appendText(`Column ${compilation.errorColumn}`);
      }
      const message = new vs.TestMessage(markdown);
      message.location = new vs.Location(
        testItem.uri!,
        new vs.Position(compilation.errorLine!, compilation.errorColumn!)
      );
      this.currentRun?.errored(testItem, message);
    } else if (compilation.steps) {
      testItem.children.replace([]);
      for (var i = 0; i < compilation.steps.length; i++) {
        const step = compilation.steps[i];
        const item = this.testController.createTestItem(
          step.line.toString(),
          step.step,
          vs.Uri.file(testUri)
        );
        item.range = new vs.Range(step.line, 0, step.line, step.step.length);
        testItem.children.add(item);
        if (i === 0) {
          item.busy = true;
        }
        this.currentRun?.enqueued(item);
      }

      if (compilation.steps.length > 0) {
        testItem.busy = true;
        this.currentRun?.enqueued(testItem);
      } else {
        this.currentRun?.passed(testItem);
      }
    }

    this.channel.appendLine("Test compilation handled");
  }

  private handleTestStep(testUri: string, step: HoneyStepResult) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }

    const testStepItem = testItem.children.get(step.line.toString());
    if (!testStepItem) {
      return;
    }
    testStepItem.busy = false;

    if (step.error) {
      testItem.children.forEach((child) => {
        if (child.range?.start.line ?? 0 > step.line) {
          this.currentRun?.skipped(child);
        }
      });
      testItem.busy = false;
      this.currentRun?.failed(testStepItem, new vs.TestMessage(step.error));
    } else {
      this.currentRun?.passed(testStepItem);
      if (step.nextLine) {
        const nextStepItem = testItem.children.get(step.nextLine.toString());
        nextStepItem!.busy = true;
      } else {
        testItem.busy = false;
        this.currentRun?.passed(testItem);
      }
    }

    this.channel.appendLine("Test step handled");
  }

  private createRunProfile() {
    this.testController.createRunProfile(
      "honey",
      vs.TestRunProfileKind.Debug,
      (request) => {
        function getTestItems(items: readonly vs.TestItem[]): vs.TestItem[] {
          return items.flatMap((item) => {
            const children: vs.TestItem[] = [];
            item.children.forEach((child) => {
              children.push(child);
            });
            const childItems = getTestItems(children);
            return [item, ...childItems];
          });
        }
        const testItems = getTestItems(request.include ?? []);
        const tests = testItems.flatMap((item) => {
          if (!item.range) {
            return item.uri!.fsPath;
          } else {
            return [];
          }
        });
        vs.debug.startDebugging(undefined, {
          type: "honey",
          name: "honey",
          request: "launch",
          tests: tests,
        });
      },
      true
    );

    this.channel.appendLine("Test run profile created");
  }
}
