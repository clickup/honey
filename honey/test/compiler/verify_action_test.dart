import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

import '../utils.dart';

void main() {
  group('Verify Action', () {
    test('Synonyms', () {
      final result = func(F.verify, [val(true)]);

      expectExpr('verify true', result);
      expectExpr('verifying true', result);
      expectExpr('verify that true', result);
      expectExpr('verifying that true', result);
      expectExpr('check true', result);
      expectExpr('checking true', result);
      expectExpr('check that true', result);
      expectExpr('checking that true', result);
      expectExpr('assert true', result);
      expectExpr('asserting true', result);
      expectExpr('assert that true', result);
      expectExpr('asserting that true', result);
      expectExpr('expect true', result);
      expectExpr('expecting true', result);
      expectExpr('expect that true', result);
      expectExpr('expecting that true', result);
      expectExpr('test true', result);
      expectExpr('testing true', result);
      expectExpr('test that true', result);
      expectExpr('testing that true', result);
      expectExpr('make sure true', result);
      expectExpr('making sure true', result);
      expectExpr('make sure that true', result);
      expectExpr('making sure that true', result);
    });

    test('Maybe', () {
      final result = func(F.verify, [val(true)]);

      expectExpr('maybe verify true', result, optional: true);
      expectExpr('try verifying true', result, optional: true);
      expectExpr('try to verify true', result, optional: true);
      expectExpr('optional verify true', result, optional: true);
      expectExpr('optionally verify true', result, optional: true);
    });
  });
}
