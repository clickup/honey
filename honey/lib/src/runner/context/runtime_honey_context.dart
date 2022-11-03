import 'dart:collection';

import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/expression/widget_expr.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/default_functions.dart';
import 'package:honey/src/runner/default_variables.dart';
import 'package:honey/src/runner/errors/honey_error.dart';

class RuntimeHoneyContext with HoneyContext {
  RuntimeHoneyContext(
    this.screenSize,
    Map<String, HoneyFunction> customFunctions,
  ) : customFunctions = _caseInsensitiveMap(customFunctions);

  @override
  final Size screenSize;

  final Map<String, HoneyFunction> customFunctions;
  final variables = _caseInsensitiveMap<EvaluatedExpr>({});

  WidgetExpr? referenceWidget;

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
  SemanticsNode get semanticsTree {
    return HoneyWidgetsBinding
        .instance.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
  }

  @override
  void dispatchPointerEvent(PointerEvent e) {
    WidgetsBinding.instance.handlePointerEvent(e);
  }

  @override
  void dispatchSemanticAction(Offset offset, SemanticsAction action) {
    HoneyWidgetsBinding.instance.pipelineOwner.semanticsOwner!
        .performActionAt(offset, action);
  }

  @override
  Future<void> delay(Duration duration) async {
    final s = Stopwatch()..start();
    while (true) {
      final remaining = duration - s.elapsed;
      if (canceled || remaining <= Duration.zero) {
        break;
      } else if (remaining > const Duration(milliseconds: 200)) {
        await Future<void>.delayed(const Duration(milliseconds: 200));
      } else {
        await Future<void>.delayed(remaining);
      }
    }
    if (canceled) {
      throw HoneyError('Test canceled', false);
    }
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

  @override
  RuntimeHoneyContext clone({WidgetExpr? referenceWidget}) {
    return RuntimeHoneyContext(screenSize, customFunctions)
      ..variables.addAll(variables)
      ..referenceWidget = referenceWidget ?? this.referenceWidget;
  }
}

Map<String, T> _caseInsensitiveMap<T>(Map<String, T> map) {
  return LinkedHashMap(
    equals: (a, b) => a.toLowerCase() == b.toLowerCase(),
    hashCode: (key) => key.toLowerCase().hashCode,
  )..addAll(map);
}
