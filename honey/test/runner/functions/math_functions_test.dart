import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../../utils.dart';

void main() {
  group('math functions', () {
    test('equal', () async {
      final input = func(F.equal, {pLeft: val(1), pRight: val(1)});
      await expectEval(input, val(true));
    });

    test('equal false', () async {
      final input = func(F.equal, {pLeft: val(1), pRight: val(2)});
      await expectEval(input, val(false));
    });

    test('greater', () async {
      final input = func(F.greater, {pLeft: val(1), pRight: val(1)});
      await expectEval(input, val(false));
    });

    test('greater true', () async {
      final input = func(F.greater, {pLeft: val(2), pRight: val(1)});
      await expectEval(input, val(true));
    });

    test('less', () async {
      final input = func(F.less, {pLeft: val(1), pRight: val(1)});
      await expectEval(input, val(false));
    });

    test('less true', () async {
      final input = func(F.less, {pLeft: val(1), pRight: val(2)});
      await expectEval(input, val(true));
    });

    test('plus', () async {
      final input = func(F.plus, {pLeft: val(1), pRight: val(1)});
      await expectEval(input, val(2));
    });

    test('minus', () async {
      final input = func(F.minus, {pLeft: val(1), pRight: val(1)});
      await expectEval(input, val(0));
    });

    test('multiply', () async {
      final input = func(F.multiply, {pLeft: val(6), pRight: val(5)});
      await expectEval(input, val(30));
    });

    test('divide', () async {
      final input = func(F.divide, {pLeft: val(1), pRight: val(2)});
      await expectEval(input, val(0.5));
    });

    test('pow', () async {
      final input = func(F.pow, {pLeft: val(2), pRight: val(3)});
      await expectEval(input, val(8));
    });
  });
}
