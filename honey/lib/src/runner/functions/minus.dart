import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> minus(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final left = await ctx.eval(params[pLeft]);
  final right = await ctx.eval(params[pRight]);
  if (left is ValueExpr && right is ValueExpr) {
    return val(
      left.asNum - right.asNum,
      retry: left.retry || right.retry,
    );
  } else {
    return empty(retry: left.retry || right.retry);
  }
}
