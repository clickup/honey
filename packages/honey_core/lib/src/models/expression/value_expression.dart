part of 'expression.dart';

@freezed
class ValueExp extends Expression with _$ValueExp implements Comparable {
  const ValueExp._();

  @JsonSerializable(explicitToJson: true)
  const factory ValueExp.str(
    String value, {
    String? regexFlags,
    @Default(false) @JsonKey(ignore: true, defaultValue: false) bool retry,
  }) = _ValueExp;

  factory ValueExp(
    dynamic value, {
    bool retry = false,
  }) {
    String strValue;
    if (value is DateTime) {
      strValue = value.toIso8601String();
    } else {
      strValue = '$value';
    }
    return ValueExp.str(strValue, retry: retry);
  }

  factory ValueExp.empty({bool retry = false}) =>
      ValueExp.str('', retry: retry);

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
    if (other is ValueExp) {
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
}
