import * as vs from "vscode";
import { HoneyDebugAdapterFactory } from "./debug_session";
import { TestDiscovery } from "./test_discovery";
import { DebugConfigProvider } from "./debug_config_provider";
import { TestRunner } from "./test_runner";
import { HoneyConnection } from "./honey_connection";
import { getOutputChannel } from "./utils";
import { StepDecorations } from "./step_decorations";

export async function activate(context: vs.ExtensionContext) {
  const testController = vs.tests.createTestController(
    "honeyTestController",
    "Honey"
  );
  createRunProfile(testController);
  context.subscriptions.push(testController);

  const testDiscovery = new TestDiscovery(testController);
  context.subscriptions.push(testDiscovery);

  const connection = new HoneyConnection();
  context.subscriptions.push(connection);

  const runner = new TestRunner(testDiscovery, testController);
  context.subscriptions.push(runner);

  context.subscriptions.push(new StepDecorations());

  const debugProvider = new DebugConfigProvider(connection, runner);
  vs.debug.registerDebugConfigurationProvider("honey", debugProvider);
  vs.debug.registerDebugAdapterDescriptorFactory(
    "honey",
    new HoneyDebugAdapterFactory(connection)
  );

  testDiscovery.startWatching();

  const channel = getOutputChannel("Honey");
  channel.appendLine("Honey extension activated");
}

function createRunProfile(testController: vs.TestController) {
  testController.createRunProfile(
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
