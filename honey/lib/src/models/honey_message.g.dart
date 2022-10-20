// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'honey_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceStatus _$DeviceStatusFromJson(Map<String, dynamic> json) => DeviceStatus(
      appName: json['appName'] as String,
      appBuild: json['appBuild'] as String,
      status: $enumDecode(_$HoneyStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$DeviceStatusToJson(DeviceStatus instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'appBuild': instance.appBuild,
      'status': _$HoneyStatusEnumMap[instance.status]!,
    };

const _$HoneyStatusEnumMap = {
  HoneyStatus.overlay: 'overlay',
  HoneyStatus.test: 'test',
};

StartTestCommand _$StartTestCommandFromJson(Map<String, dynamic> json) =>
    StartTestCommand(
      runId: json['runId'] as int,
      test: json['test'] as String,
    );

Map<String, dynamic> _$StartTestCommandToJson(StartTestCommand instance) =>
    <String, dynamic>{
      'runId': instance.runId,
      'test': instance.test,
    };

CompileError _$CompileErrorFromJson(Map<String, dynamic> json) => CompileError(
      runId: json['runId'] as int,
      line: json['line'] as int,
      column: json['column'] as int,
    );

Map<String, dynamic> _$CompileErrorToJson(CompileError instance) =>
    <String, dynamic>{
      'runId': instance.runId,
      'line': instance.line,
      'column': instance.column,
    };

TestStep _$TestStepFromJson(Map<String, dynamic> json) => TestStep(
      runId: json['runId'] as int,
      step: json['step'] as String,
      time: json['time'] as int,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$TestStepToJson(TestStep instance) => <String, dynamic>{
      'runId': instance.runId,
      'step': instance.step,
      'time': instance.time,
      'error': instance.error,
    };

TestFinished _$TestFinishedFromJson(Map<String, dynamic> json) => TestFinished(
      runId: json['runId'] as int,
    );

Map<String, dynamic> _$TestFinishedToJson(TestFinished instance) =>
    <String, dynamic>{
      'runId': instance.runId,
    };

CancelTestsCommand _$CancelTestsCommandFromJson(Map<String, dynamic> json) =>
    const CancelTestsCommand();

Map<String, dynamic> _$CancelTestsCommandToJson(CancelTestsCommand instance) =>
    <String, dynamic>{};
