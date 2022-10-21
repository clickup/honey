import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:honey/src/models/expression/expression.dart';

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

  final Expression expression;
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
class IfStatement extends Statement {
  const IfStatement({
    required this.condition,
    required this.thenStatements,
    required this.elseStatements,
    required super.source,
    required super.line,
  });

  final Expression condition;
  final List<Statement> thenStatements;
  final List<Statement> elseStatements;

  @override
  bool operator ==(Object other) =>
      other is IfStatement &&
      other.condition == condition &&
      const ListEquality<Statement>()
          .equals(other.thenStatements, thenStatements) &&
      const ListEquality<Statement>()
          .equals(other.elseStatements, elseStatements) &&
      other.source == source &&
      other.line == line;

  @override
  int get hashCode => Object.hash(
        condition,
        Object.hashAll(thenStatements),
        Object.hashAll(elseStatements),
        source,
        line,
      );
}
