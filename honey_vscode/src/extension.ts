import * as vs from "vscode";
import { HoneyDebugAdapterFactory } from "./debug_session";
import { TestDiscovery } from "./test_discovery";
import { DebugConfigProvider } from "./debug_config_provider";
import { TestRunner } from "./test_runner";
import { HoneyConnection } from "./honey_connection";
import { getOutputChannel } from "./utils";

export async function activate(context: vs.ExtensionContext) {
  const testController = vs.tests.createTestController(
    "honeyTestController",
    "Honey"
  );
  context.subscriptions.push(testController);

  const testDiscovery = new TestDiscovery(testController);
  context.subscriptions.push(testDiscovery);

  const connection = new HoneyConnection();
  context.subscriptions.push(connection);

  const runner = new TestRunner(testDiscovery, testController);
  context.subscriptions.push(runner);

  const debugProvider = new DebugConfigProvider(connection, runner);
  vs.debug.registerDebugConfigurationProvider("honey", debugProvider);
  vs.debug.registerDebugAdapterDescriptorFactory(
    "honey",
    new HoneyDebugAdapterFactory(connection)
  );

  const refreshTestsCommand = vs.commands.registerCommand(
    "honey.refreshTests",
    () => {
      testDiscovery.discoverAll();
    }
  );
  context.subscriptions.push(refreshTestsCommand);

  /*vs.debug.onDidReceiveDebugSessionCustomEvent((e) => {
    console.log(e);
  });*/

  testDiscovery.startWatching();

  const channel = getOutputChannel("Honey");
  channel.appendLine("Honey extension activated");
}
