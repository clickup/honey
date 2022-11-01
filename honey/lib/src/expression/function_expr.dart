import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:honey/src/consts/function.dart';
import 'package:honey/src/expression/expr.dart';

@immutable
class FunctionExpr implements Expr {
  FunctionExpr(F function, this.params) : function = function.name;

  const FunctionExpr.custom(this.function, this.params);

  final String function;

  final Map<String, Expr> params;

  @override
  bool operator ==(Object other) =>
      other is FunctionExpr &&
      function == other.function &&
      const MapEquality<String, Expr>().equals(params, other.params);

  @override
  int get hashCode =>
      Object.hashAll([function, ...params.keys, ...params.values]);

  @override
  String toString() => 'FunctionExp(function: $function, params: $params)';
}

FunctionExpr func(F function, Map<String, Expr> params) =>
    FunctionExpr(function, params);
