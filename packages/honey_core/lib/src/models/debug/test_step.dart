import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honey_core/honey_core.dart';

part 'test_step.freezed.dart';
part 'test_step.g.dart';

@freezed
class TestStep with _$TestStep {
  const TestStep._();

  @JsonSerializable()
  const factory TestStep({
    required int time,
    required int index,
    required String step,
    @Default('') String message,
    @Default(false) bool error,
    @ExpConverter() required Map<String, Expression> variables,
  }) = _TestStep;

  factory TestStep.fromJson(Map<String, dynamic> json) =>
      _$TestStepFromJson(json);
}
