type DaemonMessage = DaemonDevices | DaemonDeviceMessage | DaemonCompile | DaemonCompileResult | DaemonError 

type DaemonDevices = {
    type: "devices"
    devices: Device[]
}

type DaemonDeviceMessage = {
    type: "message"
    deviceId: string
    message: HoneyMessage
}

type DaemonCompile = {
    type: "compile"
    requestId: number
    sources: string[]
}

type DaemonCompileResult = {
    type: "compile_result"
    requestId: number
    results: CompiledHoneyTalk[]
}

type DaemonError = {
    type: "error"
    error: string
}