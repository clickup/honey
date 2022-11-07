import * as vs from "vscode";
import { HoneyError, HoneyStep } from "./honey_connection";
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

    vs.debug.onDidStartDebugSession(
      this.handleStartSession,
      this,
      this.disposables
    );
    vs.debug.onDidTerminateDebugSession(
      this.handleTerminateSession,
      this,
      this.disposables
    );

    vs.debug.onDidReceiveDebugSessionCustomEvent(
      (e) => {
        if (e.event === "honey.error") {
          this.channel.appendLine("Test error received");
          this.channel.appendLine(JSON.stringify(e.body));
          this.handleTestError(e.body.testUri, e.body.error);
        } else if (e.event === "honey.step") {
          this.channel.appendLine("Test step received");
          this.channel.appendLine(JSON.stringify(e.body));
          this.handleTestStep(e.body.testUri, e.body.step);
        }
      },
      null,
      this.disposables
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

  private handleTestError(testUri: string, error: HoneyError) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }

    const markdown = new vs.MarkdownString();
    markdown.appendText("Could not compile test\n");
    markdown.appendText(error.error + "\n");
    if (error.line) {
      markdown.appendText(`Line ${error.line} `);
    }
    if (error.column) {
      markdown.appendText(`Column ${error.column}`);
    }
    const message = new vs.TestMessage(markdown);
    message.location = new vs.Location(
      testItem.uri!,
      new vs.Position(error.line ?? 0, error.column ?? 0)
    );
    this.currentRun?.errored(testItem, message);

    this.channel.appendLine("Test error handled");
  }

  private handleTestStep(testUri: string, step: HoneyStep) {
    const testItem = this.testDiscovery.getTestItem(testUri);
    if (!testItem) {
      return;
    }
    testItem.busy = true;

    if (!step.nextLine) {
      testItem.busy = false;
      if (step.error && !step.skipped) {
        this.currentRun?.failed(testItem, new vs.TestMessage(step.error));
      } else {
        this.currentRun?.passed(testItem);
      }
    }

    this.channel.appendLine("Test step handled");
  }
}
