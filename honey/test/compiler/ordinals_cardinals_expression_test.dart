import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Literal', () {
    test('Cardinals alone', () {
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

    test('Cardinals in swipe expression', () {
      final result = func(
        F.swipe,
        {
          pType: val('left'),
          pTarget: func(F.widgets, {
            pTarget: val('ListView'),
          }),
          pValue: val(3),
        },
      );
      expectExpr('swipe left "ListView" by three', result);
    });

    test('Ordinals alone', () {
      expectExpr('first', val(1));
      expectExpr('second', val(2));
      expectExpr('third', val(3));
      expectExpr('fourth', val(4));
      expectExpr('fifth', val(5));
      expectExpr('sixth', val(6));
      expectExpr('seventh', val(7));
      expectExpr('eighth', val(8));
      expectExpr('ninth', val(9));
      expectExpr('tenth', val(10));
      expectExpr('last', val(-1));
    });

    test('Ordinals in tap expression', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {
          pTarget: func(F.property, {
            pTarget: func(F.property, {
              pValue: val('ListView'),
              pName: val('item'),
            }),
            pValue: val(2),
          }),
        }),
      });

      expectExpr('tap second item in "ListView"', result);
    });

    test('Ordinals in verify expression', () {
      final result = func(F.verify, {
        pValue: func(F.greater, {
          pLeft: func(F.property, {
            pName: val(Property.length.name),
            pValue: func(F.widgets, {
              pTarget: func(F.property, {
                pTarget: val('Login'),
                pValue: val(2),
              })
            })
          }),
          pRight: val(0),
        })
      });
      expectExpr('verify second "Login" exist', result);
    });
  });
}
