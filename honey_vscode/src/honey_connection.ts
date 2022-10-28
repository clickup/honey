import * as vs from "vscode";
import { disposeAll } from "./utils";
import { VmServiceConnection } from "./vmservice";

export type HoneyCompilation = {
  errorLine?: number;
  errorColumn?: number;
  steps?: HoneyStep[];
};

export type HoneyStep = {
  line: number;
  step: string;
};

export type HoneyStepResult = {
  index: number;
  step: string;
  error?: string;
};

export class HoneyConnection implements vs.Disposable {
  private disposables: vs.Disposable[] = [];
  private vmServiceUrl?: string;
  private vmService?: VmServiceConnection;

  constructor() {
    const disposable = vs.debug.onDidReceiveDebugSessionCustomEvent((e) => {
      if (e.body.extension === "ext.flutter.connectedVmServiceUri") {
        const url = e.body.value;
        if (url !== this.vmServiceUrl) {
          this.vmService?.close();
          this.connect(url);
        }
      }
    });
    this.disposables.push(disposable);
  }

  private async connect(url: string) {
    const vmService = new VmServiceConnection(url + "ws", (service, data) => {
      if (service === "step") {
      }
    });

    vmService.onClose(() => {
      if (this.vmService === vmService) {
        this.vmServiceUrl = undefined;
        this.vmService = undefined;
      }
    });
    this.vmService = vmService;
  }

  isConnected() {
    return this.vmService !== undefined;
  }

  async runTest(
    test: string
  ): Promise<[HoneyCompilation, AsyncGenerator<HoneyStepResult>?]> {
    const compilation = this.vmService!.callService("test", { test });
    const timeout = new Promise((_resolve, reject) => {
      setTimeout(() => reject("Timeout"), 3000);
    });
    return Promise.race([compilation, timeout]);
  }

  async cancelTest(): Promise<void> {
    await this.vmService!.callService("cancelTest");
  }

  dispose() {
    disposeAll(this.disposables);
    this.vmService?.close();
  }
}
