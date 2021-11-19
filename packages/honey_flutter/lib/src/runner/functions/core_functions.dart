import 'package:honey/honey.dart';
import 'package:honey/src/models/widget_expression.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:characters/characters.dart';
import 'package:honey/src/utils/expression_extension.dart';

abstract class CoreFunctions {
  static const functions = {
    'property': property,
    'item': item,
    'variable': variable,
    'concat': concat,
  };

  static Future<Expression> property(
      HoneyContext ctx, FunctionParams params) async {
    final property = await params.getAndEval(ctx, 0);
    var target = await params.getAndEval(ctx, 1);
    final retry = property.retry || target.retry;

    switch (property.value) {
      case 'length':
        if (target is ListExp) {
          return ValueExp(target.list.length, retry: retry);
        } else if (target is ValueExp) {
          return ValueExp(target.value.length, retry: retry);
        }
        break;
      case 'items':
        if (target is ValueExp) {
          final chars = target.value.characters
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(chars, retry: retry);
        } else if (target is ListExp) {
          return target.copyWith(retry: retry);
        }
        break;
      case 'words':
        if (target is ValueExp) {
          final words = target.value
              .split(r'\b')
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(words, retry: retry);
        }
        break;
      case 'lines':
        if (target is ValueExp) {
          final lines = target.value
              .split(r'\r?\n')
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(lines, retry: retry);
        }
        break;
    }

    if (target is WidgetExp) {
      final prop = target.getProperty(property.value!);
      if (prop != null) {
        return prop;
      }
    }

    throw 'Unknown property ${property.value}';
  }

  static Future<Expression> item(
      HoneyContext ctx, FunctionParams params) async {
    final item = await params.getAndEval(ctx, 0);
    final target = await params.getAndEval(ctx, 1);
    if (item is ValueExp && target is ListExp) {
      final index = item.asNum.toInt();
      if (index < target.list.length) {
        final value = target.list[index];
        return value.withRetry(item.retry || target.retry || value.retry);
      }
    }
    return ValueExp.empty(retry: target.retry);
  }

  static Future<Expression> variable(
      HoneyContext ctx, FunctionParams params) async {
    final variable = await params.getAndEval(ctx, 0);
    final value = params.getOrNull(1);

    if (variable is ValueExp) {
      if (value != null) {
        await ctx.setVariable(variable.value, value);
      }
      return await ctx.getVariable(variable.value);
    }
    return ValueExp.empty(retry: variable.retry);
  }

  static Future<Expression> concat(
      HoneyContext ctx, FunctionParams params) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    var result = '';
    if (left is ValueExp && right is ValueExp) {
      result = left.value + right.value;
    }
    return ValueExp(result, retry: left.retry || right.retry);
  }
}
