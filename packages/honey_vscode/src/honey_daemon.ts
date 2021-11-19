import * as vs from 'vscode';
import * as child_process from "child_process";
import {createInterface} from "readline";
import { getOutputChannel, runProcessInOutputChannel, waitUntilExit } from './utils';

export class HoneyDaemon implements vs.Disposable {
    private prepared = false
    private channel: vs.OutputChannel
    private process?: child_process.ChildProcess
    private requestIdCounter = 0
    private compileRequests: Map<number, (results: CompiledHoneyTalk[]) => void> = new Map()

    private devicesEmitter = new vs.EventEmitter<Device[]>()
    public onDevices = this.devicesEmitter.event
    
    private messageEmitter = new vs.EventEmitter<[string, HoneyMessage]>()
    public onMessage = this.messageEmitter.event

    constructor() {
        this.channel = getOutputChannel("Honey Daemon")
    }

    public async start(): Promise<boolean> {
        if (this.process) {
            return true
        }

        if (!this.prepared) {
            this.prepared = await this.prepare()
            if (!this.prepared) {
                return false
            }
        }

        const process = child_process.spawn("dart", ['pub', 'global', 'run', 'honey_cli:honey_daemon'], {shell: true})
        this.channel.appendLine(`Starting daemon process ${process.pid}`)
        runProcessInOutputChannel(process, this.channel)
        const stdout = createInterface(process.stdout!)
        stdout.on("line", (line) => this.handleStdout(line))
		process.on("exit", () => this.handleExit())
        this.process = process

        return true
    }

    dispose() {
        this.devicesEmitter.dispose()
        this.messageEmitter.dispose()
        this.process?.kill()
    }

    private async prepare(): Promise<boolean> {
        const dart = child_process.spawn("dart", ["--version"], {shell: true})
        runProcessInOutputChannel(dart, this.channel)
        const dartExists = (await waitUntilExit(dart)) == 0
        if (!dartExists) {
            vs.window.showWarningMessage("Dart not found in PATH. Please install it and restart VSCode.", "Show Log").then((action) => {
                if (action == "Show Log") {
                    this.channel.show()
                }
            })
            return false;
        }

        const installHoneyDaemon = child_process.spawn("dart", ["pub", "global", "activate", "-sgit", "https://github.com/leisim/honey_cli.git", "--overwrite"]);
        runProcessInOutputChannel(installHoneyDaemon, this.channel)
        const daemonActivated = (await waitUntilExit(installHoneyDaemon)) == 0
        if (!daemonActivated) {
            vs.window.showWarningMessage("Could not activate honey cli.", "Show Log").then((action) => {
                if (action == "Show Log") {
                    this.channel.show()
                }
            })
            return false;
        }

        return true;
    }

    private handleStdout(line: string) {
		const message: DaemonMessage = JSON.parse(line)
        switch (message.type) {
            case "devices":
                this.devicesEmitter.fire(message.devices)
                break;
            case "message":
                this.messageEmitter.fire([message.deviceId, message.message])
                break;
            case "compile_result":
                this.handleCompileResult(message.requestId, message.results)
                break;
        }
	}

    private handleCompileResult(requestId: number, results: CompiledHoneyTalk[]) {
        const callback = this.compileRequests.get(requestId)
        if (callback) {
            callback(results)
        }
    }

    public async compile(sources: string[]): Promise<CompiledHoneyTalk[]> {
        const requestId = this.requestIdCounter++
        this.sendMessage({
            type: "compile",
            requestId: requestId,
            sources: sources,
        })
        return await new Promise((resolve) => {
            this.compileRequests.set(requestId, resolve)
        })
    }

    private sendMessage(message: DaemonMessage) {
        if (this.process?.stdin) {
            const json = JSON.stringify(message)
            this.process.stdin.write(`${json}\n`)
            this.channel.appendLine(json)
        }
    }

    public sendHoneyMessage(deviceId: string, message: HoneyMessage) {
        this.sendMessage({
            type: "message",
            deviceId: deviceId,
            message: message,
        })
    }

	private handleExit() {
        this.process = undefined
        this.devicesEmitter.fire([])
        vs.window.showWarningMessage("Honey daemon terminated.", "Restart").then((action) => {
            if (action == "Restart") {
                this.start()
            }
        })
	}
}

