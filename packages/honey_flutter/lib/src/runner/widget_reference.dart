import 'dart:ui';

import 'package:honey_core/honey_core.dart';
import '../utils/expression_extension.dart';

import 'context/honey_context.dart';

class WidgetReference {
  final Expression widgetExp;
  final bool parent;
  final Offset topLeft;
  final Offset bottomRight;

  WidgetReference({
    required this.widgetExp,
    required this.parent,
    required this.topLeft,
    required this.bottomRight,
  });

  static Future<WidgetReference?> fromExpression(
      HoneyContext ctx, Expression e) async {
    if (e is ListExp && e.list.length == 6) {
      final widgetExp = e.list[0];
      final parent = await ctx.eval(e.list[1]);
      final topLeft = await ctx.eval(e.list[2]);
      final bottomRight = await ctx.eval(e.list[3]);

      if (parent is ValueExp &&
          topLeft is ValueExp &&
          bottomRight is ValueExp) {
        return WidgetReference(
          widgetExp: widgetExp,
          parent: parent.asBool,
          topLeft: topLeft.asOffset,
          bottomRight: bottomRight.asOffset,
        );
      }
    }
  }
}
