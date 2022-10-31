import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Ignored words', () {
    final result = func(F.verify, {
      pValue: func(F.greater, {
        pLeft: func(F.length, {
          pValue: func(F.widgets, {pTarget: val('myWidget')})
        }),
        pRight: val(0),
      }),
    });

    test('a', () {
      expectExpr('see a "myWidget"', result);
    });

    test('the', () {
      expectExpr('see the "myWidget"', result);
    });

    test('an', () {
      expectExpr('see an "myWidget"', result);
    });

    test('actually', () {
      expectExpr('actually see a "myWidget"', result);
      expectExpr('verify the "myWidget" is visible actually', result);
    });

    test('just', () {
      expectExpr('just see a "myWidget"', result);
      expectExpr('see just a "myWidget"', result);
    });

    test('soon', () {
      expectExpr('verify that a "myWidget" is soon visible', result);
      expectExpr('verify that a "myWidget" is visible soon', result);
    });

    test('yet', () {
      expectExpr('see a "myWidget" yet', result);
      expectExpr('verify that the "myWidget" is yet visible', result);
    });
  });
}
