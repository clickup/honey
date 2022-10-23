import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:intl/intl.dart';

abstract class DateFunctions {
  static Future<EvaluatedExpr> format(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final dateExpr = await ctx.eval(params[pValue]);
    final sourceFormat = await ctx.eval(params[pInput]);
    final targetFormat = await ctx.eval(params[pOutput]);

    if (dateExpr is! ValueExpr) {
      return ValueExpr.empty(retry: dateExpr.retry);
    }

    DateTime date;
    if (sourceFormat is ValueExpr && !sourceFormat.isEmpty) {
      date = DateFormat(sourceFormat.value).parse(dateExpr.value);
    } else {
      date = DateTime.parse(dateExpr.value);
    }

    String formattedDate;
    if (targetFormat is ValueExpr && !targetFormat.isEmpty) {
      formattedDate = DateFormat(targetFormat.value).format(date);
    } else {
      formattedDate = date.toIso8601String();
    }

    return val(
      formattedDate,
      retry: dateExpr.retry || sourceFormat.retry || targetFormat.retry,
    );
  }

  static Future<EvaluatedExpr> now(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    return val(DateTime.now());
  }
}
