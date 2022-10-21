import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('Verify Action', () {
    test('Synonyms', () {
      final result = func(HoneyFunction.verify, [val(true)]);

      expectExp('verify true', result);
      expectExp('verifying true', result);
      expectExp('verify that true', result);
      expectExp('verifying that true', result);
      expectExp('check true', result);
      expectExp('checking true', result);
      expectExp('check that true', result);
      expectExp('checking that true', result);
      expectExp('assert true', result);
      expectExp('asserting true', result);
      expectExp('assert that true', result);
      expectExp('asserting that true', result);
      expectExp('expect true', result);
      expectExp('expecting true', result);
      expectExp('expect that true', result);
      expectExp('expecting that true', result);
      expectExp('test true', result);
      expectExp('testing true', result);
      expectExp('test that true', result);
      expectExp('testing that true', result);
      expectExp('make sure true', result);
      expectExp('making sure true', result);
      expectExp('make sure that true', result);
      expectExp('making sure that true', result);
    });

    test('Maybe', () {
      final result = func(HoneyFunction.verify, [val(true)]);

      expectExp('maybe verify true', result, optional: true);
      expectExp('try verifying true', result, optional: true);
      expectExp('try to verify true', result, optional: true);
      expectExp('optional verify true', result, optional: true);
      expectExp('optionally verify true', result, optional: true);
    });
  });
}
