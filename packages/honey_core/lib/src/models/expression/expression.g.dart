// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FunctionExp _$$_FunctionExpFromJson(Map<String, dynamic> json) =>
    _$_FunctionExp(
      json['name'] as String,
      (json['params'] as List<dynamic>)
          .map((e) => const ExpConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FunctionExpToJson(_$_FunctionExp instance) =>
    <String, dynamic>{
      'name': instance.name,
      'params': instance.params.map(const ExpConverter().toJson).toList(),
    };

_$_ListExp _$$_ListExpFromJson(Map<String, dynamic> json) => _$_ListExp(
      (json['list'] as List<dynamic>)
          .map((e) => const ExpConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListExpToJson(_$_ListExp instance) =>
    <String, dynamic>{
      'list': instance.list.map(const ExpConverter().toJson).toList(),
    };

_$_ValueExp _$$_ValueExpFromJson(Map<String, dynamic> json) => _$_ValueExp(
      json['value'] as String,
      regexFlags: json['regexFlags'] as String?,
    );

Map<String, dynamic> _$$_ValueExpToJson(_$_ValueExp instance) =>
    <String, dynamic>{
      'value': instance.value,
      'regexFlags': instance.regexFlags,
    };
