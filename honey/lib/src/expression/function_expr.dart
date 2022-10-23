import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:honey/src/expression/expr.dart';

@immutable
class FunctionExpr implements Expr {
  const FunctionExpr(this.function, this.params);

  final F function;

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

enum F {
  // actions
  click,
  verify,
  enter,
  wait,
  swipe,
  print,
  error,

  // core
  and,
  or,
  not,
  controlIf,
  controlWhile,
  widgets,
  property,
  length,
  variable,
  function,

  // date
  now,
  format,

  // math
  equal,
  greater,
  less,
  plus,
  minus,
  multiply,
  divide,
  pow,

  // string
  startsWith,
  endsWith,
  contains,
  matches,
  concat;
}
