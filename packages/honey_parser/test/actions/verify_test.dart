import 'package:test/scaffolding.dart';

import '../common.dart';

void main() {
  group('verify', () {
    test('synonyms', () {
      final result = f('verify', v(true));

      expectCompiles('verify true', result);
      expectCompiles('verify that true', result);
      expectCompiles('check true', result);
      expectCompiles('check that true', result);
      expectCompiles('assert true', result);
      expectCompiles('assert that true', result);
      expectCompiles('expect true', result);
      expectCompiles('expect that true', result);
    });

    test('complex expression', () {
      expectCompiles(
        'verify that seven + 5 equals 12',
        f(
          'verify',
          f('equal', [
            f('plus', [v(7), v(5)]),
            v(12)
          ]),
        ),
      );
    });

    test('fails without argument', () {
      expectFails('verify');
    });
  });
}
