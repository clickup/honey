import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/widget_not_found_error.dart';

abstract class ActionFunctions {
  static Future<EvaluatedExpr> click(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final type = await ctx.eval(params[pType]);
    final clickType = type is ValueExpr ? ClickType.fromName(type.value) : null;
    final target = await ctx.eval(params[pTarget]);
    final offsetExp = await ctx.eval(params[pOffset]);

    final targetWidget = target.widgetExpr;

    Offset? offset;
    if (offsetExp is ValueExpr && !offsetExp.isEmpty) {
      offset = offsetExp.asOffset;
    }

    if (targetWidget == null && offset == null) {
      throw WidgetNotFoundError('some widget');
    } else {
      await ctx.click(
        widget: targetWidget,
        offset: offset,
        type: clickType ?? ClickType.single,
      );
      return empty();
    }
  }

  static Future<EvaluatedExpr> verify(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final expression = await ctx.eval(params[pValue]);

    if (expression is ValueExpr && expression.asBool) {
      return empty();
    } else {
      throw HoneyError('verification failed', expression.retry);
    }
  }

  static Future<EvaluatedExpr> enter(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final value = await ctx.eval(params[pValue]);
    final textInput = HoneyWidgetsBinding.instance.testTextInput;
    if (value is ValueExpr) {
      if (textInput.hasAnyClients) {
        textInput.enterText(value.value);
        return empty();
      } else {
        throw HoneyError('no text field focused', false);
      }
    } else {
      throw HoneyError('no string value given', value.retry);
    }
  }

  static Future<EvaluatedExpr> wait(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final duration = await ctx.eval(params[pValue]);
    if (duration is ValueExpr) {
      await ctx.delay(Duration(milliseconds: duration.asNum.toInt()));
    }
    return empty();
  }

  static Future<EvaluatedExpr> print(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final value = await ctx.eval(params[pValue]);
    ctx.message = value.toDisplayString();
    return empty();
  }

  static Future<EvaluatedExpr> swipe(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final type = await ctx.eval(params[pType]);
    final direction = type is ValueExpr ? Direction.fromName(type.value) : null;
    final target = await ctx.eval(params[pTarget]);
    final offsetExp = await ctx.eval(params[pOffset]);
    final pixelsExp = await ctx.eval(params[pValue]);

    final targetWidget = target.widgetExpr;
    Offset? offset;
    if (offsetExp is ValueExpr && !offsetExp.isEmpty) {
      offset = offsetExp.asOffset;
    }

    var pixels = 0.0;
    if (pixelsExp is ValueExpr) {
      pixels = pixelsExp.asNum.toDouble();
    }

    await ctx.swipe(
      widget: targetWidget,
      offset: offset,
      direction: direction ?? Direction.left,
      distance: pixels,
    );
    return empty();
  }
}
