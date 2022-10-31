import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';

import '../../utils.dart';
import '../mocks/mock_honey_context.dart';

void main() {
  group('action functions', () {
    test('click', () async {
      final input = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: val('My Widget'),
        pOffset: empty(),
      });
      final mockContext = MockHoneyContext();
      await expectEval(
        input,
        EvaluatedListExpr([
          val(ClickType.single.name),
          val('My Widget'),
          empty(),
        ]),
        context: mockContext,
      );
      expect(mockContext.callsCount('click'), 1);
    });

    test('swipe', () async {
      final input = func(F.swipe, {
        pType: val(Direction.top.name),
        pTarget: val('My Widget'),
        pOffset: empty(),
        pValue: val(300)
      });
      final mockContext = MockHoneyContext();
      await expectEval(
        input,
        EvaluatedListExpr([
          val(Direction.top.name),
          val('My Widget'),
          empty(),
          val(300),
        ]),
        context: mockContext,
      );
      expect(mockContext.callsCount('swipe'), 1);
    });

    /*test('enter', () async {
      final input = func(F.enter, {
        pValue: val('My Value'),
      });
      final mockContext = MockHoneyContext();
      await expectEval(
        input,
        val('My Value'),
        context: mockContext,
      );
      expect(mockContext.callsCount('enterText'), 1);
    });*/

    test('verify', () async {
      final input = func(F.verify, {pValue: val(true)});
      await expectEval(input, val(true));
    });

    test('wait', () async {
      final input = func(F.wait, {pValue: val(100)});
      final mockContext = MockHoneyContext();
      await expectEval(input, val(100), context: mockContext);
      expect(mockContext.callsCount('delay'), 1);
    });

    test('print', () async {
      final input = func(F.output, {pValue: val('Hello World')});
      final mockContext = MockHoneyContext();
      await expectEval(
        input,
        val('Hello World'),
        context: mockContext,
      );
      expect(mockContext.message, 'Hello World');
    });
  });
}
