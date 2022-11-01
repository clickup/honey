import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> less(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final left = await ctx.eval(params[pLeft]);
  final right = await ctx.eval(params[pRight]);
  var result = false;
  if (left is ValueExpr && right is ValueExpr) {
    result = left.compareTo(right) == -1;
  }
  return val(result, retry: left.retry || right.retry);
}
