type HoneyMessage = HoneyDeviceStatus | HoneyStartTest | HoneyTestStep | HoneyCancelTests | HoneyToggleOverlay | HoneyToggleRecording | HoneyRecordedStatement | HoneyResetApp

type HoneyDeviceStatus = {
    type: "device_status"
    appName: string
    appBuild: string
    overlayEnabled: boolean
    testRunning: boolean
    recording: boolean
}

type HoneyStartTest = {
    type: "start_test"
    runId: number
    statements: any[]
} 

type HoneyTestStep = {
    type: "test_step"
    runId: number
    step: TestStep
}

type HoneyCancelTests = {
    type: "cancel_tests"
}

type HoneyToggleOverlay = {
    type: "toggle_overlay"
}

type HoneyToggleRecording = {
    type: "toggle_recording"
}

type HoneyRecordedStatement = {
    type: "recoreded_statement"
    statement: string
}

type HoneyResetApp = {
    type: "reset_app"
}

