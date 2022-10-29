import * as vs from "vscode";
import { HoneyConnection } from "./honey_connection";
import { TestRunner } from "./test_runner";

export class DebugConfigProvider implements vs.DebugConfigurationProvider {
  private honeyConnection: HoneyConnection;
  private testRunner: TestRunner;

  constructor(honeyConnection: HoneyConnection, testRunner: TestRunner) {
    this.honeyConnection = honeyConnection;
    this.testRunner = testRunner;
  }

  resolveDebugConfiguration(
    _folder: vs.WorkspaceFolder | undefined,
    config: vs.DebugConfiguration,
    _token?: vs.CancellationToken
  ): vs.ProviderResult<vs.DebugConfiguration> {
    const activeDoc = vs.window.activeTextEditor?.document;
    if (config.type != "honey" && activeDoc?.languageId != "honeytalk") {
      return config;
    }

    if (this.testRunner.isSessionRunning()) {
      vs.window.showErrorMessage("Test is already running");
      return undefined;
    } else if (!this.honeyConnection.isConnected()) {
      vs.window.showErrorMessage("No Honey app is running");
      return undefined;
    }

    if (config?.tests?.length === 0 && activeDoc?.languageId != "honeytalk") {
      vs.window.showErrorMessage("No HoneyTalk file selected.");
      return undefined;
    }

    return {
      name: "Honey",
      type: "honey",
      request: "launch",
      tests: config.tests ?? [activeDoc!.uri.fsPath],
    };
  }
}
