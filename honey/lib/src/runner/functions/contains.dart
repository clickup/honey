import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> contains(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  final input = await ctx.eval(params[pInput]);
  if (value is ValueExpr && input is ValueExpr) {
    return val(value.value.contains(input.value));
  }
  return empty();
}
