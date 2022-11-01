import 'dart:ui';

import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/errors/widget_not_found_error.dart';

Future<EvaluatedExpr> click(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final type = await ctx.eval(params[pType]);
  final clickType = type is ValueExpr ? ClickType.fromName(type.value) : null;
  final target = await ctx.eval(params[pTarget]);
  final offsetExp = await ctx.eval(params[pOffset]);

  final targetWidget = target.widgetExpr;
  if (params.containsKey(pTarget) && targetWidget == null) {
    throw WidgetNotFoundError('widget to tap on');
  }

  Offset? offset;
  if (offsetExp is ValueExpr && !offsetExp.isEmpty) {
    offset = offsetExp.asOffset;
  }

  await ctx.click(
    widget: targetWidget,
    offset: offset,
    type: clickType ?? ClickType.single,
  );
  return eList([
    type,
    target,
    offsetExp,
  ]);
}
