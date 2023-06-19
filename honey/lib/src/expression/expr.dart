// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/expression/widget_expr.dart';

/// Superclass of all Honey expressions
@immutable
abstract class Expr {}

/// A honey expression that has been evaluated to either a value, list or
/// widget.
@immutable
abstract mixin class EvaluatedExpr implements Expr {
  /// Should this expression be re-evaluated if something goes wrong?
  bool get retry;

  /// Copy this expression with the given [retry] value.
  EvaluatedExpr withRetry(bool retry);

  /// Get the [name] property of this expression.
  EvaluatedExpr property(String name);

  /// Generate a display string for this expression.
  String toDisplayString();

  /// Try to turn this expression into a [WidgetExpr].
  WidgetExpr? get widgetExpr {
    if (this is WidgetExpr) {
      return this as WidgetExpr;
    } else if (this is EvaluatedListExpr) {
      return (this as EvaluatedListExpr)[0].widgetExpr;
    } else {
      return null;
    }
  }

  /// Try to turn this expression into a [num].
  num get asNum => this is ValueExpr ? (this as ValueExpr).asNum : 0;
}
