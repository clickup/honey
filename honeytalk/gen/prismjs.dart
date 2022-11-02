import 'dart:io';

import 'regex.dart';

final prismJs = '''{
  'boolean': {
    'pattern': /\\b$yesNoRegex\\b/i,
  },
  'property': {
    'pattern': /\\\$\\b[a-zA-Z][a-zA-Z0-9]*\\b/,
  },
  'keyword': {
    'pattern': /\\b$controlRegex|$maybeRegex\\b/i,
  },
  'function': {
    'pattern': /\\b$actionRegex\\b/i,
  },
  'operator': {
    'pattern': /\\b$logicRegex|$comparisonRegex|$arithmeticRegex\\b/i,
    'greedy': true,
  },\
  'symbol': {
    'pattern': /\\b$widgetRegex\\b/i,
  },
  'string': {
		pattern: /"[^"\\\\r\\n]*"/,
		greedy: true
	},
  'number': {
    'pattern': /\\b\\d+(\\.\\d+)?\\b/i,
  },
}''';

void main() {
  final prism = 'Prism.languages.honeytalk = $prismJs;';

  Directory('docs/assets').createSync(recursive: true);
  File('docs/assets/honeytalk.js').writeAsStringSync(prism);
}
