import * as vs from "vscode";
import { HoneyDebugAdapterFactory } from "./debug_session";
import { TestDiscovery } from "./test_discovery";
import { DebugConfigProvider } from "./debug_config_provider";
import { TestRunner } from "./test_runner";
import { HoneyConnection } from "./honey_connection";

export async function activate(context: vs.ExtensionContext) {
  const testController = vs.tests.createTestController(
    "honeyTestController",
    "Honey"
  );
  context.subscriptions.push(testController);

  const testdiscovery = new TestDiscovery(testController);
  context.subscriptions.push(testdiscovery);

  const connection = new HoneyConnection();
  context.subscriptions.push(connection);

  const runner = new TestRunner(testdiscovery, testController);
  context.subscriptions.push(runner);

  const debugProvider = new DebugConfigProvider(runner);
  vs.debug.registerDebugConfigurationProvider("honey", debugProvider);
  vs.debug.registerDebugAdapterDescriptorFactory(
    "honey",
    new HoneyDebugAdapterFactory(connection)
  );

  const refreshTestsCommand = vs.commands.registerCommand(
    "honey.refreshTests",
    () => {
      testdiscovery.discoverAll();
    }
  );
  context.subscriptions.push(refreshTestsCommand);

  testdiscovery.startWatching();
}
