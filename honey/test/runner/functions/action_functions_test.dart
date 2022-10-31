import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';

import '../../utils.dart';

void main() {
  group('action functions', () {
    test('click', () async {
      final input = func(F.click, {
        pType: val(ClickType.single.name),
        pTarget: val('My Widget'),
        pOffset: empty(),
      });
      await expectEval(
        input,
        EvaluatedListExpr([
          val(ClickType.single.name),
          val('My Widget'),
          empty(),
        ]),
        context: _FakeHoneyContext(),
      );
    });

    test('swipe', () async {
      final input = func(F.swipe, {
        pType: val(Direction.top.name),
        pTarget: val('My Widget'),
        pOffset: empty(),
        pValue: val(300)
      });
      await expectEval(
        input,
        EvaluatedListExpr([
          val(Direction.top.name),
          val('My Widget'),
          empty(),
          val(300),
        ]),
        context: _FakeHoneyContext(),
      );
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
      await expectEval(input, val(100));
    });

    test('print', () async {
      final input = func(F.output, {pValue: val('Hello World')});
      await expectEval(
        input,
        val('Hello World'),
      );
    });
  });
}

/// A fake [HoneyContext] that does not execute any action.
/// It is used to test the action functions. We don't need real click or swipe
class _FakeHoneyContext extends RuntimeHoneyContext {
  _FakeHoneyContext() : super({});

  @override
  Future<void> swipe({
    WidgetExpr? widget,
    Offset? offset,
    Direction direction = Direction.left,
    double distance = 0.0,
  }) async {}

  @override
  Future<void> click({
    WidgetExpr? widget,
    Offset? offset,
    ClickType type = ClickType.single,
  }) async {}
}
