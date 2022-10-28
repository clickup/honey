import * as vs from "vscode";
import { TestRunner } from "./test_runner";

export class DebugConfigProvider implements vs.DebugConfigurationProvider {
  private testRunner: TestRunner;

  constructor(testRunner: TestRunner) {
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

    const sessionActive = this.testRunner.isSessionRunning();
    if (sessionActive) {
      vs.window.showErrorMessage("The device is not ready.");
      return undefined;
    }

    if (config?.tests?.length === 0 || activeDoc?.languageId != "honeytalk") {
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
