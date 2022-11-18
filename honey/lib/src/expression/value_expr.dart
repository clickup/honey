import 'package:flutter/widgets.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/expr.dart';

/// A value expression. Honey only knows a single type of value: [String]. It
/// converts it to the appropriate type when needed.
@immutable
class ValueExpr with EvaluatedExpr implements Comparable<Expr> {
  /// Create a value expression from the given [value].
  ///
  /// [String], [num], [bool], [DateTime] and [Offset] are supported.
  ValueExpr(
    dynamic value, {
    this.retry = false,
  })  : assert(
          value is String ||
              value is num ||
              value is bool ||
              value is DateTime ||
              value is Offset,
          'Invalid value type.',
        ),
        value = value is DateTime
            ? value.toIso8601String()
            : value is Offset
                ? '${value.dx},${value.dy}'
                : '$value';

  /// Creates an empty value expression.
  const ValueExpr.empty({this.retry = false}) : value = '';

  /// The value of this expression.
  final String value;

  @override
  final bool retry;

  @override
  ValueExpr withRetry(bool retry) => ValueExpr(value, retry: retry);

  @override
  EvaluatedExpr property(String name) {
    final property = Property.fromName(name);
    switch (property) {
      case Property.length:
        return ValueExpr(value.length);
      case Property.lines:
        return ValueExpr(value.split('\n').length);
      case Property.words:
        return ValueExpr(value.split(' ').length);
      // ignore: no_default_cases
      default:
        return ValueExpr.empty(retry: retry);
    }
  }

  /// Whether this value is empty.
  bool get isEmpty => value.isEmpty;

  /// Whether this value is a [bool].
  bool get isBool {
    return value == 'true' || value == 'false';
  }

  /// Convert this value to a [bool] or return `false` if it is not a [bool].
  bool get asBool {
    return value == 'true' || asNum > 0;
  }

  /// Whether this value is a [num].
  bool get isNum => num.tryParse(value) != null;

  /// Convert this value to a [num] or return `0` if it is not a [num].
  @override
  num get asNum {
    if (isBool) {
      return value == 'true' ? 1 : 0;
    } else if (isDate) {
      return asDate.millisecondsSinceEpoch;
    } else {
      return num.tryParse(value) ?? 0;
    }
  }

  /// Whether this value is a [DateTime].
  bool get isDate => DateTime.tryParse(value) != null;

  /// Convert this value to a [DateTime] or return
  /// `DateTime.fromMillisecondsSinceEpoch(0)` if it is not a [DateTime].
  DateTime get asDate =>
      DateTime.tryParse(value) ?? DateTime.fromMillisecondsSinceEpoch(0);

  /// Whether this value is an [Offset].
  bool get isOffset {
    final parts = value.split(',');
    return parts.length == 2 &&
        parts.every((part) => num.tryParse(part) != null);
  }

  /// Convert this value to an [Offset] or return `Offset.zero` if it is not an
  /// [Offset].
  Offset get asOffset {
    final parts = value.split(',');
    if (parts.length < 2) {
      return Offset.zero;
    }
    final x = ValueExpr(parts[0]).asNum;
    final y = ValueExpr(parts[1]).asNum;
    return Offset(x.toDouble(), y.toDouble());
  }

  @override
  int compareTo(dynamic other) {
    if (other is ValueExpr) {
      if ((isBool && other.isBool) ||
          (isNum && other.isNum) ||
          (isDate && other.isDate)) {
        return asNum.compareTo(other.asNum);
      } else {
        return value.compareTo(other.value);
      }
    }
    return -2;
  }

  @override
  String toDisplayString() {
    if (isBool) {
      return asBool ? 'true' : 'false';
    } else if (isNum) {
      return asNum.toString();
    } else if (isDate) {
      return asDate.toIso8601String();
    } else {
      return value;
    }
  }

  @override
  bool operator ==(Object other) => other is ValueExpr && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'ValueExp{value: $value}';
  }
}

/// Shortcut for creating a [ValueExpr] from the given [value].
ValueExpr val(dynamic value, {bool retry = false}) =>
    ValueExpr(value, retry: retry);

/// Shortcut for creating an empty [ValueExpr].
ValueExpr empty({bool retry = false}) => ValueExpr.empty(retry: retry);
