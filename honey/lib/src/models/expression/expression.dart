import 'dart:ui';

part 'function_expression.dart';
part 'list_expression.dart';
part 'value_expression.dart';

abstract class Expression {
  const Expression({required this.retry});

  final bool retry;

  String? get value => this is ValueExp ? (this as ValueExp).value : null;

  bool get isEmpty => value?.isEmpty ?? false;

  bool get isNotEmpty => value?.isNotEmpty ?? false;

  bool get isBool {
    return value == 'true' || value == 'false';
  }

  bool get asBool {
    return value == 'true' || asNum > 0;
  }

  bool get isNum {
    if (value != null) {
      return num.tryParse(value!) != null;
    } else {
      return false;
    }
  }

  num get asNum {
    if (isBool) {
      return value == 'true' ? 1 : 0;
    } else if (isDate) {
      return asDate.millisecondsSinceEpoch;
    } else {
      return (value != null ? num.tryParse(value!) : null) ?? 0;
    }
  }

  String get asString {
    return value ?? '';
  }

  bool get isDate {
    if (value != null) {
      return DateTime.tryParse(value!) != null;
    } else {
      return false;
    }
  }

  DateTime get asDate {
    DateTime? result;
    if (value != null) {
      result = DateTime.tryParse(value!);
    }
    return result ?? DateTime.fromMillisecondsSinceEpoch(0);
  }

  Offset get asOffset {
    final parts = value?.split(',') ?? [];
    if (parts.length < 2) {
      return Offset.zero;
    }
    final x = ValueExp(parts[0]).asNum;
    final y = ValueExp(parts[1]).asNum;
    return Offset(x.toDouble(), y.toDouble());
  }

  double get asDouble {
    return asNum.toDouble();
  }

  // ignore: avoid_positional_boolean_parameters
  Expression withRetry(bool retry) {
    final exp = this;
    if (exp is ValueExp) {
      return ValueExp(exp.value, retry: retry);
    } else if (exp is ListExp) {
      return ListExp(exp.list, retry: retry);
    } else if (exp is FunctionExp) {
      return FunctionExp(exp.function, exp.params, retry: retry);
    } else {
      throw UnimplementedError('Unknown expression type');
    }
  }
}
