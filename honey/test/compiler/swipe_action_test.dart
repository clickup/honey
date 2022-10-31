import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Swipe Action', () {
    test('Synonyms', () {
      final result = func(F.swipe, {
        pType: val(Direction.left.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
        pValue: val('20'),
      });

      expectExpr('swipe left "myWidget" by 20', result);
      expectExpr('swiping left "myWidget" by 20', result);
      expectExpr('slide left "myWidget" by 20', result);
      expectExpr('sliding left "myWidget" by 20', result);
      expectExpr('scroll left "myWidget" by 20', result);
      expectExpr('scrolling left "myWidget" by 20', result);
      expectExpr('drag left "myWidget" by 20', result);
      expectExpr('dragging left "myWidget" by 20', result);
    });

    test('Direction up', () {
      final result = func(F.swipe, {
        pType: val(Direction.top.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
        pValue: val('20'),
      });

      expectExpr('swipe up "myWidget" by 20', result);
    });

    test('Direction down', () {
      final result = func(F.swipe, {
        pType: val(Direction.bottom.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
        pValue: val('20'),
      });

      expectExpr('swipe down "myWidget" by 20', result);
    });

    test('Direction right', () {
      final result = func(F.swipe, {
        pType: val(Direction.right.name),
        pTarget: func(F.widgets, {pTarget: val('myWidget')}),
        pValue: val('20'),
      });

      expectExpr('swipe right "myWidget" by 20', result);
    });
  });
}
