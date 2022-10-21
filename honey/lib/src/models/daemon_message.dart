import 'package:honey/src/models/honey_message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daemon_message.g.dart';

abstract class DaemonMessage {
  const DaemonMessage();

  factory DaemonMessage.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'devices':
        return DaemonDevices.fromJson(json);
      case 'message':
        return DaemonMessage.fromJson(json);
      default:
        throw Exception('Unknown message type');
    }
  }
}

@JsonSerializable()
class DaemonDevices extends DaemonMessage {
  const DaemonDevices(this.devices);

  factory DaemonDevices.fromJson(Map<String, dynamic> json) =>
      _$DaemonDevicesFromJson(json);

  final List<DaemonDevice> devices;

  Map<String, dynamic> toJson() => {
        'type': 'devices',
        ..._$DaemonDevicesToJson(this),
      };
}

@JsonSerializable()
class DaemonDevice {
  const DaemonDevice({
    required this.id,
    required this.name,
    required this.platform,
  });

  factory DaemonDevice.fromJson(Map<String, dynamic> json) =>
      _$DaemonDeviceFromJson(json);

  final String id;
  final String name;
  final String platform;

  Map<String, dynamic> toJson() => _$DaemonDeviceToJson(this);
}

@JsonSerializable()
class DaemonDeviceMessage extends DaemonMessage {
  const DaemonDeviceMessage({
    required this.deviceId,
    required this.message,
  });

  factory DaemonDeviceMessage.fromJson(Map<String, dynamic> json) =>
      _$DaemonDeviceMessageFromJson(json);

  final String deviceId;
  final HoneyMessage message;

  Map<String, dynamic> toJson() => {
        'type': 'message',
        ..._$DaemonDeviceMessageToJson(this),
      };
}
