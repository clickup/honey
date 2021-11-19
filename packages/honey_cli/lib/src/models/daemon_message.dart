import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honey_core/honey_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daemon_message.g.dart';
part 'daemon_message.freezed.dart';

@Freezed(unionKey: 'type')
class DaemonMessage with _$DaemonMessage {
  const DaemonMessage._();

  @FreezedUnionValue('devices')
  const factory DaemonMessage.devices({
    required List<DaemonDevice> devices,
  }) = DaemonDevices;

  @FreezedUnionValue('message')
  const factory DaemonMessage.message({
    required String deviceId,
    required DebugMessage message,
  }) = DaemonDeviceMessage;

  @FreezedUnionValue('compile')
  const factory DaemonMessage.compile({
    required int requestId,
    required List<String> sources,
  }) = DaemonCompile;

  @FreezedUnionValue('compile_result')
  const factory DaemonMessage.compileResult({
    required int requestId,
    required List<CompiledHoneyTalk> results,
  }) = DaemonCompileResult;

  @FreezedUnionValue('error')
  const factory DaemonMessage.error({
    required String error,
  }) = DaemonError;

  factory DaemonMessage.fromJson(Map<String, dynamic> json) =>
      _$DaemonMessageFromJson(json);
}

@freezed
class DaemonDevice with _$DaemonDevice {
  const factory DaemonDevice({
    required String id,
    required String name,
    required String platform,
  }) = _DaemonDevice;

  factory DaemonDevice.fromJson(Map<String, dynamic> json) =>
      _$DaemonDeviceFromJson(json);
}

@freezed
class CompiledHoneyTalk with _$CompiledHoneyTalk {
  const factory CompiledHoneyTalk({
    List<Statement>? statements,
    String? error,
    int? errorLine,
    int? errorColumn,
  }) = _CompiledHoneyTalk;

  factory CompiledHoneyTalk.fromJson(Map<String, dynamic> json) =>
      _$CompiledHoneyTalkFromJson(json);
}
