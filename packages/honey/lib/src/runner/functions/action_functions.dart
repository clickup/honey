import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/widget_not_found_error.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey/src/utils/expression_extension.dart';

abstract class ActionFunctions {
  static const functions = {
    'click': click,
    'verify': verify,
    'enter': enter,
    'restart': restartApp,
    'reset': resetApp,
    'wait': wait,
    'print': print,
  };

  static Future<Expression> click(
      HoneyContext ctx, FunctionParams params) async {
    final type = await params.getAndEval(ctx, 0);
    final target = await params.getAndEval(ctx, 1);
    final offsetExp = await params.getAndEval(ctx, 2);

    final targetWidget = target.widgetExp;

    Offset? offset;
    if (offsetExp is ValueExp && offsetExp.isNotEmpty) {
      offset = offsetExp.asOffset;
    }

    if (targetWidget == null && offset == null) {
      throw WidgetNotFoundError('some widget');
    } else {
      await ctx.click(widget: targetWidget, offset: offset);
      return ValueExp.empty();
    }
  }

  static Future<Expression> verify(
      HoneyContext ctx, FunctionParams params) async {
    final expression = await params.getAndEval(ctx, 0);

    if (expression.asBool) {
      return ValueExp.empty();
    } else {
      throw HoneyError('verification failed', expression.retry);
    }
  }

  static Future<Expression> enter(
      HoneyContext ctx, FunctionParams params) async {
    final value = await params.getAndEval(ctx, 0);

    if (value is ValueExp) {
      if (ctx.fakeTextInput.hasClient) {
        ctx.fakeTextInput.enterText(value.value);
      } else {
        throw HoneyError('no text field focused', false);
      }
    } else {
      throw HoneyError('no string value given', value.retry);
    }
    return ValueExp.empty();
  }

  static Future<Expression> restartApp(
      HoneyContext ctx, FunctionParams _) async {
    await ctx.restartApp();
    return ValueExp.empty();
  }

  static Future<Expression> resetApp(HoneyContext ctx, FunctionParams _) async {
    await ctx.restartApp(reset: true);
    return ValueExp.empty();
  }

  static Future<Expression> wait(
      HoneyContext ctx, FunctionParams params) async {
    final duration = await params.getAndEval(ctx, 0);
    await ctx.delay(Duration(milliseconds: duration.asNum.toInt()));
    return ValueExp.empty();
  }

  static Future<Expression> print(
      HoneyContext ctx, FunctionParams params) async {
    final value = await params.getAndEval(ctx, 0);
    final message = value.value ?? '';
    ctx.message = message;
    return ValueExp.empty();
  }
}
