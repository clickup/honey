import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('properties with actions', () {
    test('clickable property on widget', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {
          pTarget: func(F.widgets, {
            pName: list([val('widget')]),
            pModifier: val('caseInsensitive'),
            pFilter: list([
              func(F.equal, {
                pLeft: func(F.variable, {pName: val('clickable')}),
                pRight: val(true)
              })
            ])
          })
        })
      });
      expectExpr('click clickable "widget"', result);
      expectExpr('click "widget" clickable ', result);
    });

    test('scrollable property on widget', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {
          pTarget: func(F.widgets, {
            pName: list([val('widget')]),
            pModifier: val('caseInsensitive'),
            pFilter: list([
              func(F.equal, {
                pLeft: func(F.variable, {pName: val('scrollable')}),
                pRight: val(true)
              })
            ])
          })
        })
      });
      expectExpr('click scrollable "widget"', result);
      expectExpr('click "widget" scrollable ', result);
    });

    test('checkable property on widget', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {
          pTarget: func(F.widgets, {
            pName: list([val('widget')]),
            pModifier: val('caseInsensitive'),
            pFilter: list([
              func(F.equal, {
                pLeft: func(F.variable, {pName: val('checkable')}),
                pRight: val(true)
              })
            ])
          })
        })
      });
      expectExpr('click checkable "widget"', result);
      expectExpr('click "widget" checkable ', result);
    });
  });
}
