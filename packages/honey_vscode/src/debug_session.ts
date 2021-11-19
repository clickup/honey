import * as vs from 'vscode';
import * as fs from 'fs';
import * as util from 'util';
import { Breakpoint, DebugSession, Event, InitializedEvent, Scope, StackFrame, TerminatedEvent, Thread, Variable } from 'vscode-debugadapter';
import { DebugProtocol } from 'vscode-debugprotocol';
import { HoneyDaemon } from './honey_daemon';
import { disposeAll, getOutputChannel } from './utils';

export class HoneyDebugAdapterFactory implements vs.DebugAdapterDescriptorFactory {
    private daemon: HoneyDaemon

    constructor(daemon: HoneyDaemon) {
        this.daemon = daemon
    }

	createDebugAdapterDescriptor(_session: vs.DebugSession): vs.ProviderResult<vs.DebugAdapterDescriptor> {
        const session = new HoneyDebugSession(this.daemon)
        return new vs.DebugAdapterInlineImplementation(session);
	}
}

class HoneyDebugSession extends DebugSession {
    private channel: vs.OutputChannel
    private daemon: HoneyDaemon
    private deviceId?: string
    private breakpoints: Map<string, DebugProtocol.Breakpoint[]> = new Map()
    private breakpointId = 0
    private debugging = false
    private subscriptions: vs.Disposable[] = []
    private static runIdCounter = 0

    constructor(daemon: HoneyDaemon) {
        super()
        this.daemon = daemon
        this.channel = getOutputChannel('Honey Debug')
    }

    dispose() {
        disposeAll(this.subscriptions)
    }

    sendEvent(event: DebugProtocol.Event) {
        this.channel.appendLine(`Event: ${JSON.stringify(event.event, null, 4)}`)
        super.sendEvent(event)
    }

    protected dispatchRequest(request: DebugProtocol.Request): void {
        this.channel.appendLine(`Request: ${JSON.stringify(request, null, 4)}`)
        super.dispatchRequest(request)
    }

    protected initializeRequest(response: DebugProtocol.InitializeResponse, _: DebugProtocol.InitializeRequestArguments) {
        response.body = response.body || {}
        response.body.supportsConfigurationDoneRequest = true
        response.body.supportsCancelRequest = true
        response.body.supportsBreakpointLocationsRequest = true
        response.body.supportsExceptionInfoRequest = true
        response.body.supportsBreakpointLocationsRequest = false

        this.sendResponse(response)
        this.sendEvent(new InitializedEvent())
    }

    protected configurationDoneRequest(response: DebugProtocol.ConfigurationDoneResponse, _: DebugProtocol.ConfigurationDoneArguments) {
        this.sendResponse(response)
    }

    protected async launchRequest(response: DebugProtocol.LaunchResponse, args: DebugProtocol.LaunchRequestArguments) {
        this.debugging = !args.noDebug
        this.deviceId = (args as any).deviceId

        const tests: string[] = (args as any).tests

        const sourceNames: string[] = []
        const sources: string[] = []
        for (var test of tests) {
            try {
                const source = await util.promisify(fs.readFile)(test, 'utf8')
                sourceNames.push(test)
                sources.push(source)
            } catch (e) {
            }
        }

        const compiledSources = await this.daemon.compile(sources)

        this.sendResponse(response)

        const event = new Event('honey.compiled', {
            tests: sourceNames,
            compiled: compiledSources
        })
        this.sendEvent(event)

        for (var [i, compiled] of compiledSources.entries()) {
            if (!compiled.error && compiled.statements) {
                await this.exexuteStatements(sourceNames[i], compiled.statements)
            }
        }

        this.sendEvent(new TerminatedEvent())
    }

    private exexuteStatements(test: string, statements: any[]): Promise<void> {
        const runId = ++HoneyDebugSession.runIdCounter
        this.daemon.sendHoneyMessage(this.deviceId!, {
            type: 'start_test',
            runId: runId,
            statements: statements
        })

        let resolve: Function
        const promise = new Promise<void>((r) => {
            resolve = r
        })

        const disposable = this.daemon.onMessage(([, message]) => {
            if (message.type === 'test_step' && message.runId === runId) {
                const event = new Event('honey.testStep', {
                    test: test,
                    testStep: message.step
                })
                this.sendEvent(event)
                if (message.step.index === statements.length - 1 || message.step.error) {
                    disposable.dispose()
                    resolve()
                }
            }
        })

        return promise
    }

    protected setBreakPointsRequest(response: DebugProtocol.SetBreakpointsResponse, args: DebugProtocol.SetBreakpointsArguments) {
        const breakpoints = args.breakpoints?.flatMap(b => {
            if (b.line) {
                const newBp = new Breakpoint(true, b.line)
                newBp.setId(this.breakpointId++)
                return newBp
            } else {
                return []
            }
        })

        this.breakpoints.set(args.source.path!, breakpoints ?? [])

        response.body = {
            breakpoints: breakpoints ?? []
        }
        this.sendResponse(response)
    }

    protected threadsRequest(response: DebugProtocol.ThreadsResponse) {
        response.body = {
            threads: [
                new Thread(0, 'Honey Runner')
            ]
        }
        this.sendResponse(response)
    }

    protected stackTraceRequest(response: DebugProtocol.StackTraceResponse, _: DebugProtocol.StackTraceArguments) {
        response.body = {
            stackFrames: [
                new StackFrame(0, 'Honey')
            ]
        }
        this.sendResponse(response)
    }

    protected scopesRequest(response: DebugProtocol.ScopesResponse, _: DebugProtocol.ScopesArguments) {
        response.body = {
            scopes: [
                new Scope('Honey Variables', 1, false),
            ]
        }
        this.sendResponse(response)
    }

    protected variablesRequest(response: DebugProtocol.VariablesResponse, _: DebugProtocol.VariablesArguments) {
        response.body = {
            variables: [
                new Variable('somevar', '55', 4),
                new Variable('mylist', 'alist', 5, 10)
            ]
        }
        this.sendResponse(response)

    }

    disconnectRequest(response: DebugProtocol.DisconnectResponse, _: DebugProtocol.DisconnectArguments) {
        this.daemon.sendHoneyMessage(this.deviceId!, {type: 'cancel_tests'})
        this.sendResponse(response)
    }
}