import 'package:test/test.dart';

import '../common.dart';

void main() {
  group('maybe', () {
    test('synonyms', () {
      final result = f('verify', v(true));

      expectCompiles('maybe verify true', result, optional: true);
      expectCompiles('try verify true', result, optional: true);
      expectCompiles('try to verify true', result, optional: true);
      expectCompiles('optional verify true', result, optional: true);
      expectCompiles('optionally verify true', result, optional: true);
    });

    test('fails with invalid syntax', () {
      expectFails('maybe');
      expectFails('maybe maybe');
      expectFails('maybe maybe verify');
    });
  });
}
