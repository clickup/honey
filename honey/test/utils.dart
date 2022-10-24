import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/statement.dart';

void expectExpr(String test, Expr expression, {bool optional = false}) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  expect(result.statements!.length, 1);
  final statement = result.statements!.first;
  statement as ExpressionStatement;
  //expect(statement.source, test);
  expect(statement.line, 0);
  expect(statement.optional, optional);
  expect(statement.expression, expression);
}

void expectCondition(String test, ConditionStatement item) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  final statement = result.statements?.first;
  expect(statement, isInstanceOf<ConditionStatement>());
  expect(statement, isNotNull);
  final conditionStatement = statement! as ConditionStatement;
  expect(
    conditionStatement.conditionStatements?.length,
    item.conditionStatements?.length,
  );

  for (var i = 0; i < conditionStatement.conditionStatements!.length; i++) {
    final condition = conditionStatement.conditionStatements![i];
    final expectedCondition = item.conditionStatements![i];
    expect(condition.condition, expectedCondition.condition);
    expect(condition.statements.length, expectedCondition.statements.length);
    for (var j = 0; j < condition.statements.length; j++) {
      final statement = condition.statements[j];
      final expectedStatement = expectedCondition.statements[j];
      expect(statement, expectedStatement);
    }
  }
}
