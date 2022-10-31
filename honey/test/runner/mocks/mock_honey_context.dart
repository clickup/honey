import 'dart:ui';

import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';

final Map<String, int> _calls = {};

class MockHoneyContext extends RuntimeHoneyContext {
  MockHoneyContext() : super({});

  @override
  Future<void> delay(Duration duration) async {
    _calls['delay'] = (_calls['delay'] ?? 0) + 1;
  }

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
