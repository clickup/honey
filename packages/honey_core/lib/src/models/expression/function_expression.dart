part of 'expression.dart';

@freezed
class FunctionExp extends Expression with _$FunctionExp {
  const FunctionExp._();

  @JsonSerializable(explicitToJson: true)
  const factory FunctionExp(
    String name,
    @ExpConverter() List<Expression> params, {
    @Default(false) @JsonKey(ignore: true, defaultValue: false) bool retry,
  }) = _FunctionExp;
}
