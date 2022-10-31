import * as vs from "vscode";
import * as fs from "fs";
import * as util from "util";
import {
  DebugSession,
  Event,
  InitializedEvent,
  TerminatedEvent,
} from "vscode-debugadapter";
import { DebugProtocol } from "vscode-debugprotocol";
import { disposeAll, getOutputChannel } from "./utils";
import { HoneyConnection } from "./honey_connection";

export class HoneyDebugAdapterFactory
  implements vs.DebugAdapterDescriptorFactory
{
  private connection: HoneyConnection;

  constructor(connection: HoneyConnection) {
    this.connection = connection;
  }

  createDebugAdapterDescriptor(
    _session: vs.DebugSession
  ): vs.ProviderResult<vs.DebugAdapterDescriptor> {
    const session = new HoneyDebugSession(this.connection);
    return new vs.DebugAdapterInlineImplementation(session);
  }
}

class HoneyDebugSession extends DebugSession {
  private channel: vs.OutputChannel;
  private connection: HoneyConnection;
  private subscriptions: vs.Disposable[] = [];

  constructor(connection: HoneyConnection) {
    super();
    this.connection = connection;
    this.channel = getOutputChannel("Honey Debug");
  }

  dispose() {
    disposeAll(this.subscriptions);
  }

  sendEvent(event: DebugProtocol.Event) {
    this.channel.appendLine(`Event: ${JSON.stringify(event.event, null, 4)}`);
    super.sendEvent(event);
  }

  protected dispatchRequest(request: DebugProtocol.Request): void {
    this.channel.appendLine(`Request: ${JSON.stringify(request, null, 4)}`);
    super.dispatchRequest(request);
  }

  protected initializeRequest(
    response: DebugProtocol.InitializeResponse,
    _: DebugProtocol.InitializeRequestArguments
  ) {
    response.body = response.body || {};
    response.body.supportsConfigurationDoneRequest = true;
    response.body.supportsCancelRequest = true;

    this.sendResponse(response);
    this.sendEvent(new InitializedEvent());
  }

  protected configurationDoneRequest(
    response: DebugProtocol.ConfigurationDoneResponse,
    _: DebugProtocol.ConfigurationDoneArguments
  ) {
    this.sendResponse(response);
  }

  protected async launchRequest(
    response: DebugProtocol.LaunchResponse,
    args: DebugProtocol.LaunchRequestArguments
  ) {
    const testUris: string[] = (args as any).tests;
    const tests: string[] = [];
    for (var testUri of testUris) {
      try {
        const source = await util.promisify(fs.readFile)(testUri, "utf8");
        tests.push(source);
      } catch (e) {
        this.channel.appendLine(`Error: ${e}`);
      }
    }

    this.sendResponse(response);

    for (var i = 0; i < testUris.length; i++) {
      const testUri = testUris[i];
      const test = tests[i];
      const [compilation, steps] = await this.connection.runTest(test);
      this.sendEvent(new Event("honey.compiled", { testUri, compilation }));

      if (steps) {
        for await (const step of steps) {
          this.sendEvent(new Event("honey.step", { testUri, step }));
          if (!step.nextLine) {
            break;
          }
        }
      }
    }
    this.sendEvent(new TerminatedEvent());
  }

  disconnectRequest(
    response: DebugProtocol.DisconnectResponse,
    _: DebugProtocol.DisconnectArguments
  ) {
    this.connection.cancelTest();
    this.sendResponse(response);
  }
}
