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

//FunctionExp w()

FunctionExp and(List<Expression> args) => func(HoneyFunction.and, args);

FunctionExp or(List<Expression> args) => func(HoneyFunction.not, args);

FunctionExp not(List<Expression> args) => func(HoneyFunction.not, args);

void expectExp(String test, Expression expression) {
  final result = compileHoneyTalk(test);
  expect(result.hasError, false);
  expect(result.statements!.length, 1);
  final statement = result.statements!.first;
  expect(statement.source, test);
  expect(statement.line, 0);
  final compiledExpression = (statement as ExpressionStatement).expression;
  expect(compiledExpression, expression);
}
