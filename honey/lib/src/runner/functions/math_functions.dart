import 'dart:math' as math;

import 'package:honey/honey.dart';
import 'package:honey/src/models/expression/expression.dart';

abstract class MathFunctions {
  static Future<Expression> equal(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    var result = false;
    if (left is ValueExp && right is ValueExp) {
      result = left.compareTo(right) == 0;
    }
    return ValueExp(result, retry: left.retry || right.retry);
  }

  static Future<Expression> greater(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    var result = false;
    if (left is ValueExp && right is ValueExp) {
      result = left.compareTo(right) == 1;
    }
    return ValueExp(result, retry: left.retry || right.retry);
  }

  static Future<Expression> less(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    var result = false;
    if (left is ValueExp && right is ValueExp) {
      result = left.compareTo(right) == -1;
    }
    return ValueExp(result, retry: left.retry || right.retry);
  }

  static Expression _arithmeticOp(
    Expression left,
    Expression right,
    num Function(num, num) operation,
  ) {
    if (left is ValueExp && right is ValueExp) {
      final result = operation(left.asNum, right.asNum);
      if (left.isDate && right.isDate) {
        return ValueExp(
          DateTime.fromMillisecondsSinceEpoch(result.toInt()),
          retry: left.retry || right.retry,
        );
      } else {
        return ValueExp(
          left.asNum + right.asNum,
          retry: left.retry || right.retry,
        );
      }
    } else {
      return ValueExp.empty(retry: left.retry || right.retry);
    }
  }

  static Future<Expression> plus(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    return _arithmeticOp(left, right, (l, r) => l + r);
  }

  static Future<Expression> minus(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    return _arithmeticOp(left, right, (l, r) => l - r);
  }

  static Future<Expression> multiply(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    return _arithmeticOp(left, right, (l, r) => l * r);
  }

  static Future<Expression> divide(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    return _arithmeticOp(left, right, (l, r) => l / r);
  }

  static Future<Expression> pow(HoneyContext ctx, FunctionParams params) async {
    final left = await params.getAndEval(ctx, 0);
    final right = await params.getAndEval(ctx, 1);
    return _arithmeticOp(left, right, math.pow);
  }
}
