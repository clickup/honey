import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> endsWith(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  final suffix = await ctx.eval(params[pInput]);
  if (value is ValueExpr && suffix is ValueExpr) {
    return val(value.value.endsWith(suffix.value));
  }
  return empty();
}
