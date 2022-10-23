import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:honey/src/expression/expr.dart';

class Statement {
  const Statement({required this.source, required this.line});

  final String source;
  final int line;
}

@immutable
class ExpressionStatement extends Statement {
  const ExpressionStatement({
    required this.expression,
    required this.optional,
    required super.source,
    required super.line,
  });

  final Expr expression;
  final bool optional;

  @override
  bool operator ==(Object other) =>
      other is ExpressionStatement &&
      other.expression == expression &&
      other.optional == optional &&
      other.source == source &&
      other.line == line;

  @override
  int get hashCode => Object.hash(expression, optional, source, line);

  @override
  String toString() => 'ExpressionStatement{expression: $expression, optional: '
      '$optional, source: $source, line: $line}';
}

@immutable
class ConditionStatement extends Statement {
  const ConditionStatement({
    this.conditionStatements,
    required super.source,
    required super.line,
  });
  final List<ConditionStatementItem>? conditionStatements;

  @override
  bool operator ==(Object other) =>
      other is ConditionStatement &&
      const ListEquality<ConditionStatementItem>()
          .equals(other.conditionStatements, conditionStatements);

  @override
  int get hashCode => Object.hashAll(conditionStatements ?? []);

  @override
  String toString() =>
      'ConditionStatement{condtionaStatements: $conditionStatements}';
}

@immutable
class ConditionStatementItem {
  const ConditionStatementItem({
    this.condition,
    required this.statements,
  });

  final Expr? condition;
  final List<Statement> statements;

  @override
  bool operator ==(Object other) =>
      other is ConditionStatementItem &&
      other.condition == condition &&
      const ListEquality<Statement>().equals(other.statements, statements);

  @override
  int get hashCode => Object.hash(
        condition,
        Object.hashAll(statements),
      );

  @override
  String toString() =>
      'ConditionStatementItem{condition: $condition, statements: $statements}';
}
