import 'package:characters/characters.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/models/expression/widget_expression.dart';

abstract class CoreFunctions {
  static Future<Expression> property(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final property = await params.getAndEval(ctx, 0);
    final target = await params.getAndEval(ctx, 1);
    final retry = property.retry || target.retry;

    switch (Property.fromName(property.asString)) {
      case Property.length:
        if (target is ListExp) {
          return ValueExp(target.list.length, retry: retry);
        } else if (target is ValueExp) {
          return ValueExp(target.value.length, retry: retry);
        }
        break;
      case Property.items:
        if (target is ValueExp) {
          final chars = target.value.characters
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(chars, retry: retry);
        } else if (target is ListExp) {
          return ListExp(target.list, retry: retry);
        }
        break;
      case Property.words:
        if (target is ValueExp) {
          final words = target.value
              .split(r'\b')
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(words, retry: retry);
        }
        break;
      case Property.lines:
        if (target is ValueExp) {
          final lines = target.value
              .split(r'\r?\n')
              .map((e) => ValueExp(e, retry: target.retry))
              .toList();
          return ListExp(lines, retry: retry);
        }
        break;
      // ignore: no_default_cases
      default:
        break;
    }

    if (target is WidgetExp) {
      final prop = target.getProperty(property.value!);
      if (prop != null) {
        return prop;
      }
    }

    return ValueExp.empty(retry: retry);
  }

  static Future<Expression> item(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
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
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final variable = await params.getAndEval(ctx, 0);
    final value = await params.getAndEval(ctx, 1);

    if (variable is ValueExp) {
      if (value.isNotEmpty) {
        await ctx.setVariable(variable.value, value);
      }
      return ctx.getVariable(variable.value);
    }
    return ValueExp.empty(retry: variable.retry);
  }

  static Future<Expression> concat(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    var result = '';
    if (left is ValueExp && right is ValueExp) {
      result = left.value + right.value;
    }
    return ValueExp(result, retry: left.retry || right.retry);
  }

  static Future<Expression> length(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final value = await params.getAndEval(ctx, 0);
    if (value is ValueExp) {
      return ValueExp(value.value.length, retry: value.retry);
    } else if (value is ListExp) {
      return ValueExp(value.list.length, retry: value.retry);
    } else {
      return ValueExp.empty(retry: value.retry);
    }
  }
}
