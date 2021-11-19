import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey_core/src/models/statement.dart';

import 'test_step.dart';

part 'debug_message.freezed.dart';
part 'debug_message.g.dart';

@Freezed(unionKey: 'type')
class DebugMessage with _$DebugMessage {
  const DebugMessage._();

  @FreezedUnionValue('device_status')
  const factory DebugMessage.deviceStatus({
    required String appName,
    required String appBuild,
    required bool overlayEnabled,
    required bool testRunning,
    required bool recording,
  }) = DeviceStatus;

  @FreezedUnionValue('start_test')
  const factory DebugMessage.startTest({
    required int runId,
    required List<Statement> statements,
    @ExpConverter() @Default({}) Map<String, Expression> variables,
  }) = StartTest;

  @FreezedUnionValue('test_step')
  const factory DebugMessage.testStep({
    required int runId,
    required TestStep step,
  }) = Step;

  @FreezedUnionValue('cancel_tests')
  const factory DebugMessage.cancelTests() = CancelTests;

  @FreezedUnionValue('toggle_overlay')
  const factory DebugMessage.toggleOverlay() = ToggleOverlay;

  @FreezedUnionValue('toggle_recording')
  const factory DebugMessage.toggleRecording() = ToggleRecording;

  @FreezedUnionValue('recoreded_statement')
  const factory DebugMessage.recordedStatement({
    required String statement,
  }) = RecordedStatement;

  @FreezedUnionValue('reset_app')
  const factory DebugMessage.resetApp() = ResetApp;

  factory DebugMessage.fromJson(Map<String, dynamic> json) =>
      _$DebugMessageFromJson(json);
}
