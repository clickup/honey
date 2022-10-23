import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Enter Action', () {
    test('Synonyms', () {
      final result = func(F.enter, {pValue: val('some TEXT')});

      expectExpr('enter "some TEXT"', result);
      expectExpr('entering "some TEXT"', result);
      expectExpr('type "some TEXT"', result);
      expectExpr('typing "some TEXT"', result);
      expectExpr('input "some TEXT"', result);
      expectExpr('inputting "some TEXT"', result);
    });

    test('Maybe', () {
      final result = func(F.enter, {pValue: val('test123')});

      expectExpr('maybe enter "test123"', result, optional: true);
      expectExpr('try entering "test123"', result, optional: true);
      expectExpr('try to enter "test123"', result, optional: true);
      expectExpr('optional enter "test123"', result, optional: true);
      expectExpr('optionally enter "test123"', result, optional: true);
    });
  });
}
