import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('Swipe Action', () {
    test('Synonyms', () {
      final result = func(HoneyFunction.swipe, [
        val('left'),
        val('myWidget'),
        val(''),
        val('20'),
      ]);

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
      final result = func(HoneyFunction.swipe, [
        val('top'),
        val('myWidget'),
        val(''),
        val('20'),
      ]);

      expectExpr('swipe up "myWidget" by 20', result);
    });

    test('Direction down', () {
      final result = func(HoneyFunction.swipe, [
        val('bottom'),
        val('myWidget'),
        val(''),
        val('20'),
      ]);

      expectExpr('swipe down "myWidget" by 20', result);
    });

    test('Direction right', () {
      final result = func(HoneyFunction.swipe, [
        val('right'),
        val('myWidget'),
        val(''),
        val('20'),
      ]);

      expectExpr('swipe right "myWidget" by 20', result);
    });
  });
}
