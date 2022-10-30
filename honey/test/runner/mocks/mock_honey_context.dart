import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/gestures/events.dart';
import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/runner/functions.dart';
import 'package:honey/src/utils/fake_text_input.dart';

final Map<String, int> _calls = {};

class MockHoneyContext with HoneyContext {
  @override
  Future<void> delay(Duration duration) async {
    _calls['delay'] = (_calls['delay'] ?? 0) + 1;
  }

  @override
  void deleteVariable(String name) {}

  @override
  void dispatchPointerEvent(PointerEvent e) {}

  @override
  void dispatchSemanticAction(Offset offset, SemanticsAction action) {}

  @override
  Future<EvaluatedExpr> eval(Expr? expression) async {
    if (expression is FunctionExpr) {
      final function = functions[expression.function]!;
      return function(this, expression.params);
    } else if (expression is ListExpr) {
      final list = <EvaluatedExpr>[
        for (var i = 0; i < expression.length; i++) await eval(expression[i])
      ];
      return EvaluatedListExpr(list);
    } else if (expression is EvaluatedExpr) {
      return Future.value(expression);
    } else {
      return empty();
    }
  }

  @override
  // TODO: implement fakeTextInput
  FakeTextInput get fakeTextInput => MockFakeTextInput();

  @override
  EvaluatedExpr getVariable(String name) {
    throw UnimplementedError();
  }

  @override
  bool hasVariable(String name) {
    throw UnimplementedError();
  }

  @override
  SemanticsNode get semanticsTree => throw UnimplementedError();

  @override
  void setVariable(String name, EvaluatedExpr expression) {}

  @override
  Future<void> click({
    WidgetExpr? widget,
    Offset? offset,
    ClickType type = ClickType.single,
  }) async {
    _calls['click'] = (_calls['click'] ?? 0) + 1;
  }

  @override
  Future<void> swipe({
    WidgetExpr? widget,
    Offset? offset,
    Direction direction = Direction.left,
    double distance = 0.0,
  }) async {
    _calls['swipe'] = (_calls['swipe'] ?? 0) + 1;
  }

  int callsCount(String name) => _calls[name] ?? 0;
}

class MockFakeTextInput extends FakeTextInput {
  @override
  bool get hasClient => true;

  @override
  void enterText(String text) {
    _calls['enterText'] = (_calls['enterText'] ?? 0) + 1;
  }
}
