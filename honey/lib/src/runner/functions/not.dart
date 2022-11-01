import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> not(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final exp = await ctx.eval(params[pValue]);
  if (exp is ValueExpr) {
    return val(!exp.asBool, retry: exp.retry);
  } else {
    return empty(retry: exp.retry);
  }
}
