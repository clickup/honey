import 'dart:math' as math;

import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

abstract class MathFunctions {
  static Future<EvaluatedExpr> equal(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    var result = false;
    if (left is ValueExpr && right is ValueExpr) {
      result = left.compareTo(right) == 0;
    }
    return val(result, retry: left.retry || right.retry);
  }

  static Future<EvaluatedExpr> greater(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    var result = false;
    if (left is ValueExpr && right is ValueExpr) {
      result = left.compareTo(right) == 1;
    }
    return val(result, retry: left.retry || right.retry);
  }

  static Future<EvaluatedExpr> less(
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

  static EvaluatedExpr _arithmeticOp(
    EvaluatedExpr left,
    EvaluatedExpr right,
    num Function(num, num) operation,
  ) {
    if (left is ValueExpr && right is ValueExpr) {
      final result = operation(left.asNum, right.asNum);
      if (left.isDate && right.isDate) {
        return val(
          DateTime.fromMillisecondsSinceEpoch(result.toInt()),
          retry: left.retry || right.retry,
        );
      } else {
        return val(
          left.asNum + right.asNum,
          retry: left.retry || right.retry,
        );
      }
    } else {
      return empty(retry: left.retry || right.retry);
    }
  }

  static Future<EvaluatedExpr> plus(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    return _arithmeticOp(left, right, (l, r) => l + r);
  }

  static Future<EvaluatedExpr> minus(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    return _arithmeticOp(left, right, (l, r) => l - r);
  }

  static Future<EvaluatedExpr> multiply(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    return _arithmeticOp(left, right, (l, r) => l * r);
  }

  static Future<EvaluatedExpr> divide(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    return _arithmeticOp(left, right, (l, r) => l / r);
  }

  static Future<EvaluatedExpr> pow(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final left = await ctx.eval(params[pLeft]);
    final right = await ctx.eval(params[pRight]);
    return _arithmeticOp(left, right, math.pow);
  }
}
