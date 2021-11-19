// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpressionStatement _$$ExpressionStatementFromJson(
        Map<String, dynamic> json) =>
    _$ExpressionStatement(
      sourceInfo:
          SourceInfo.fromJson(json['sourceInfo'] as Map<String, dynamic>),
      optional: json['optional'] as bool,
      expression: const ExpConverter()
          .fromJson(json['expression'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExpressionStatementToJson(
        _$ExpressionStatement instance) =>
    <String, dynamic>{
      'sourceInfo': instance.sourceInfo.toJson(),
      'optional': instance.optional,
      'expression': const ExpConverter().toJson(instance.expression),
      'type': instance.$type,
    };

_$IfStatement _$$IfStatementFromJson(Map<String, dynamic> json) =>
    _$IfStatement(
      sourceInfo:
          SourceInfo.fromJson(json['sourceInfo'] as Map<String, dynamic>),
      condition: const ExpConverter()
          .fromJson(json['condition'] as Map<String, dynamic>),
      statements: (json['statements'] as List<dynamic>)
          .map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$IfStatementToJson(_$IfStatement instance) =>
    <String, dynamic>{
      'sourceInfo': instance.sourceInfo.toJson(),
      'condition': const ExpConverter().toJson(instance.condition),
      'statements': instance.statements.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$WhileStatement _$$WhileStatementFromJson(Map<String, dynamic> json) =>
    _$WhileStatement(
      sourceInfo:
          SourceInfo.fromJson(json['sourceInfo'] as Map<String, dynamic>),
      condition: const ExpConverter()
          .fromJson(json['condition'] as Map<String, dynamic>),
      statements: (json['statements'] as List<dynamic>)
          .map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$WhileStatementToJson(_$WhileStatement instance) =>
    <String, dynamic>{
      'sourceInfo': instance.sourceInfo.toJson(),
      'condition': const ExpConverter().toJson(instance.condition),
      'statements': instance.statements.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$_SourceInfo _$$_SourceInfoFromJson(Map<String, dynamic> json) =>
    _$_SourceInfo(
      source: json['source'] as String,
      startLine: json['startLine'] as int,
      startColumn: json['startColumn'] as int,
      endLine: json['endLine'] as int,
      endColumn: json['endColumn'] as int,
    );

Map<String, dynamic> _$$_SourceInfoToJson(_$_SourceInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'startLine': instance.startLine,
      'startColumn': instance.startColumn,
      'endLine': instance.endLine,
      'endColumn': instance.endColumn,
    };
