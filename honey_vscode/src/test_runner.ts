import * as vs from "vscode";
import {
  HoneyCompilation,
  HoneyStep,
  HoneyStepResult,
} from "./honey_connection";
import { TestDiscovery } from "./test_discovery";
import { disposeAll } from "./utils";

export class TestRunner implements vs.Disposable {
  private testDiscovery: TestDiscovery;
  private testController: vs.TestController;
  private disposables: vs.Disposable[] = [];

  private currentSession?: vs.DebugSession;
  private currentRun?: vs.TestRun;

  constructor(testDiscovery: TestDiscovery, testController: vs.TestController) {
    this.testDiscovery = testDiscovery;
    this.testController = testController;

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
          this.handleTestCompiled(e.body.testUri, e.body.compilation);
        } else if (e.event === "honey.step") {
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
  }

  private handleTerminateSession(session: vs.DebugSession) {
    if (!this.isHoneySession(session)) {
      return;
    }

    this.currentRun?.end();
    this.currentSession = undefined;
    this.currentRun = undefined;
  }

  private handleTestCompiled(testUri: string, compilation: HoneyCompilation) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }

    if (compilation.errorLine) {
      const message = new vs.TestMessage("Could not compile test");
      message.location = new vs.Location(
        testItem.uri!,
        new vs.Position(compilation.errorLine!, compilation.errorColumn!)
      );
      this.currentRun?.errored(testItem, message);
    } else if (compilation.steps) {
      testItem.children.replace([]);
      for (var [si, s] of compilation.steps.entries()) {
        const item = this.testController.createTestItem(
          si.toString(),
          s.step,
          vs.Uri.file(testUri)
        );
        item.range = new vs.Range(s.line, 0, s.line, s.step.length);
        testItem.children.add(item);
        if (si === 0) {
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
  }

  private handleTestStep(testUri: string, step: HoneyStepResult) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }

    const testStepItem = testItem.children.get(step.index.toString());
    if (!testStepItem) {
      return;
    }

    if (step.error) {
      this.currentRun?.failed(testStepItem, new vs.TestMessage(step.error));
      for (var i = step.index + 1; i < testItem.children.size; i++) {
        const skippedItem = testItem.children.get(i.toString());
        skippedItem!.busy = false;
        this.currentRun?.skipped(skippedItem!);
      }
    } else {
      this.currentRun?.passed(testStepItem);
    }

    testStepItem.busy = false;

    if (step.index === testItem.children.size - 1) {
      testItem.busy = false;
      this.currentRun?.passed(testItem);
    } else if (step.error) {
      testItem.busy = false;
    } else {
      const nextStepItem = testItem.children.get((step.index + 1).toString());
      nextStepItem!.busy = true;
    }
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
  }
}
