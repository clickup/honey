import 'package:flutter_test/flutter_test.dart';

import '../utils.dart';

void main() {
  group('Error results:', () {
    test('One liner', () {
      expectError(
        'tapp "MyWidget"',
        errorLine: 1,
        errorColumn: 15,
      );
    });

    test('If statement with error inside else', () {
      expectError(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else\n'
        'tapp "MyWidget"\n'
        'endif',
        errorLine: 4,
        errorColumn: 15,
      );
    });

    test('If statement with error inside if', () {
      expectError(
        'if "MyWidget" is visible then\n'
        'tapppp "MyWidget"\n'
        'else\n'
        'swipe "MyWidget" by 300\n'
        'endif',
        errorLine: 2,
        errorColumn: 17,
      );
    });

    test('If statement with error in conditional statement', () {
      expectError(
        'ifff "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else\n'
        'swipe left "MyWidget" by 300\n'
        'endif',
        errorLine: 1,
        errorColumn: 16,
      );
    });

    test('Multiline script with typo', () {
      expectError(
        'tap "MyWidget"\n'
        'swipe left "MyWidget" by 300\n'
        'verfy "MyWidget" is visible\n',
        errorLine: 3,
        errorColumn: 17,
      );
    });
  });
}
