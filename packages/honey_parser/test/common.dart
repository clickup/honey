import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/honey_parser.dart';
import 'package:test/test.dart';

FunctionExp f(String name, dynamic params) {
  if (params is List) {
    return FunctionExp(name, params.cast());
  } else {
    return FunctionExp(name, [params]);
  }
}

ValueExp v(dynamic value) => ValueExp(value);

ListExp l(List<Expression> values) => ListExp(values);

void expectEqual(Expression a, Expression b) {
  expect(a.runtimeType, b.runtimeType);
  if (a is FunctionExp && b is FunctionExp) {
    expect(a.name, b.name);
    expect(a.params.length, b.params.length);
    for (var i = 0; i < a.params.length; i++) {
      expectEqual(a.params[i], b.params[i]);
    }
  } else if (a is ListExp && b is ListExp) {
    expect(a.list.length, b.list.length);
    for (var i = 0; i < a.list.length; i++) {
      expectEqual(a.list[i], b.list[i]);
    }
  } else if (a is ValueExp && b is ValueExp) {
    expect(a.value, b.value);
    expect(a.regexFlags, b.regexFlags);
  }
}

void expectCompiles(String source, Expression expected,
    {bool optional = false}) {
  final result = compileHoneyTalk(source);
  expect(result.hasError, false, reason: 'Input should compile');
  expect(result.statements!.length, 1);
  final statement = result.statements!.first as ExpressionStatement;
  expectEqual(statement.expression, expected);
  if (!optional) {
    expect(statement.sourceInfo.source, source);
  }
  expect(statement.optional, optional);
}

void expectFails(String source) {
  final result = compileHoneyTalk(source);
  expect(result.hasError, true, reason: 'Input should not compile');
}
