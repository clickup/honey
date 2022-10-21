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

class IfStatement extends Statement {
  const IfStatement({
    required this.condition,
    required this.statements,
    required super.source,
    required super.line,
  });

  final Expression condition;
  final List<Statement> statements;
}

class ConditionStatement extends Statement {
  const ConditionStatement({
    required this.ifStatement,
    required this.elseIfStatements,
    required this.elseStatement,
    required super.source,
    required super.line,
  });

  final IfStatement ifStatement;
  final List<IfStatement> elseIfStatements;
  final IfStatement? elseStatement;
}
