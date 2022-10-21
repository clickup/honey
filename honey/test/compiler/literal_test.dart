import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('Literal', () {
    test('String', () {
      expectExp('"testString"', val('testString'));

      // TODO fix
      /*expectExp(r'"st\"ring"', val('st"ring'));
      expectExp(r'"st\nring"', val('st\nring'));*/
    });

    test('Regex', () {
      expectExp('/testRegex/', str('testRegex', ''));
      expectExp('/testRegex/i', str('testRegex', 'i'));
      expectExp('/testRegex/m', str('testRegex', 'm'));
      expectExp('/testRegex/g', str('testRegex', 'g'));
      expectExp('/testRegex/ig', str('testRegex', 'ig'));
      expectExp('/testRegex/mg', str('testRegex', 'mg'));
      expectExp('/testRegex/im', str('testRegex', 'im'));
      expectExp('/testRegex/img', str('testRegex', 'img'));
    });

    test('Number', () {
      expectExp('123', val(123));
      expectExp('123.456', val(123.456));
      expectExp('-123', func(HoneyFunction.multiply, [val(123), val(-1)]));
    });

    test('Cardinal', () {
      expectExp('zero', val(0));
      expectExp('one', val(1));
      expectExp('two', val(2));
      expectExp('three', val(3));
      expectExp('four', val(4));
      expectExp('five', val(5));
      expectExp('six', val(6));
      expectExp('seven', val(7));
      expectExp('eight', val(8));
      expectExp('nine', val(9));
      expectExp('ten', val(10));
    });

    test('Boolean', () {
      expectExp('true', val(true));
      expectExp('false', val(false));
    });
  });
}
