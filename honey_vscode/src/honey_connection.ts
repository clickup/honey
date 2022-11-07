import * as vs from "vscode";
import { disposeAll, getOutputChannel, PromiseCompleter } from "./utils";
import { VmServiceConnection } from "./vmservice";
import { Channel } from "queueable";

export type HoneyError = {
  error: string;
  line?: number;
  column?: number;
};

export type HoneyStep = {
  line: number;
  nextLine?: number;
  step: string;
  skipped: boolean;
  output?: string;
  error?: string;
};

export class HoneyConnection implements vs.Disposable {
  private disposables: vs.Disposable[] = [];
  private channel: vs.OutputChannel;

  private vmServiceUrl?: string;
  private vmService?: VmServiceConnection;
  private restartCompleter?: PromiseCompleter<void>;
  private stepChannel?: Channel<HoneyStep>;

  constructor() {
    vs.debug.onDidReceiveDebugSessionCustomEvent(
      (e) => {
        if (e.body.extension === "ext.flutter.connectedVmServiceUri") {
          const url = e.body.value;
          if (url !== this.vmServiceUrl) {
            this.vmService?.close();
            this.connect(url);
          }
        }
      },
      null,
      this.disposables
    );

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

  async runTest(test: string): Promise<HoneyError | Channel<HoneyStep>> {
    this.restartCompleter = new PromiseCompleter();
    await (vs.commands.executeCommand("flutter.hotRestart") as Promise<void>);
    await this.restartCompleter.promise;

    this.stepChannel = new Channel();
    const resultPromise = this.vmService!.callService("test", { test });
    const timeout = new Promise<HoneyError | {}>((_resolve, reject) => {
      setTimeout(() => reject("Timeout"), 3000);
    });
    const result: HoneyError | {} = await Promise.race([
      resultPromise,
      timeout,
    ]);

    if ("error" in result) {
      return result;
    } else {
      return this.stepChannel;
    }
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
