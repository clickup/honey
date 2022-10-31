import * as vs from "vscode";
import { disposeAll, getOutputChannel, PromiseCompleter } from "./utils";
import { VmServiceConnection } from "./vmservice";
import { Channel } from "queueable";

export type HoneyCompilation = {
  error?: string;
  errorLine?: number;
  errorColumn?: number;
  steps?: [
    {
      line: number;
      step: string;
    }
  ];
};

export type HoneyStepResult = {
  line: number;
  nextLine?: number;
  step: string;
  skipped: boolean;
  error?: string;
};

export class HoneyConnection implements vs.Disposable {
  private disposables: vs.Disposable[] = [];
  private channel: vs.OutputChannel;

  private vmServiceUrl?: string;
  private vmService?: VmServiceConnection;
  private restartCompleter?: PromiseCompleter<void>;
  private stepChannel?: Channel<HoneyStepResult | undefined>;

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
    this.channel = getOutputChannel("Honey");
    this.channel.appendLine("Honey connection initialized");
  }

  private async connect(url: string) {
    const vmService = new VmServiceConnection(url + "ws", (service, data) => {
      if (service === "greeting") {
        this.channel.appendLine("Greeting received");
        this.restartCompleter?.resolve();
      } else if (service === "step") {
        this.channel.appendLine("Step received");
        this.stepChannel?.push(data);
      } else if (service == "finished") {
        this.channel.appendLine("Finished received");
        this.stepChannel?.push(undefined);
      }
    });

    vmService.onClose(() => {
      if (this.vmService === vmService) {
        this.vmServiceUrl = undefined;
        this.vmService = undefined;
        this.channel.appendLine("Disconnected from VM service");
      }
    });
    this.vmService = vmService;
    this.vmServiceUrl = url;
    this.channel.appendLine("Connecting to VM service");
  }

  isConnected() {
    return this.vmService !== undefined;
  }

  async runTest(
    test: string
  ): Promise<[HoneyCompilation, Channel<HoneyStepResult | undefined>?]> {
    this.restartCompleter = new PromiseCompleter();
    await (vs.commands.executeCommand("flutter.hotRestart") as Promise<void>);
    await this.restartCompleter.promise;

    this.stepChannel = new Channel();
    const compilationPromise = this.vmService!.callService("test", { test });
    const timeout = new Promise<HoneyCompilation>((_resolve, reject) => {
      setTimeout(() => reject("Timeout"), 3000);
    });
    const compilation: HoneyCompilation = await Promise.race([
      compilationPromise,
      timeout,
    ]);

    if (compilation.errorLine) {
      return [compilation, undefined];
    }

    return [compilation, this.stepChannel];
  }

  async cancelTest(): Promise<void> {
    this.channel.appendLine("Cancelling test");
    await this.vmService?.callService("cancelTest");
    this.channel.appendLine("Test cancelled");
  }

  dispose() {
    disposeAll(this.disposables);
    this.vmService?.close();
  }
}
