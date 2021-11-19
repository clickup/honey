import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/models/widget_expression.dart';
import 'package:honey/src/utils/fake_text_input.dart';
import 'package:honey_core/honey_core.dart';

import 'runtime_honey_context.dart';

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

  Future restartApp({bool reset = false});

  Future delay(Duration duration);

  Future click({
    WidgetExp? widget,
    Offset? offset,
    ClickType type = ClickType.Single,
  }) async {
    final rect = widget?.rect ?? screenRect;
    if (offset != null) {
      if (offset.dx <= 1 && offset.dy <= 1) {
        offset = Offset(offset.dx * rect.width, offset.dy * rect.height);
      }
      offset = rect.shift(offset).center;
    }
    print('CLICK: ${offset ?? rect.center}');
    final downEvent = PointerDownEvent(position: offset ?? rect.center);
    dispatchPointerEvent(downEvent);
    final upEvent = PointerUpEvent();
    dispatchPointerEvent(upEvent);
  }

  Future<Expression> eval(Expression expression);
}

enum ClickType { Single, Double, Long, Right }
