import 'package:freezed_annotation/freezed_annotation.dart';

import 'expression/expression.dart';

part 'statement.freezed.dart';
part 'statement.g.dart';

@Freezed(unionKey: 'type')
class Statement with _$Statement {
  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('expression')
  const factory Statement.expression({
    required String source,
    required int startLine,
    required int startColumn,
    required int endLine,
    required int endColumn,
    @ExpConverter() required Expression expression,
  }) = ExpressionStatement;

  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('if')
  const factory Statement.sIf({
    required String source,
    required int startLine,
    required int startColumn,
    required int endLine,
    required int endColumn,
    @ExpConverter() required Expression condition,
    required List<Statement> statements,
  }) = IfStatement;

  @JsonSerializable(explicitToJson: true)
  @FreezedUnionValue('while')
  const factory Statement.sWhile({
    required String source,
    required int startLine,
    required int startColumn,
    required int endLine,
    required int endColumn,
    @ExpConverter() required Expression condition,
    required List<Statement> statements,
  }) = WhileStatement;

  factory Statement.fromJson(Map<String, dynamic> json) =>
      _$StatementFromJson(json);
}
