import * as vs from 'vscode';
import { HoneyDaemon } from './honey_daemon';
import { disposeAll } from './utils';

export class HoneyDeviceManager implements vs.Disposable {
    private disposables: vs.Disposable[] = [];
    private devicePickerItem: vs.StatusBarItem;
    private daemon: HoneyDaemon;
    private connectedDevices: Device[] = [];
    private deviceStatus: Map<string, HoneyDeviceStatus> = new Map();
    private selectedDeviceId?: string
    
    private changeEmitter = new vs.EventEmitter<void>();
    public onChange = this.changeEmitter.event;

    constructor(daemon: HoneyDaemon) {
        this.daemon = daemon;

		this.devicePickerItem = vs.window.createStatusBarItem("honeyStatusDevice", vs.StatusBarAlignment.Left, 2);
		this.devicePickerItem.name = "Honey Device";
		this.devicePickerItem.tooltip = "Select Honey device";
		this.devicePickerItem.command = "honey.selectDevice";
		this.devicePickerItem.show();
        this.disposables.push(this.devicePickerItem)
        this.updateDevicePickerItem();
        
        const devicesDisposable = this.daemon.onDevices(this.onDevices, this)
        this.disposables.push(devicesDisposable);

        const messageDisposable = this.daemon.onMessage(this.onMessage, this);
        this.disposables.push(messageDisposable);
	}

    dispose() {
        disposeAll(this.disposables)
        this.changeEmitter.dispose()
    }

    private onDevices(devices: Device[]) {
        this.connectedDevices = devices;
        for (var deviceId of this.deviceStatus.keys()) {
            if (!devices.find(d => d.id === deviceId)) {
                this.deviceStatus.delete(deviceId);
            }
        }
        if (this.selectedDeviceId && !this.isDeviceConnected(this.selectedDeviceId)) {
            this.selectedDeviceId = undefined;
        }
        this.selectedDeviceId = this.selectedDeviceId ?? devices[0]?.id;
        this.updateDevicePickerItem();
        this.changeEmitter.fire();
    }

    private onMessage(params: [string, HoneyMessage]) {
        const [deviceId, message] = params;
        if (message.type === "device_status") {
            this.deviceStatus.set(deviceId, message);
            this.changeEmitter.fire();
        }
    }

    public isDeviceConnected(deviceId: string): boolean {
        return this.connectedDevices.find(d => d.id === deviceId) !== undefined;
    }

    public isDeviceIdle(deviceId: string): boolean {
        const status = this.deviceStatus.get(deviceId);
        return status?.testRunning === false;
    }

    public getConnectedDevices(): Device[] {
        return this.connectedDevices;
    }

    public getDeviceStatus(): HoneyDeviceStatus | undefined {
        const deviceId = this.selectedDeviceId
        if (!deviceId) {
            return undefined;
        }
        return this.deviceStatus.get(deviceId);
    }

    public getSelectedDevice(): Device | undefined {
        return this.connectedDevices.find(d => d.id === this.selectedDeviceId);
    }

    private setSelectedDevice(deviceId: string) {
        if (this.isDeviceConnected(deviceId)) {
            this.selectedDeviceId = deviceId;
            this.updateDevicePickerItem();
            this.changeEmitter.fire();
        }
    }

    public async showDeviceSelection() {
        const quickPick = vs.window.createQuickPick<QuickPickDevice>();
        quickPick.canSelectMany = false
        quickPick.placeholder = "Select Honey device"

        function updateQuickPick(devices: Device[]) {
            const newItems: QuickPickDevice[] = devices.map(d => {
                return {
                    label: d.name,
                    description: d.id,
                    deviceId: d.id
                }
            })
            quickPick.items = newItems
        }
        
        updateQuickPick(this.connectedDevices)
        const refreshDisposable = this.onChange(() => updateQuickPick(this.connectedDevices))

        quickPick.onDidAccept(() => {
            const selection = quickPick.selectedItems[0]
            if (selection) {
                this.setSelectedDevice(selection.deviceId)
            }
        })

        quickPick.onDidHide(() => {
            refreshDisposable.dispose()
            quickPick.dispose()
        })

        quickPick.show()
    }

    private updateDevicePickerItem() {
        this.devicePickerItem.text = this.getSelectedDevice()?.name ?? "No App connected";
    }

}

type QuickPickDevice = vs.QuickPickItem & { deviceId: string };