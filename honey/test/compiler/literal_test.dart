import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Literal', () {
    test('String', () {
      expectExpr('"testString"', val('testString'));

      // TODO fix
      /*expectExpr(r'"st\"ring"', val('st"ring'));
      expectExpr(r'"st\nring"', val('st\nring'));*/
    });

    test('Number', () {
      expectExpr('123', val(123));
      expectExpr('123.456', val(123.456));
      expectExpr('-123', func(F.multiply, {pLeft: val(123), pRight: val(-1)}));
    });

    test('Cardinal', () {
      expectExpr('zero', val(0));
      expectExpr('one', val(1));
      expectExpr('two', val(2));
      expectExpr('three', val(3));
      expectExpr('four', val(4));
      expectExpr('five', val(5));
      expectExpr('six', val(6));
      expectExpr('seven', val(7));
      expectExpr('eight', val(8));
      expectExpr('nine', val(9));
      expectExpr('ten', val(10));
    });

    test('Boolean', () {
      expectExpr('true', val(true));
      expectExpr('false', val(false));
    });
  });
}
