import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> multiply(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final left = await ctx.eval(params[pLeft]);
  final right = await ctx.eval(params[pRight]);
  if (left is ValueExpr && right is ValueExpr) {
    if (left.isNum && right.isNum) {
      return val(
        left.asNum * right.asNum,
        retry: left.retry || right.retry,
      );
    } else if (left.isNum) {
      return val(
        right.value * left.asNum.toInt(),
        retry: left.retry || right.retry,
      );
    } else if (right.isNum) {
      return val(
        left.value * right.asNum.toInt(),
        retry: left.retry || right.retry,
      );
    }
  }
  return empty(retry: left.retry || right.retry);
}
