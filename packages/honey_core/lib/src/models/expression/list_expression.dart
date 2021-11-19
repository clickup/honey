part of 'expression.dart';

@freezed
class ListExp extends Expression with _$ListExp {
  const ListExp._();

  @JsonSerializable(explicitToJson: true)
  const factory ListExp(
    @ExpConverter() List<Expression> list, {
    @Default(false) @JsonKey(ignore: true, defaultValue: false) bool retry,
  }) = _ListExp;

  factory ListExp.empty(bool retry) {
    return ListExp([], retry: retry);
  }

  @override
  bool get isEmpty => list.isEmpty;

  @override
  bool get isNotEmpty => list.isNotEmpty;
}
