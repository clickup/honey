import 'package:freezed_annotation/freezed_annotation.dart';

import 'expression/expression.dart';

part 'statement.freezed.dart';
part 'statement.g.dart';

@Freezed(unionKey: 'type')
class Statement with _$Statement {
  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('expression')
  const factory Statement.expression({
    required SourceInfo sourceInfo,
    required bool optional,
    @ExpConverter() required Expression expression,
  }) = ExpressionStatement;

  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('if')
  const factory Statement.sIf({
    required SourceInfo sourceInfo,
    @ExpConverter() required Expression condition,
    required List<Statement> statements,
  }) = IfStatement;

  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('while')
  const factory Statement.sWhile({
    required SourceInfo sourceInfo,
    @ExpConverter() required Expression condition,
    required List<Statement> statements,
  }) = WhileStatement;

  factory Statement.fromJson(Map<String, dynamic> json) =>
      _$StatementFromJson(json);
}

extension StatementExt on Statement {
  bool get optional {
    return maybeMap(
      expression: (e) => e.optional,
      orElse: () => false,
    );
  }
}

@freezed
class SourceInfo with _$SourceInfo {
  @JsonSerializable(explicitToJson: true)
  const factory SourceInfo({
    required String source,
    required int startLine,
    required int startColumn,
    required int endLine,
    required int endColumn,
  }) = _SourceInfo;

  factory SourceInfo.fromJson(Map<String, dynamic> json) =>
      _$SourceInfoFromJson(json);
}
