import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Click Action', () {
    test('Synonyms', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });
      expectExpr('click "myWidget"', result);
      expectExpr('clicking "myWidget"', result);
      expectExpr('tap "myWidget"', result);
      expectExpr('tapping "myWidget"', result);
      expectExpr('touch "myWidget"', result);
      expectExpr('touching "myWidget"', result);
      expectExpr('push "myWidget"', result);
      expectExpr('pushing "myWidget"', result);
      expectExpr('press "myWidget"', result);
      expectExpr('pressing "myWidget"', result);
      expectExpr('hit "myWidget"', result);
      expectExpr('hitting "myWidget"', result);
      expectExpr('slam "myWidget"', result);
      expectExpr('slamming "myWidget"', result);
    });

    test('Maybe', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });

      expectExpr('maybe click "myWidget"', result, optional: true);
      expectExpr('try clicking "myWidget"', result, optional: true);
      expectExpr('try to click "myWidget"', result, optional: true);
      expectExpr('optional click "myWidget"', result, optional: true);
      expectExpr('optionally click "myWidget"', result, optional: true);
    });

    test('Left', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });

      expectExpr('click "myWidget"', result);
      expectExpr('click the "myWidget"', result);
      expectExpr('click on "myWidget"', result);
      expectExpr('click on the "myWidget"', result);
      expectExpr('left click "myWidget"', result);
      expectExpr('left click on "myWidget"', result);
      expectExpr('left click on the "myWidget"', result);
      expectExpr('single click "myWidget"', result);
    });

    test('Right', () {
      final result = func(F.click, {
        pType: val(ClickType.right.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });

      expectExpr('right click "myWidget"', result);
      expectExpr('right click on "myWidget"', result);
      expectExpr('right click on the "myWidget"', result);
      expectExpr('right click "myWidget"', result);
    });

    test('Double', () {
      final result = func(F.click, {
        pType: val(ClickType.double.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });

      expectExpr('double click "myWidget"', result);
      expectExpr('double click on "myWidget"', result);
      expectExpr('double click on the "myWidget"', result);
      expectExpr('double click "myWidget"', result);
    });

    test('Long', () {
      final result = func(F.click, {
        pType: val(ClickType.long.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
      });

      expectExpr('long click "myWidget"', result);
      expectExpr('long click on "myWidget"', result);
      expectExpr('long click on the "myWidget"', result);
      expectExpr('long click "myWidget"', result);
    });

    test('Widget Offset', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
        pOffset: val('0.5,0.5'),
      });

      expectExpr('click "myWidget" at "0.5,0.5"', result);
      expectExpr('click "myWidget" offset "0.5,0.5"', result);
      expectExpr('click "myWidget" with offset "0.5,0.5"', result);
    });

    test('Offset', () {
      final result = func(F.click, {
        pType: val(ClickType.single.name),
        pOffset: val('0.5,0.5'),
      });

      expectExpr('click at "0.5,0.5"', result);
      expectExpr('click offset "0.5,0.5"', result);
      expectExpr('click with offset "0.5,0.5"', result);
    });
  });
}
