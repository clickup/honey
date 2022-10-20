import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/widget_not_found_error.dart';

abstract class ActionFunctions {
  static Future<Expression> click(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final type = await params.getAndEval(ctx, 0);
    final target = await params.getAndEval(ctx, 1);
    final offsetExp = await params.getAndEval(ctx, 2);

    final targetWidget = target.asWidget;

    Offset? offset;
    if (offsetExp is ValueExp && offsetExp.isNotEmpty) {
      offset = offsetExp.asOffset;
    }

    if (targetWidget == null && offset == null) {
      throw WidgetNotFoundError('some widget');
    } else {
      await ctx.click(widget: targetWidget, offset: offset);
      return const ValueExp.empty();
    }
  }

  static Future<Expression> verify(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final expression = await params.getAndEval(ctx, 0);

    if (expression.asBool) {
      return const ValueExp.empty();
    } else {
      throw HoneyError('verification failed', expression.retry);
    }
  }

  static Future<Expression> enter(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
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
    return const ValueExp.empty();
  }

  static Future<Expression> wait(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final duration = await params.getAndEval(ctx, 0);
    await ctx.delay(Duration(milliseconds: duration.asNum.toInt()));
    return const ValueExp.empty();
  }

  static Future<Expression> print(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final value = await params.getAndEval(ctx, 0);
    final message = value.value ?? '';
    ctx.message = message;
    return const ValueExp.empty();
  }

  static Future<Expression> swipe(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final type = await params.getAndEval(ctx, 0);
    final target = await params.getAndEval(ctx, 1);
    final offsetExp = await params.getAndEval(ctx, 2);
    final pixelsExp = await params.getAndEval(ctx, 3);

    final targetWidget = target.asWidget;
    Offset? offset;
    if (offsetExp is ValueExp && offsetExp.isNotEmpty) {
      offset = offsetExp.asOffset;
    }

    var pixels = 0.0;
    if (pixelsExp is ValueExp && pixelsExp.isNotEmpty) {
      pixels = pixelsExp.asDouble;
    }

    await ctx.swipe(
      widget: targetWidget,
      offset: offset,
      direction:
          type.value != null ? Direction.fromName(type.value!) : Direction.left,
      distance: pixels,
    );
    return const ValueExp.empty();
  }
}
