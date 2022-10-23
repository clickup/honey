import 'package:flutter/widgets.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/expr.dart';

@immutable
class ValueExpr with EvaluatedExpr implements Comparable<Expr> {
  ValueExpr(
    dynamic value, {
    this.retry = false,
  })  : value = value is DateTime ? value.toIso8601String() : '$value',
        regexFlags = null;

  const ValueExpr.str(
    this.value, {
    this.regexFlags,
    this.retry = false,
  });

  const ValueExpr.empty({this.retry = false})
      : value = '',
        regexFlags = null;

  final String value;

  final String? regexFlags;

  @override
  final bool retry;

  @override
  ValueExpr withRetry(bool retry) =>
      ValueExpr.str(value, regexFlags: regexFlags, retry: retry);

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

  bool get isEmpty => value.isEmpty;

  bool get isBool {
    return value == 'true' || value == 'false';
  }

  bool get asBool {
    return value == 'true' || asNum > 0;
  }

  bool get isNum => num.tryParse(value) != null;

  num get asNum {
    if (isBool) {
      return value == 'true' ? 1 : 0;
    } else if (isDate) {
      return asDate.millisecondsSinceEpoch;
    } else {
      return num.tryParse(value) ?? 0;
    }
  }

  bool get isDate => DateTime.tryParse(value) != null;

  DateTime get asDate =>
      DateTime.tryParse(value) ?? DateTime.fromMillisecondsSinceEpoch(0);

  Offset get asOffset {
    final parts = value.split(',');
    if (parts.length < 2) {
      return Offset.zero;
    }
    final x = ValueExpr(parts[0]).asNum;
    final y = ValueExpr(parts[1]).asNum;
    return Offset(x.toDouble(), y.toDouble());
  }

  bool get isRegExp => regexFlags != null;

  RegExp get asRegExp {
    final multiline = regexFlags?.contains('m') ?? false;
    final caseInsensitive = regexFlags?.contains('i') ?? false;
    final unicode = regexFlags?.contains('u') ?? false;
    final dotAll = regexFlags?.contains('s') ?? false;
    return RegExp(
      value,
      multiLine: multiline,
      caseSensitive: caseInsensitive,
      unicode: unicode,
      dotAll: dotAll,
    );
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
  bool operator ==(Object other) =>
      other is ValueExpr &&
      value == other.value &&
      regexFlags == other.regexFlags;

  @override
  int get hashCode => Object.hash(value, regexFlags);

  @override
  String toString() {
    return 'ValueExp{value: $value, regexFlags: $regexFlags}';
  }
}

ValueExpr val(dynamic value, {bool retry = false}) =>
    ValueExpr(value, retry: retry);

ValueExpr str(String value, {String? regexFlags, bool retry = false}) =>
    ValueExpr.str(value, regexFlags: regexFlags, retry: retry);

ValueExpr empty({bool retry = false}) => ValueExpr.empty(retry: retry);
