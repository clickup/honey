import { URL } from "url";
import * as WebSocket from "ws";
import { PromiseCompleter } from "./utils";

interface JsonData {
  id: string;
  error: {
    code: number;
    message: string;
    data: any;
  };
  result: any;
  params: {
    event: {
      isolate: {
        id: string;
      };
      extensionKind: string;
      extensionData?: any;
    };
  };
}

export class VmServiceConnection {
  public socket: WebSocket;
  private completers: { [key: string]: PromiseCompleter<any> } = {};
  private eventListener: (extension: string, data: any) => void;
  private isolateId?: string;

  constructor(
    uri: string,
    eventListener: (extension: string, data: any) => void
  ) {
    this.eventListener = eventListener;
    const url = new URL(uri);
    if (url.protocol.startsWith("http")) {
      url.protocol = url.protocol === "https" ? "wss" : "ws";
      uri = url.toString();
    }
    this.socket = new WebSocket(uri, { followRedirects: true });
    this.socket.onmessage = (data) => {
      this.handleData(data.data.toString());
    };
    this.socket.onopen = async () => {
      await this.callMethod("getVersion");
      await this.callMethod("streamListen", { streamId: "Extension" });
    };
  }

  private nextId: number = 0;

  private callMethod(method: string, params?: any): Promise<any> {
    const id = `${this.nextId++}`;
    const completer = new PromiseCompleter<any>();
    this.completers[id] = completer;

    const json = {
      id,
      jsonrpc: "2.0",
      method,
      params: params || {},
    };
    const str = JSON.stringify(json);
    this.socket.send(str);

    return completer.promise;
  }

  public callService(method: string, params?: any): Promise<any> {
    const paramsMap = params || {};
    if (this.isolateId) {
      params["isolateId"] = this.isolateId;
    }
    return this.callMethod("ext.honey." + method, paramsMap);
  }

  private handleData(data: string) {
    const json: JsonData = JSON.parse(data);
    const id = json.id;
    const error = json.error;
    const completer = this.completers[id];

    if (completer) {
      delete this.completers[id];

      if (error) {
        completer.reject(error.message);
      } else {
        completer.resolve(json.result);
      }
    } else if (json.params?.event?.extensionKind?.startsWith("ext.honey.")) {
      const extension = json.params.event.extensionKind.split(".")[2];
      const data = json.params.event.extensionData;
      this.isolateId = json.params.event.isolate.id;
      setTimeout(this.eventListener, 0, extension, data);
    }
  }

  public onClose(cb: (code: number, message: string) => void) {
    this.socket.onclose = (event) => cb(event.code, event.reason);
  }

  public close() {
    this.socket.close();
  }
}
