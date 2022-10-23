// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/widget_expr.dart';

@immutable
abstract class Expr {}

@immutable
abstract class EvaluatedExpr implements Expr {
  bool get retry;

  EvaluatedExpr withRetry(bool retry);

  EvaluatedExpr property(String name);

  String toDisplayString();

  WidgetExpr? get widgetExpr {
    if (this is WidgetExpr) {
      return this as WidgetExpr;
    } else if (this is EvaluatedListExpr) {
      return (this as EvaluatedListExpr)[0].widgetExpr;
    } else {
      return null;
    }
  }
}
