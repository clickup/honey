import * as vs from 'vscode';
import { HoneyDeviceManager } from './device_manager';
import { TestDiscovery } from './test_discovery';
import { disposeAll } from './utils';

export class TestRunner implements vs.Disposable {
    private deviceManager: HoneyDeviceManager
    private testDiscovery: TestDiscovery
    private testController: vs.TestController
    private disposables: vs.Disposable[] = [];

    private currentSession?: vs.DebugSession
    private currentRun?: vs.TestRun

    constructor(deviceManager: HoneyDeviceManager, testDiscovery: TestDiscovery, testController: vs.TestController) {
        this.deviceManager = deviceManager;
        this.testDiscovery = testDiscovery;
        this.testController = testController;

        const deviceDisposable = this.deviceManager.onChange(this.handleDeviceChange, this)

        const startDisposable = vs.debug.onDidStartDebugSession(this.handleStartSession, this)

        const receiveDisposable = vs.debug.onDidReceiveDebugSessionCustomEvent(e => {
            if (e.event === 'honey.compiled') {
                this.handleTestCompiled(e.body.tests, e.body.compiled);
            } else if (e.event === 'honey.testStep') {
                this.handleTestStep(e.body.test, e.body.testStep);
            }
        })

        const terminateDisposable = vs.debug.onDidTerminateDebugSession(this.handleTerminateSession, this)

        this.createRunProfile()

        this.disposables.push(deviceDisposable, startDisposable, receiveDisposable, terminateDisposable);
    }

    dispose() {
        disposeAll(this.disposables);
    }

    private isHoneySession(session: vs.DebugSession) {
        return session.type === 'honey'
    }

    public isSessionRunning() {
        return this.currentSession !== undefined;
    }

    private handleDeviceChange() {
        const deviceId: string | undefined = this.currentSession?.configuration.deviceId;
        if (deviceId && !this.deviceManager.isDeviceConnected(deviceId)) {
            vs.debug.stopDebugging(this.currentSession)
        }
    }

    private handleStartSession(session: vs.DebugSession) {
        if (!this.isHoneySession(session)) {
            return
        }

        const tests: string[] = session.configuration.tests
        const testItems = tests.flatMap(t => {
            const item =  this.testDiscovery.getTestItem(t)
            return item ?? []
        })
        const request = new vs.TestRunRequest(testItems)
        const run = this.testController.createTestRun(request, "honey", false)
        
        this.currentSession = session
        this.currentRun = run
    } 

    private handleTerminateSession(session: vs.DebugSession) {
        if (!this.isHoneySession(session)) {
            return
        }

        this.currentRun?.end()
        this.currentSession = undefined
        this.currentRun = undefined
    }

    private handleTestCompiled(tests: string[], compiled: CompiledHoneyTalk[]) {
        for (var [ti, t] of tests.entries()) {
            const testItem = this.testDiscovery.getTestItem(t)
            if (!testItem) {
                return
            }

            const compiledTest = compiled[ti]
            if (compiledTest.error) {
                this.currentRun?.errored(testItem, new vs.TestMessage(compiledTest.error))
            } else if (compiledTest.statements) {
                testItem.children.replace([])
                for (var [si, s] of compiledTest.statements.entries()) {
                    const item = this.testController.createTestItem(si.toString(), s.sourceInfo.source, vs.Uri.file(t))
                    item.range = new vs.Range(
                        s.sourceInfo.startLine,
                        s.sourceInfo.startColumn,
                        s.sourceInfo.endLine,
                        s.sourceInfo.endColumn
                    )
                    testItem.children.add(item)
                    if (si === 0) {
                        item.busy = true
                    }
                    this.currentRun?.enqueued(item)
                }

                if (compiledTest.statements.length > 0) {
                    testItem.busy = true
                    this.currentRun?.enqueued(testItem)
                } else {
                    this.currentRun?.passed(testItem)
                }
            }
        }
    }

    private handleTestStep(test: string, step: TestStep) {
        const testItem = this.testDiscovery.getTestItem(test)
        if (!testItem) {
            return
        }

        const testStepItem = testItem.children.get(step.index.toString())
        if (!testStepItem) {
            return
        }

        if (step.error) {
            this.currentRun?.failed(testStepItem, new vs.TestMessage('Test step failed'))
            for (var i = step.index + 1; i < testItem.children.size; i++) {
                const skippedItem = testItem.children.get(i.toString())
                skippedItem!.busy = false
                this.currentRun?.skipped(skippedItem!)
            }
        } else {
            this.currentRun?.passed(testStepItem)
        }

        testStepItem.busy = false

        if (step.index === testItem.children.size - 1) {
            testItem.busy = false
            this.currentRun?.passed(testItem)
        } else if (step.error) {
            testItem.busy = false
        } else {
            const nextStepItem = testItem.children.get((step.index + 1).toString())
            nextStepItem!.busy = true
        }
    }

    private createRunProfile() {
        this.testController.createRunProfile('honey', vs.TestRunProfileKind.Debug, (request) => {
            function getTestItems(items: vs.TestItem[]): vs.TestItem[] {
                return items.flatMap(item => {
                    if (item.children.size > 0) {
                        const children: vs.TestItem[] = []
                        item.children.forEach((child) => {
                            children.push(child)
                        })
                        return getTestItems(children)
                    } else {
                        return item
                    }
                })
            }
            const testItems = getTestItems(request.include ?? [])
            const tests = testItems.flatMap(item => {
                if (!item.range) {
                    return item.uri!.fsPath
                } else {
                    return []
                }
            })
            vs.debug.startDebugging(undefined, {
                type: 'honey',
                name: 'honey',
                request: 'launch',
                tests: tests,
            })
        }, true)
    }
} 