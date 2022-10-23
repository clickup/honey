import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

import '../utils.dart';

void main() {
  group('Literal', () {
    test('String', () {
      expectExpr('"testString"', val('testString'));

      // TODO fix
      /*expectExpr(r'"st\"ring"', val('st"ring'));
      expectExpr(r'"st\nring"', val('st\nring'));*/
    });

    test('Regex', () {
      expectExpr('/testRegex/', str('testRegex', ''));
      expectExpr('/testRegex/i', str('testRegex', 'i'));
      expectExpr('/testRegex/m', str('testRegex', 'm'));
      expectExpr('/testRegex/g', str('testRegex', 'g'));
      expectExpr('/testRegex/ig', str('testRegex', 'ig'));
      expectExpr('/testRegex/mg', str('testRegex', 'mg'));
      expectExpr('/testRegex/im', str('testRegex', 'im'));
      expectExpr('/testRegex/img', str('testRegex', 'img'));
    });

    test('Number', () {
      expectExpr('123', val(123));
      expectExpr('123.456', val(123.456));
      expectExpr('-123', func(F.multiply, [val(123), val(-1)]));
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
