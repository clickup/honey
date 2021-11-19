// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestStep _$$_TestStepFromJson(Map<String, dynamic> json) => _$_TestStep(
      time: json['time'] as int,
      index: json['index'] as int,
      step: json['step'] as String,
      message: json['message'] as String? ?? '',
      error: json['error'] as bool? ?? false,
      variables: (json['variables'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, const ExpConverter().fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_TestStepToJson(_$_TestStep instance) =>
    <String, dynamic>{
      'time': instance.time,
      'index': instance.index,
      'step': instance.step,
      'message': instance.message,
      'error': instance.error,
      'variables': instance.variables
          .map((k, e) => MapEntry(k, const ExpConverter().toJson(e))),
    };
