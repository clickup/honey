type CompiledHoneyTalk = {
    statements?: Statement[]
    error?: string
    errorLine?: number
    errorColumn?: number
}

type Statement = {
    sourceInfo: SourceInfo
}

type SourceInfo = {
    source: string
    startLine: number
    startColumn: number
    endLine: number
    endColumn: number
}

type TestStep = {
    time: number
    index: number
    step: string
    message: string
    error: boolean
    variables: Record<string, any>
}

type Device = {
    id: string;
    name: string;
    platform: string;
}

