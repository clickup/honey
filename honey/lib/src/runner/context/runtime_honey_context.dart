import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/runner/default_variables.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/function_params.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/models/expression/widget_expression.dart';
import 'package:honey/src/utils/fake_text_input.dart';
import 'package:honey/src/utils/expression_extension.dart';

import 'honey_context.dart';

class RuntimeHoneyContext with HoneyContext {
  RuntimeHoneyContext(this.fakeTextInput);

  static late Rect screenRect;

  @override
  final FakeTextInput fakeTextInput;
  final variables = <String, Expression>{};
  final defaultVariables = getDefaultVariables();

  WidgetExp? referenceWidget;

  @override
  Future<Expression> getVariable(String name) {
    final lcName = name.toLowerCase();
    final widgetVal = referenceWidget?.getProperty(lcName);
    final value = widgetVal ??
        variables[lcName] ??
        defaultVariables[lcName] ??
        const ValueExp.empty();
    return eval(value);
  }

  @override
  Future<void> setVariable(String name, Expression expression) async {
    final evaluatedValue = await eval(expression);
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

  @override
  void deleteVariable(String name) {
    variables.remove(name.toLowerCase());
  }

  @override
  bool hasVariable(String name) {
    final lcName = name.toLowerCase();
    final widgetVal = referenceWidget?.getProperty(lcName);
    return widgetVal != null ||
        variables.containsKey(lcName) ||
        defaultVariables.containsKey(lcName);
  }

  @override
  SemanticsNode get semanticsTree {
    return HoneyBinding
        .instance.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
  }

  @override
  void dispatchPointerEvent(PointerEvent e) {
    WidgetsBinding.instance.handlePointerEvent(e);
  }

  @override
  void dispatchSemanticAction(Offset offset, SemanticsAction action) {
    HoneyBinding.instance.pipelineOwner.semanticsOwner!
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
        await Future.delayed(const Duration(milliseconds: 200));
      } else {
        await Future.delayed(remaining);
      }
    }
    if (canceled) {
      throw const HoneyError('Test canceled', false);
    }
  }

  @override
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
