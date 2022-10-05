import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/binding/honey_binding.dart';
import 'package:honey/src/runner/default_variables.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/function_params.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/models/widget_expression.dart';
import 'package:honey/src/utils/fake_text_input.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey/src/utils/expression_extension.dart';

import 'honey_context.dart';

class RuntimeHoneyContext with HoneyContext {
  static late Rect screenRect;

  final FunctionRegistry functions;
  final FakeTextInput fakeTextInput;
  final variables = <String, Expression>{};
  final defaultVariables = getDefaultVariables();

  WidgetExp? referenceWidget;

  RuntimeHoneyContext(this.functions, this.fakeTextInput);

  Future<Expression> getVariable(String name) {
    name = name.toLowerCase();
    final widgetVal = referenceWidget?.getProperty(name);
    final value = widgetVal ??
        variables[name] ??
        defaultVariables[name] ??
        ValueExp.empty();
    return eval(value);
  }

  Future<void> setVariable(String name, Expression value) async {
    final evaluatedValue = await eval(value);
    if (!evaluatedValue.retry) {
      value = evaluatedValue;
    }
    if (value is! ValueExp && value is! ListExp && value is! FunctionExp) {
      throw HoneyError(
        'Only list, value abd function expressions can be stored in variables',
        value.retry,
      );
    }
    variables[name.toLowerCase()] = value.withRetry(false);
  }

  void deleteVariable(String name) {
    variables.remove(name.toLowerCase());
  }

  bool hasVariable(String name) {
    name = name.toLowerCase();
    final widgetVal = referenceWidget?.getProperty(name);
    return widgetVal != null ||
        variables.containsKey(name) ||
        defaultVariables.containsKey(name);
  }

  SemanticsNode get semanticsTree {
    return HoneyBinding
        .instance.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
  }

  void dispatchPointerEvent(PointerEvent e) {
    WidgetsBinding.instance.handlePointerEvent(e);
  }

  Future delay(Duration duration) async {
    final s = Stopwatch()..start();
    while (true) {
      final remaining = duration - s.elapsed;
      if (canceled || remaining <= Duration.zero) {
        break;
      } else if (remaining > Duration(milliseconds: 200)) {
        await Future.delayed(Duration(milliseconds: 200));
      } else {
        await Future.delayed(remaining);
      }
    }
    if (canceled) {
      throw HoneyError('Test canceled', false);
    }
  }

  Future<Expression> eval(Expression expression) async {
    if (expression is FunctionExp) {
      final params = FunctionParams(expression.params);
      final result = await functions.run(this, expression.name, params);
      return result;
    } else {
      return Future.value(expression);
    }
  }

  RuntimeHoneyContext clone() {
    return RuntimeHoneyContext(functions, fakeTextInput)
      ..variables.addAll(variables);
  }
}
