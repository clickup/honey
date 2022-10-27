import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Date formatting: ', () {
    test('Expression with from / to', () {
      final result = func(F.format, {
        pValue: val('2020-01-01'),
        pInput: val('yyyy/MM/dd'),
        pOutput: val('dd.MM.yyyy'),
      });
      expectExpr(
        'format "2020-01-01" from "yyyy/MM/dd" to "dd.MM.yyyy"',
        result,
      );
    });

    test('Expression with from / as', () {
      final result = func(F.format, {
        pValue: val('2020-01-01'),
        pInput: val('yyyy/MM/dd'),
        pOutput: val('dd.MM.yyyy'),
      });
      expectExpr(
        'format "2020-01-01" from "yyyy/MM/dd" as "dd.MM.yyyy"',
        result,
      );
    });

    test('Expression without target format', () {
      final result = func(F.format, {
        pValue: val('2020-01-01'),
        pInput: val('yyyy/MM/dd'),
        pOutput: val(''),
      });
      expectExpr(
        'format "2020-01-01" from "yyyy/MM/dd"',
        result,
      );
    });

    test('Expression without source format', () {
      final result = func(F.format, {
        pValue: val('2020-01-01'),
        pInput: val(''),
        pOutput: val('dd.MM.yyyy'),
      });
      expectExpr(
        'format "2020-01-01" to "dd.MM.yyyy"',
        result,
      );
    });

    test('now', () {
      final result = func(F.now, {});
      expectExpr(
        'now',
        result,
      );
    });
  });
}
