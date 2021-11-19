// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceStatus _$$DeviceStatusFromJson(Map<String, dynamic> json) =>
    _$DeviceStatus(
      appName: json['appName'] as String,
      appBuild: json['appBuild'] as String,
      overlayEnabled: json['overlayEnabled'] as bool,
      testRunning: json['testRunning'] as bool,
      recording: json['recording'] as bool,
    );

Map<String, dynamic> _$$DeviceStatusToJson(_$DeviceStatus instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'appBuild': instance.appBuild,
      'overlayEnabled': instance.overlayEnabled,
      'testRunning': instance.testRunning,
      'recording': instance.recording,
    };

_$StartTest _$$StartTestFromJson(Map<String, dynamic> json) => _$StartTest(
      runId: json['runId'] as int,
      statements: (json['statements'] as List<dynamic>)
          .map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
      variables: (json['variables'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, const ExpConverter().fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
    );

Map<String, dynamic> _$$StartTestToJson(_$StartTest instance) =>
    <String, dynamic>{
      'runId': instance.runId,
      'statements': instance.statements,
      'variables': instance.variables
          .map((k, e) => MapEntry(k, const ExpConverter().toJson(e))),
    };

_$Step _$$StepFromJson(Map<String, dynamic> json) => _$Step(
      runId: json['runId'] as int,
      step: TestStep.fromJson(json['step'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StepToJson(_$Step instance) => <String, dynamic>{
      'runId': instance.runId,
      'step': instance.step,
    };

_$CancelTests _$$CancelTestsFromJson(Map<String, dynamic> json) =>
    _$CancelTests();

Map<String, dynamic> _$$CancelTestsToJson(_$CancelTests instance) =>
    <String, dynamic>{};

_$ToggleOverlay _$$ToggleOverlayFromJson(Map<String, dynamic> json) =>
    _$ToggleOverlay();

Map<String, dynamic> _$$ToggleOverlayToJson(_$ToggleOverlay instance) =>
    <String, dynamic>{};

_$ToggleRecording _$$ToggleRecordingFromJson(Map<String, dynamic> json) =>
    _$ToggleRecording();

Map<String, dynamic> _$$ToggleRecordingToJson(_$ToggleRecording instance) =>
    <String, dynamic>{};

_$RecordedStatement _$$RecordedStatementFromJson(Map<String, dynamic> json) =>
    _$RecordedStatement(
      statement: json['statement'] as String,
    );

Map<String, dynamic> _$$RecordedStatementToJson(_$RecordedStatement instance) =>
    <String, dynamic>{
      'statement': instance.statement,
    };

_$ResetApp _$$ResetAppFromJson(Map<String, dynamic> json) => _$ResetApp();

Map<String, dynamic> _$$ResetAppToJson(_$ResetApp instance) =>
    <String, dynamic>{};
