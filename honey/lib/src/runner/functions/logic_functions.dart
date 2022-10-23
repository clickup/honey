import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

abstract class LogicFunctions {
  static Future<EvaluatedExpr> and(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    var result = false;
    if (left is ValueExpr && right is ValueExpr) {
      result = left.asBool && right.asBool;
    }
    return val(result, retry: left.retry || right.retry);
  }

  static Future<EvaluatedExpr> or(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    var result = false;
    if (left is ValueExpr && right is ValueExpr) {
      result = left.asBool || right.asBool;
    }
    return val(result, retry: left.retry || right.retry);
  }

  static Future<EvaluatedExpr> not(
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
}
