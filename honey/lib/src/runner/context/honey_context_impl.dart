import 'package:flutter/widgets.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/expression/widget_expr.dart';
import 'package:honey/src/honey_function.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/default_functions.dart';
import 'package:honey/src/runner/default_variables.dart';
import 'package:honey/src/utils.dart';

abstract class HoneyContextImpl extends HoneyContext {
  HoneyContextImpl({
    required this.customFunctions,
    this.referenceWidget,
    Map<String, EvaluatedExpr> variables = const {},
  }) {
    this.variables.addAll(variables);
  }

  final Map<String, HoneyFunction> customFunctions;
  final WidgetExpr? referenceWidget;
  final variables = <String, EvaluatedExpr>{}.toCaseInsensitive();

  @override
  String output = '';

  Size get screenSize;

  Rect get screenRect =>
      Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);

  @override
  EvaluatedExpr getVariable(String name) {
    final widgetVal = referenceWidget?.property(name);
    final value =
        widgetVal ?? variables[name] ?? defaultVariables[name] ?? empty();
    return value;
  }

  @override
  void setVariable(String name, EvaluatedExpr expression) {
    variables[name] = expression.withRetry(false);
  }

  @override
  void deleteVariable(String name) {
    variables.remove(name);
  }

  @override
  bool hasVariable(String name) {
    final widgetVal = referenceWidget?.property(name);
    return (widgetVal != null && !widgetVal.isEmpty) ||
        variables.containsKey(name) ||
        defaultVariables.containsKey(name);
  }

  @override
  Future<void> delay(Duration duration) async {
    final s = Stopwatch()..start();
    while (true) {
      final remaining = duration - s.elapsed;
      if (remaining <= Duration.zero) {
        break;
      } else if (remaining > const Duration(milliseconds: 200)) {
        await Future<void>.delayed(const Duration(milliseconds: 200));
      } else {
        await Future<void>.delayed(remaining);
      }
    }
  }

  @override
  Future<void> click({
    WidgetExpr? widget,
    Offset? offset,
    ClickType type = ClickType.single,
  }) async {
    final rect = widget?.rect ?? screenRect;
    var clickOffset = offset;
    if (clickOffset != null) {
      if (clickOffset.dx <= 1 && clickOffset.dy <= 1) {
        clickOffset = Offset(
          clickOffset.dx * rect.width,
          clickOffset.dy * rect.height,
        );
      }
      clickOffset = rect.shift(clickOffset).center;
    }

    final downEvent = PointerDownEvent(position: clickOffset ?? rect.center);
    dispatchPointerEvent(downEvent);
    const upEvent = PointerUpEvent();
    dispatchPointerEvent(upEvent);
  }

  @override
  Future<void> swipe({
    WidgetExpr? widget,
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
    //we're doing swipe twice so we need to devide distance
    final halfDistance = distance / 2;
    final delta = Offset(
      direction.xValue * (halfDistance != 0.0 ? halfDistance : rect.width),
      direction.yValue * (halfDistance != 0.0 ? halfDistance : rect.height),
    );

    dispatchPointerEvent(PointerDownEvent(position: offset));
    dispatchPointerEvent(PointerMoveEvent(position: offset));
    offset = Offset(offset.dx + delta.dx, offset.dy + delta.dy);
    dispatchPointerEvent(
      PointerMoveEvent(
        position: offset,
        delta: delta,
      ),
    );
    // ignore: parameter_assignments
    offset = Offset(offset.dx + delta.dx, offset.dy + delta.dy);
    dispatchPointerEvent(
      PointerMoveEvent(
        position: offset,
        delta: delta,
      ),
    );
    dispatchPointerEvent(const PointerUpEvent());
  }

  @override
  void print(String line) {
    if (output.isNotEmpty) {
      output += '\n';
    }
    output += line;
  }

  @override
  Future<EvaluatedExpr> eval(Expr? expression) async {
    if (expression is FunctionExpr) {
      final function = customFunctions[expression.function] ??
          defaultFunctions[expression.function]!;
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
}
