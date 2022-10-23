import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';

@immutable
class ListExpr implements Expr {
  const ListExpr(List<Expr> list) : _list = list;

  final List<Expr> _list;

  Expr operator [](int index) {
    if (_list.length > index) {
      return _list[index];
    } else {
      return empty();
    }
  }

  int get length => _list.length;

  @override
  bool operator ==(Object other) =>
      other is ListExpr &&
      const ListEquality<Expr>().equals(_list, other._list);

  @override
  int get hashCode => Object.hashAll(_list);

  @override
  String toString() => 'ListExpr(list: $_list)';
}

ListExpr list(List<Expr> list) => ListExpr(list);

@immutable
class EvaluatedListExpr extends ListExpr with EvaluatedExpr {
  // ignore: use_super_parameters
  const EvaluatedListExpr(List<EvaluatedExpr> list, {this.retry = false})
      : super(list);

  @override
  final bool retry;

  @override
  List<EvaluatedExpr> get _list => super._list as List<EvaluatedExpr>;

  @override
  EvaluatedListExpr withRetry(bool retry) =>
      EvaluatedListExpr(_list, retry: retry);

  @override
  EvaluatedExpr property(String name) {
    if (int.tryParse(name) != null) {
      return this[int.parse(name)];
    } else {
      final property = Property.fromName(name);
      switch (property) {
        case Property.length:
          return val(_list.length, retry: retry);
        // ignore: no_default_cases
        default:
          return this[0].property(name);
      }
    }
  }

  @override
  EvaluatedExpr operator [](int index) =>
      (super[index] as EvaluatedExpr).withRetry(retry);

  @override
  String toDisplayString() {
    final buffer = StringBuffer('[');
    for (var i = 0; i < _list.length; i++) {
      buffer.write(_list[i].toDisplayString());
      if (i < _list.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.write(']');
    return buffer.toString();
  }
}

EvaluatedListExpr eList(List<EvaluatedExpr> list, {bool retry = false}) =>
    EvaluatedListExpr(list, retry: retry);
