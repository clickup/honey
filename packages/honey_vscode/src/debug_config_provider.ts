import * as vs from 'vscode'
import { HoneyDeviceManager } from './device_manager'
import { TestRunner } from './test_runner'

export class DebugConfigProvider implements vs.DebugConfigurationProvider {
    private deviceManager: HoneyDeviceManager
    private testRunner: TestRunner

    constructor(deviceManager: HoneyDeviceManager, testRunner: TestRunner) {
        this.deviceManager = deviceManager
        this.testRunner = testRunner
    }

    resolveDebugConfiguration(_folder: vs.WorkspaceFolder | undefined, config: vs.DebugConfiguration, _token?: vs.CancellationToken): vs.ProviderResult<vs.DebugConfiguration> {
        const activeDoc = vs.window.activeTextEditor?.document     
        if (config.type != 'honey' && activeDoc?.languageId != 'honeytalk') {
            return config
        }

        const deviceId = config.deviceId ?? this.deviceManager.getSelectedDevice()?.id
        if (!deviceId) {
            vs.window.showErrorMessage('No device selected.')
            return undefined
        }

        const isIdle = this.deviceManager.isDeviceIdle(deviceId)
        const sessionActive = this.testRunner.isSessionRunning()
        if (!isIdle || sessionActive) {
            vs.window.showErrorMessage('The selected device is not ready.')
            return undefined
        }

        return {
            name: 'Honey',
            type: 'honey',
            request: 'launch',
            tests: config.tests ?? [activeDoc!.uri.fsPath],
            deviceId: deviceId
        }
    }
}