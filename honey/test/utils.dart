import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/models/statement.dart';

const empty = ValueExp.empty();

ValueExp val(dynamic value) => ValueExp(value);

ValueExp str(String value, String regexFlags) =>
    ValueExp.str(value, regexFlags: regexFlags);

ListExp list(List<Expression> expressions) => ListExp(expressions);

FunctionExp func(HoneyFunction function, List<Expression> args) =>
    FunctionExp(function, args);

FunctionExp w(List<Expression> names) => FunctionExp(
      HoneyFunction.widgets,
      [ListExp(names), const ListExp([]), const ListExp([])],
    );

FunctionExp and(List<Expression> args) => func(HoneyFunction.and, args);

FunctionExp or(List<Expression> args) => func(HoneyFunction.or, args);

FunctionExp not(List<Expression> args) => func(HoneyFunction.not, args);

void expectExpr(String test, Expression expression, {bool optional = false}) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  expect(result.statements!.length, 1);
  final statement = result.statements!.first;
  statement as ExpressionStatement;
  expect(statement.source, test);
  expect(statement.line, 0);
  expect(statement.optional, optional);
  expect(statement.expression, expression);
}

void expectCondition(String test, ConditionStatement item) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  final statements = result.statements;
  expect(statements, isNotNull);
  expect(statements!.length, item.conditionStatements?.length ?? 0);
  for (final statement in statements ?? []) {
    statement as ConditionStatement;
    expect(statement.source, test);
    expect(statement.line, 0);
    expect(statement.conditionStatements, item.conditionStatements);
  }
}
