import 'package:honey/src/models/expression/expression.dart';

part 'daemon_message.g.dart';
part 'daemon_message.freezed.dart';

@Freezed(unionKey: 'type')
class DaemonMessage with _$DaemonMessage {
  @FreezedUnionValue('devices')
  const factory DaemonMessage.devices({
    required List<DaemonDevice> devices,
  }) = DaemonDevices;

  @FreezedUnionValue('message')
  const factory DaemonMessage.message({
    required String deviceId,
    required DebugMessage message,
  }) = DaemonDeviceMessage;

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
