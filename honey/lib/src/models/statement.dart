import 'package:honey/src/models/expression/expression.dart';

class Statement {
  const Statement({required this.source, required this.line});

  final String source;
  final int line;
}

class ExpressionStatement extends Statement {
  const ExpressionStatement({
    required this.expression,
    required this.optional,
    required super.source,
    required super.line,
  });

  final Expression expression;
  final bool optional;
}

class ConditionStatement extends Statement {
  const ConditionStatement({
    this.ifStatement,
    this.elseIfStatements,
    this.elseStatements,
    required super.source,
    required super.line,
  });

  final ConditionStatementItem? ifStatement;
  final List<ConditionStatementItem>? elseIfStatements;
  final ConditionStatementItem? elseStatements;
}

class ConditionStatementItem {
  const ConditionStatementItem({
    this.condition,
    required this.statements,
  });

  final Expression? condition;
  final List<Statement> statements;
}
