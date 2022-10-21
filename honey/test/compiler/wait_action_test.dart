import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('Wait Action', () {
    test('Synonyms', () {
      final result = func(HoneyFunction.wait, [val(5)]);

      expectExpr('wait 5', result);
      expectExpr('wait for 5', result);
      expectExpr('waiting 5', result);
      expectExpr('sleep 5', result);
      expectExpr('sleeping 5', result);
      expectExpr('delay 5', result);
      expectExpr('delaying 5', result);
    });

    test('Maybe', () {
      final result = func(HoneyFunction.wait, [val(5)]);

      expectExpr('maybe wait 5', result, optional: true);
      expectExpr('try waiting 5', result, optional: true);
      expectExpr('try to wait 5', result, optional: true);
      expectExpr('optional wait 5', result, optional: true);
      expectExpr('optionally wait 5', result, optional: true);
    });
  });
}
