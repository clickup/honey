import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:honey/src/consts/function.dart';
import 'package:honey/src/expression/expr.dart';

/// Function expressions are the only expressions that can contain logic. You
/// can either use built-in functions or create your own.
@immutable
class FunctionExpr implements Expr {
  /// Create a new built-in function expression.
  FunctionExpr(F function, this.params) : function = function.name;

  /// Create a new custom function expression.
  const FunctionExpr.custom(this.function, this.params);

  /// The name of the function.
  final String function;

  /// The parameters to the function.
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

/// Shortcut for creating a [FunctionExpr].
FunctionExpr func(F function, Map<String, Expr> params) =>
    FunctionExpr(function, params);
