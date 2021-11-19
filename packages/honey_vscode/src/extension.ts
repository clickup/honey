import * as vs from 'vscode';
import { HoneyDeviceManager } from './device_manager';
import { HoneyDaemon } from './honey_daemon';
import { HoneyDebugAdapterFactory } from './debug_session'
import { TestDiscovery } from './test_discovery';
import { DebugConfigProvider } from './debug_config_provider';
import { TestRunner } from './test_runner';

export async function activate(context: vs.ExtensionContext) {
  const testController = vs.tests.createTestController('honeyTestController', 'Honey');
  context.subscriptions.push(testController);

  const testdiscovery = new TestDiscovery(testController)
  context.subscriptions.push(testdiscovery);

  const daemon = new HoneyDaemon()
  await daemon.start()
  context.subscriptions.push(daemon);

  const deviceManager = new HoneyDeviceManager(daemon);
  const runner = new TestRunner(deviceManager, testdiscovery, testController);
  context.subscriptions.push(daemon);

  const debugProvider = new DebugConfigProvider(deviceManager, runner)
  vs.debug.registerDebugConfigurationProvider("honey", debugProvider)
  vs.debug.registerDebugAdapterDescriptorFactory('honey', new HoneyDebugAdapterFactory(daemon));


  const refreshTestsCommand = vs.commands.registerCommand('honey.refreshTests', () => {
    testdiscovery.discoverAll()
	});
  context.subscriptions.push(refreshTestsCommand);

  const selectDeviceCommand = vs.commands.registerCommand('honey.selectDevice', () => {
		deviceManager.showDeviceSelection()
	});
  context.subscriptions.push(selectDeviceCommand);

  const deviceOptionsCommand = vs.commands.registerCommand('honey.toggleOverlay', () => {
    const deviceId = deviceManager.getSelectedDevice()?.id
    if (deviceId) {
      daemon.sendHoneyMessage(deviceId, {type: "toggle_overlay"})
    }
	});
  context.subscriptions.push(deviceOptionsCommand);

  testdiscovery.startWatching()
}
