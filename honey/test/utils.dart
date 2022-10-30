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

void expectStatement(String test, Statement statement) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  expect(result.statements!.first, statement);
}
