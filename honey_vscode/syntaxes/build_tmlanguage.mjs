import * as yaml from 'js-yaml'
import * as fs from 'fs'

function replacePatternVariables(pattern, variableReplacers) {
    let result = pattern;
    for (const [variableName, value] of variableReplacers) {
        result = result.replace(variableName, value);
    }
    return result;
}

function build() {
    var yamlSource = fs.readFileSync('./syntaxes/honeytalk.yaml', 'utf8')
    const sourceYaml = yaml.load(yamlSource)
    const vars = sourceYaml.variables
    
    const variableReplacers = [];
    for (const variableName in vars) {
        const pattern = replacePatternVariables(vars[variableName], variableReplacers);
        variableReplacers.push([new RegExp(`\\$${variableName}`, "gim"), pattern]);
    }
    const result = replacePatternVariables(yamlSource, variableReplacers);
    const resultYaml = yaml.load(result)
    delete resultYaml.variables
    fs.writeFileSync('./syntaxes/honeytalk.json', JSON.stringify(resultYaml, null, 2))
}

build()