import 'package:flutter_test/flutter_test.dart';

import '../utils.dart';

void main() {
  group('Error results:', () {
    test('One liner', () {
      expectError(
        'tap',
        errorLine: 1,
        errorColumn: 3,
      );
    });

    test('If statement with error inside else', () {
      expectError(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else\n'
        'tap"\n'
        'endif',
        errorLine: 4,
        errorColumn: 3,
      );
    });

    test('If statement with error inside if', () {
      expectError(
        'if "MyWidget" is visible then\n'
        'swipe\n'
        'else\n'
        'swipe "MyWidget" by 300\n'
        'endif',
        errorLine: 2,
        errorColumn: 5,
      );
    });

    test('If statement with error in conditional statement', () {
      expectError(
        '"MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else\n'
        'swipe left "MyWidget" by 300\n'
        'endif',
        errorLine: 1,
        errorColumn: 22,
      );
    });

    test('Multiline script with typo', () {
      expectError(
        'tap "MyWidget"\n'
        'swipe left "MyWidget" by 300\n'
        'verify "MyWidget is visible\n',
        errorLine: 3,
        errorColumn: 7,
      );
    });
  });
}
