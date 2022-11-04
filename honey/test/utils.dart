import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/expression/statement.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';

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

void expectEmpty(String test) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  expect(result.statements!.length, 0);
}

void expectError(
  String test, {
  required int errorLine,
  required int errorColumn,
}) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, true);
  expect(result.errorLine, errorLine);
  expect(result.errorColumn, errorColumn);
}

void expectNoError(String test) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
}

Future<void> expectEval(
  Expr actual,
  EvaluatedExpr expected, {
  HoneyContext? context,
}) async {
  final ctx = context ?? RuntimeHoneyContext(Size.zero, {});
  final result = await ctx.eval(actual);
  expect(result, expected);
}
