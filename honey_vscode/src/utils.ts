import * as vs from "vscode";
import * as child_process from "child_process";
import { ChildProcess } from "child_process";

export function disposeAll(disposables: vs.Disposable[]) {
  const toDispose = disposables.slice();
  disposables.length = 0;
  for (const d of toDispose) {
    try {
      d.dispose();
    } catch (e) {
      console.warn(e);
    }
  }
}

export async function waitUntilExit(
  process: child_process.ChildProcess
): Promise<number> {
  if (process.exitCode) {
    return process.exitCode;
  }
  return await new Promise<number>((resolve) => {
    process.on("exit", (code) => resolve(code ?? 0));
  });
}

const channels: { [key: string]: vs.OutputChannel } = {};

export function getOutputChannel(
  name: string,
  insertDivider = false
): vs.OutputChannel {
  if (!channels[name]) {
    channels[name] = vs.window.createOutputChannel(name);
  } else if (insertDivider) {
    const ch = channels[name];
    ch.appendLine("");
    ch.appendLine("--");
    ch.appendLine("");
  }

  return channels[name];
}

export function runProcessInOutputChannel(
  process: ChildProcess,
  channel: vs.OutputChannel
) {
  process.stdout!.on("data", (data) => channel.append(data.toString()));
  process.stderr!.on("data", (data) => channel.append(data.toString()));
  process.on("close", (code) => channel.appendLine(`exit code ${code}`));
}

export class PromiseCompleter<T> {
  public promise: Promise<T>;
  public resolve!: (value: T | PromiseLike<T>) => void;
  public reject!: (error?: any, stackTrace?: string) => void;

  constructor() {
    this.promise = new Promise((res, rej) => {
      this.resolve = res;
      this.reject = rej;
    });
  }
}
