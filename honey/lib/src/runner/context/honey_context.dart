import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/models/expression/widget_expression.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/utils/fake_text_input.dart';

abstract class HoneyContext {
  static Rect get screenRect => RuntimeHoneyContext.screenRect;

  var _canceled = false;
  bool get canceled => _canceled;

  var message = '';

  void cancel() {
    _canceled = true;
  }

  SemanticsNode get semanticsTree;

  FakeTextInput get fakeTextInput;

  Future<Expression> getVariable(String name);

  Future<void> setVariable(String name, Expression expression);

  void deleteVariable(String name);

  bool hasVariable(String name);

  void dispatchPointerEvent(PointerEvent e);

  void dispatchSemanticAction(Offset offset, SemanticsAction action);

  Future<void> delay(Duration duration);

  Future<void> click({
    WidgetExp? widget,
    Offset? offset,
    ClickType type = ClickType.single,
  }) async {
    final rect = widget?.rect ?? screenRect;
    if (offset != null) {
      if (offset.dx <= 1 && offset.dy <= 1) {
        offset = Offset(offset.dx * rect.width, offset.dy * rect.height);
      }
      offset = rect.shift(offset).center;
    }

    final downEvent = PointerDownEvent(position: offset ?? rect.center);
    dispatchPointerEvent(downEvent);
    const upEvent = PointerUpEvent();
    dispatchPointerEvent(upEvent);
  }

  Future<void> swipe({
    WidgetExp? widget,
    Offset? offset,
    Direction direction = Direction.left,
    double distance = 0.0,
  }) async {
    final rect = widget?.rect ?? screenRect;
    if (offset != null) {
      if (offset.dx <= 1 && offset.dy <= 1) {
        offset = Offset(offset.dx * rect.width, offset.dy * rect.height);
      }
      offset = rect.shift(offset).center;
    }

    offset ??= rect.center;
    final delta = Offset(
      direction.xValue * (distance != 0.0 ? distance : rect.width),
      direction.yValue * (distance != 0.0 ? distance : rect.height),
    );
    dispatchPointerEvent(PointerDownEvent(position: offset));
    dispatchPointerEvent(PointerMoveEvent(position: offset));
    offset = Offset(offset.dx + delta.dx, offset.dy + delta.dy);
    dispatchPointerEvent(PointerMoveEvent(
      position: offset,
      delta: delta,
    ));
    offset = Offset(offset.dx + delta.dx, offset.dy + delta.dy);
    dispatchPointerEvent(PointerMoveEvent(
      position: offset,
      delta: delta,
    ));
    dispatchPointerEvent(const PointerUpEvent());
  }

  Future<Expression> eval(Expression expression);
}
