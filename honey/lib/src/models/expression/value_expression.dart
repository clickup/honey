part of 'expression.dart';

@immutable
class ValueExp extends Expression implements Comparable<Expression> {
  ValueExp(
    dynamic value, {
    super.retry = false,
  })  : value = value is DateTime ? value.toIso8601String() : '$value',
        regexFlags = null;

  const ValueExp.str(
    this.value, {
    this.regexFlags,
    super.retry = false,
  });

  const ValueExp.empty({super.retry = false})
      : value = '',
        regexFlags = null;

  @override
  final String value;

  final String? regexFlags;

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

  @override
  bool operator ==(Object other) =>
      other is ValueExp &&
      value == other.value &&
      regexFlags == other.regexFlags;

  @override
  int get hashCode => Object.hash(value, regexFlags);

  @override
  String toString() {
    return 'ValueExp{value: $value, regexFlags: $regexFlags}';
  }
}
