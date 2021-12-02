// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daemon_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaemonDevices _$$DaemonDevicesFromJson(Map<String, dynamic> json) =>
    _$DaemonDevices(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => DaemonDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DaemonDevicesToJson(_$DaemonDevices instance) =>
    <String, dynamic>{
      'devices': instance.devices,
    };

_$DaemonDeviceMessage _$$DaemonDeviceMessageFromJson(
        Map<String, dynamic> json) =>
    _$DaemonDeviceMessage(
      deviceId: json['deviceId'] as String,
      message: DebugMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DaemonDeviceMessageToJson(
        _$DaemonDeviceMessage instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'message': instance.message,
    };

_$DaemonCompile _$$DaemonCompileFromJson(Map<String, dynamic> json) =>
    _$DaemonCompile(
      requestId: json['requestId'] as int,
      sources:
          (json['sources'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DaemonCompileToJson(_$DaemonCompile instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'sources': instance.sources,
    };

_$DaemonCompileResult _$$DaemonCompileResultFromJson(
        Map<String, dynamic> json) =>
    _$DaemonCompileResult(
      requestId: json['requestId'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => CompiledHoneyTalk.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DaemonCompileResultToJson(
        _$DaemonCompileResult instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'results': instance.results,
    };

_$DaemonError _$$DaemonErrorFromJson(Map<String, dynamic> json) =>
    _$DaemonError(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$DaemonErrorToJson(_$DaemonError instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_DaemonDevice _$$_DaemonDeviceFromJson(Map<String, dynamic> json) =>
    _$_DaemonDevice(
      id: json['id'] as String,
      name: json['name'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$_DaemonDeviceToJson(_$_DaemonDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'platform': instance.platform,
    };

_$_CompiledHoneyTalk _$$_CompiledHoneyTalkFromJson(Map<String, dynamic> json) =>
    _$_CompiledHoneyTalk(
      statements: (json['statements'] as List<dynamic>?)
          ?.map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
      errorLine: json['errorLine'] as int?,
      errorColumn: json['errorColumn'] as int?,
    );

Map<String, dynamic> _$$_CompiledHoneyTalkToJson(
        _$_CompiledHoneyTalk instance) =>
    <String, dynamic>{
      'statements': instance.statements,
      'error': instance.error,
      'errorLine': instance.errorLine,
      'errorColumn': instance.errorColumn,
    };
