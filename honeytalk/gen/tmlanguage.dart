import 'dart:convert';
import 'dart:io';

import 'regex.dart';

final tmlanguage = {
  'name': 'HoneyTalk',
  '\$schema':
      'https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json',
  'scopeName': 'source.ht',
  'patterns': [
    {
      'match': '^(?i:\\s*($maybeRegex\\s+)?($actionRegex))\\b',
      'captures': {
        '1': {'name': 'keyword.control.honeytalk'},
        '4': {'name': 'entity.name.function.honeytalk'}
      }
    },
    {'name': 'keyword.control.honeytalk', 'match': '\\b(?i:$controlRegex)\\b'},
    {
      'name': 'keyword.operator.logical.honeytalk',
      'match': '\\b(?i:$logicRegex)\\b'
    },
    {'name': 'keyword.operator.logical.honeytalk', 'match': '\\||&'},
    {
      'name': 'keyword.operator.comparison.honeytalk',
      'match': '\\b(?i:$comparisonRegex)\\b'
    },
    {'name': 'keyword.operator.comparison.honeytalk', 'match': '>|<|=|!'},
    {
      'name': 'keyword.operator.arithmetic.honeytalk',
      'match': '\\b(?i:$arithmeticRegex)\\b'
    },
    {'name': 'keyword.control.honeytalk', 'match': '\\b(?i:first)\\b'},
    {'name': 'support.class.honeytalk', 'match': '\\b(?i:$widgetRegex)\\b'},
    {
      'name': 'variable.parameter.honeytalk',
      'match': '\\\$\\b[a-zA-Z][a-zA-Z0-9]*\\b'
    },
    {
      'name': 'constant.language.boolean.honeytalk',
      'match': '\\b(?i:true|false)\\b'
    },
    {
      'name': 'string.quoted.double.honeytalk',
      'begin': '\"',
      'end': '\"',
      'patterns': [
        {'name': 'constant.character.escape.honeytalk,', 'match': '\\.'}
      ]
    },
    {
      'name': 'constant.numeric.honeytalk',
      'match':
          '\\b(?i:\\d+(\\.\\d+)?|zero|one|two|three|four|five|six|seven|eight|nine|ten)\\b'
    },
    {'name': 'comment.line.honeytalk', 'match': '((//|#).*)\$'},
    {
      'name': 'comment.block.hypertalk',
      'begin': '/\\*',
      'end': '\\*/',
      'patterns': [
        {'name': 'comment.block.hypertalk', 'match': '.'}
      ]
    }
  ]
};

void main() {
  final encoder = JsonEncoder.withIndent('  ').convert(tmlanguage);
  Directory('honey_vscode/syntaxes').createSync(recursive: true);
  File('honey_vscode/syntaxes/honeytalk.json').writeAsStringSync(encoder);
}
