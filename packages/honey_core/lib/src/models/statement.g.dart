// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpressionStatement _$$ExpressionStatementFromJson(
        Map<String, dynamic> json) =>
    _$ExpressionStatement(
      source: json['source'] as String,
      startLine: json['startLine'] as int,
      startColumn: json['startColumn'] as int,
      endLine: json['endLine'] as int,
      endColumn: json['endColumn'] as int,
      expression: const ExpConverter()
          .fromJson(json['expression'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpressionStatementToJson(
        _$ExpressionStatement instance) =>
    <String, dynamic>{
      'source': instance.source,
      'startLine': instance.startLine,
      'startColumn': instance.startColumn,
      'endLine': instance.endLine,
      'endColumn': instance.endColumn,
      'expression': const ExpConverter().toJson(instance.expression),
    };

_$IfStatement _$$IfStatementFromJson(Map<String, dynamic> json) =>
    _$IfStatement(
      source: json['source'] as String,
      startLine: json['startLine'] as int,
      startColumn: json['startColumn'] as int,
      endLine: json['endLine'] as int,
      endColumn: json['endColumn'] as int,
      condition: const ExpConverter()
          .fromJson(json['condition'] as Map<String, dynamic>),
      statements: (json['statements'] as List<dynamic>)
          .map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IfStatementToJson(_$IfStatement instance) =>
    <String, dynamic>{
      'source': instance.source,
      'startLine': instance.startLine,
      'startColumn': instance.startColumn,
      'endLine': instance.endLine,
      'endColumn': instance.endColumn,
      'condition': const ExpConverter().toJson(instance.condition),
      'statements': instance.statements.map((e) => e.toJson()).toList(),
    };

_$WhileStatement _$$WhileStatementFromJson(Map<String, dynamic> json) =>
    _$WhileStatement(
      source: json['source'] as String,
      startLine: json['startLine'] as int,
      startColumn: json['startColumn'] as int,
      endLine: json['endLine'] as int,
      endColumn: json['endColumn'] as int,
      condition: const ExpConverter()
          .fromJson(json['condition'] as Map<String, dynamic>),
      statements: (json['statements'] as List<dynamic>)
          .map((e) => Statement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WhileStatementToJson(_$WhileStatement instance) =>
    <String, dynamic>{
      'source': instance.source,
      'startLine': instance.startLine,
      'startColumn': instance.startColumn,
      'endLine': instance.endLine,
      'endColumn': instance.endColumn,
      'condition': const ExpConverter().toJson(instance.condition),
      'statements': instance.statements.map((e) => e.toJson()).toList(),
    };
