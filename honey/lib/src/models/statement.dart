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
    required this.thenStatements,
    required this.elseStatements,
    required super.source,
    required super.line,
  });

  final Expression condition;
  final List<Statement> thenStatements;
  final List<Statement> elseStatements;
}
