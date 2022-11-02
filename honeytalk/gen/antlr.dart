import 'dart:io';

import '../synonyms.dart';

const rules = {
  'maybe': maybe,
  'verify': verify,
  'see': see,
  'set': set,
  'store': store,
  'wait': wait,
  'output': output,
  'click': click,
  'enter': enter,
  'swipe': swipe,
  'error': error,
  'widget': widget,
  'button': button,
  'link': link,
  'textfield': textfield,
  'slider': slider,
  'image': image,
  'checkbox': checkbox,
  'sswitch': sswitch,
  'header': header,
  'iff': iff,
  'then': then,
  'elseIf': elseIf,
  'elsee': elsee,
  'endIf': endIf,
  'eq': eq,
  'neq': neq,
  'gte': gte,
  'gt': gt,
  'lte': lte,
  'lt': lt,
  'exists': exists,
  'starts': starts,
  'ends': ends,
  'contains': contains,
  'matches': matches,
  'and': and,
  'or': or,
  'not': not,
  'plus': plus,
  'minus': minus,
  'times': times,
  'divide': divide,
  'pow': pow,
  'isAre': isAre,
  'isAreNot': isAreNot,
  'run': run,
  'caseSensitive': caseSensitive,
  'caseInsensitive': caseInsensitive,
  'exactly': exactly,
  'left': left,
  'right': right,
  'top': top,
  'bottom': bottom,
  'topLeft': topLeft,
  'topRight': topRight,
  'bottomLeft': bottomLeft,
  'bottomRight': bottomRight,
  'length': length,
  'character': character,
  'word': word,
  'line': line,
  'of': of,
};

void main() {
  var antlr = 'grammar HoneyTalkSynonyms;\n\n';

  for (final ruleName in rules.keys) {
    final ruleAntlr = toAntlr(rules[ruleName]!);
    antlr += '$ruleName: $ruleAntlr;\n\n';
  }

  File('honeytalk/HoneyTalkSynonyms.g4').writeAsStringSync(antlr);
}

String toAntlr(dynamic value) {
  if (value is String) {
    final parts =
        value.trim().replaceAll("'", "\\'").replaceAll(RegExp(r'\s'), "''");
    return "'$parts'";
  } else if (value is Set) {
    assert(value.isNotEmpty);
    final optional = value.contains('');
    final nonEmpty = value.where((e) => e != '').toList();
    final antlr = nonEmpty.map(toAntlr).join('|');
    if (nonEmpty.length > 1) {
      return optional ? '($antlr)?' : '($antlr)';
    } else {
      return optional ? '$antlr?' : '$antlr';
    }
  } else if (value is List) {
    assert(value.isNotEmpty);
    return value.map(toAntlr).join('');
  } else {
    throw UnimplementedError();
  }
}
