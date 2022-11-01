import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/errors/widget_not_found_error.dart';

Future<EvaluatedExpr> swipe(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final type = await ctx.eval(params[pType]);
  final direction = type is ValueExpr ? Direction.fromName(type.value) : null;
  final target = await ctx.eval(params[pTarget]);
  final offsetExp = await ctx.eval(params[pOffset]);
  final pixelsExp = await ctx.eval(params[pValue]);

  final targetWidget = target.widgetExpr;
  if (params.containsKey(pTarget) && targetWidget == null) {
    throw WidgetNotFoundError('widget to swipe on');
  }

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
  return EvaluatedListExpr([
    type,
    target,
    offsetExp,
    pixelsExp,
  ]);
}
