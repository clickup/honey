import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> property(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final property = await ctx.eval(params[pName]);
  final target = await ctx.eval(params[pValue]);
  final retry = property.retry || target.retry;
  if (property is ValueExpr) {
    final value = target.property(property.value);
    return value.withRetry(value.retry || retry);
  } else {
    return empty(retry: retry);
  }
}
