import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/honey_binding.dart';
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
  final cache = <Expression, Expression>{};

  WidgetExp? referenceWidget;

  RuntimeHoneyContext(this.functions, this.fakeTextInput) {
    variables.addAll(getDefaultVariables());
  }

  Future<Expression> getVariable(String name) {
    final widgetVal = referenceWidget?.getProperty(name);
    final value =
        widgetVal ?? variables[name.toLowerCase()] ?? ValueExp.empty();
    return eval(value);
  }

  Future<void> setVariable(String name, Expression value) async {
    final evaluatedValue = await eval(value);
    if (!evaluatedValue.retry) {
      value = evaluatedValue;
    }
    if (value is! ValueExp && value is! ListExp) {
      throw HoneyError(
        'Only list and value expressions can be stored in variables',
        value.retry,
      );
    }
    variables[name.toLowerCase()] = value.withRetry(false);
  }

  void deleteVariable(String name) {
    variables.remove(name.toLowerCase());
  }

  bool hasVariable(String name) {
    final widgetVal = referenceWidget?.getProperty(name);
    return widgetVal != null || variables.containsKey(name.toLowerCase());
  }

  SemanticsNode get semanticsTree {
    return WidgetsBinding
        .instance!.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
  }

  void dispatchPointerEvent(PointerEvent e) {
    WidgetsBinding.instance!.handlePointerEvent(e);
  }

  Future restartApp({bool reset = false}) async {
    if (reset) {
      await HoneyBinding.instance.resetApp();
    } else {
      await HoneyBinding.instance.restartApp();
    }
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

  Future<Expression> eval(Expression expression) {
    if (cache.containsKey(expression)) {
      return Future.value(cache[expression]!);
    }
    if (expression is FunctionExp) {
      final params = FunctionParams(expression.params);
      return functions.run(this, expression.name, params);
    } else {
      return Future.value(expression);
    }
  }

  RuntimeHoneyContext clone() {
    return RuntimeHoneyContext(functions, fakeTextInput)
      ..variables.addAll(variables)
      ..cache.addAll(cache);
  }
}
