import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_expression.dart';
part 'list_expression.dart';
part 'value_expression.dart';
part 'expression.freezed.dart';
part 'expression.g.dart';

abstract class Expression {
  bool get retry;

  const Expression();

  T? cast<T extends Expression>() {
    if (this is T) {
      return this as T;
    }
  }

  String? get value => this is ValueExp ? (this as ValueExp).value : null;

  bool get isEmpty => value?.isEmpty ?? false;

  bool get isNotEmpty => value?.isNotEmpty ?? false;

  bool get isBool {
    return value == 'true' || value == 'false';
  }

  bool get isNum {
    if (value != null) {
      return num.tryParse(value!) != null;
    } else {
      return false;
    }
  }

  bool get asBool {
    return value == 'true' || asNum > 0;
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
}

class ExpConverter implements JsonConverter<Expression, Map<String, dynamic>> {
  const ExpConverter();

  @override
  Expression fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'function':
        return _$$_FunctionExpFromJson(json);
      case 'value':
        return _$$_ValueExpFromJson(json);
      case 'list':
        return _$$_ListExpFromJson(json);
    }
    throw StateError('Unsupported expression');
  }

  @override
  Map<String, dynamic> toJson(Expression object) {
    if (object is _$_FunctionExp) {
      return {'type': 'function', ..._$$_FunctionExpToJson(object)};
    } else if (object is _$_ValueExp) {
      return {'type': 'value', ..._$$_ValueExpToJson(object)};
    } else if (object is _$_ListExp) {
      return {'type': 'list', ..._$$_ListExpToJson(object)};
    }
    throw StateError('Unsupported expression');
  }
}

extension ExpressionNullExt on Expression? {
  Expression get nullable => this == null ? ValueExp.empty() : this!;
}
