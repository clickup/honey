import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> variable(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final variable = await ctx.eval(params[pName]);
  final value =
      params.containsKey(pValue) ? await ctx.eval(params[pValue]) : null;

  if (variable is ValueExpr) {
    if (value != null) {
      ctx.setVariable(variable.value, value);
    }
    final variableValue = ctx.getVariable(variable.value);
    return variableValue.withRetry(variableValue.retry || variable.retry);
  }
  return empty(retry: variable.retry);
}
