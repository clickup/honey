import 'dart:convert';
import 'dart:io';

import '../synonyms.dart';

final maybeRegex = toRegex(maybe);
final actionRegex = toRegex({
  [
    verify,
    {'that', ''}
  ],
  see,
  set,
  store,
  wait,
  output,
  click,
  enter,
  swipe,
  error
});
final controlRegex = toRegex({iff, then, elseIf, elsee, endIf});
final yesNoRegex = toRegex({yes, no});
final logicRegex = toRegex({and, or, not, isAre, isAreNot, 'visible', 'there'});
final comparisonRegex = toRegex({eq, neq, gte, gt, lte, lt});
final arithmeticRegex = toRegex({plus, minus, times, divide, pow});
final widgetRegex = toRegex({
  widget,
  button,
  link,
  textfield,
  slider,
  image,
  checkbox,
  sswitch,
  header,
});
final attributesRegex = toRegex(attributes);
const idRegex = '\\b[a-zA-Z0][a-zA-Z0-9]*\\b';
final runRegex = toRegex(run);
final parameterRegex = '(($idRegex):?)?(?:(?!,|and).)+';
final cardinalRegex = toRegex(cardinal);

final tmlanguage = {
  'name': 'HoneyTalk',
  '\$schema':
      'https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json',
  'scopeName': 'source.honey',
  'patterns': [
    {
      'match': '^(?i)\\s*(\\b$maybeRegex\\b)?\\s*(\\b$actionRegex\\b)',
      'captures': {
        '1': {'name': 'keyword.control.honeytalk'},
        '2': {'name': 'entity.name.function.honeytalk'}
      }
    },
    {'name': 'keyword.control.honeytalk', 'match': '(?i)\\b$controlRegex\\b'},
    {
      'name': 'entity.name.function.honeytalk',
      'match': '(?i)\\b$runRegex?\\b\\s*\\b$idRegex\\s+with\\b',
    },
    {
      'name': 'entity.name.function.honeytalk',
      'match': '(?i)(\\b$runRegex?\\b\\s*\\b$idRegex)\\s*\\('
    },
    {
      'name': 'entity.name.function.honeytalk',
      'match': '(?i)\\b$runRegex\\b\\s*\\b$idRegex\\b',
    },
    {
      'name': 'keyword.operator.logical.honeytalk',
      'match': '(?i)\\b$logicRegex\\b|\\||&'
    },
    {
      'name': 'keyword.operator.comparison.honeytalk',
      'match': '(?i)\\b$comparisonRegex\\b|>|<|=|!'
    },
    {
      'name': 'keyword.operator.arithmetic.honeytalk',
      'match': '(?i)\\b$arithmeticRegex\\b|\\+|-|\\*|/|\\^'
    },
    {'name': 'keyword.control.honeytalk', 'match': '\\b(?i:first)\\b'},
    {
      'name': 'support.class.honeytalk',
      'match': '(?i)\\b$widgetRegex|$attributesRegex\\b'
    },
    {
      'match': '(?i)($idRegex)\\s+(of)\\b',
      'captures': {
        '1': {'name': 'variable.parameter.honeytalk'},
        '2': {'name': 'keyword.operator.logical.honeytalk'},
      }
    },
    {'name': 'variable.parameter.honeytalk', 'match': '\\\$$idRegex'},
    {
      'name': 'constant.language.boolean.honeytalk',
      'match': '(?i:)\\btrue|false\\b'
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
      'match': '\\b(?i:\\d+(\\.\\d+)?|$cardinalRegex)\\b'
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
  File('honey_vscode/honeytalk.tm.json').writeAsStringSync(encoder);
}

String toRegex(dynamic value,
    {bool spaceBefore = false, bool spaceAfter = false}) {
  var optional = false;
  var regex = '';
  if (value is String) {
    regex = RegExp.escape(value.trim())
        .replaceAll('/', '\\/')
        .replaceAll(RegExp(r'\s'), r'\s+');
  } else if (value is Set) {
    assert(value.isNotEmpty);
    optional = value.contains('');
    final nonEmpty = value.where((e) => e != '').toList();
    regex = nonEmpty.map(toRegex).join('|');
    if (nonEmpty.length > 1) {
      regex = '(?:$regex)';
    }
  } else if (value is List) {
    assert(value.isNotEmpty);
    final requiredIndex = value.indexWhere((e) => e is! Set || !e.contains(''));
    for (var i = 0; i < value.length; i++) {
      final element = value[i];
      final before = requiredIndex != -1 && i > requiredIndex;
      final after = i < requiredIndex;
      regex += toRegex(element, spaceBefore: before, spaceAfter: after);
    }
    return regex;
  } else {
    throw UnimplementedError();
  }

  if (spaceBefore) {
    regex = r'\s+' + regex;
  }
  if (spaceAfter) {
    regex = regex + r'\s+';
  }
  if (optional) {
    regex = '(?:$regex)?';
  }
  return regex;
}
