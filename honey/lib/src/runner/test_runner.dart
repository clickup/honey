import 'dart:async';
import 'dart:collection';

import 'package:honey/honey.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/statement.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/unknown_error.dart';
import 'package:honey/src/runner/test_step.dart';
import 'package:honey/src/utils/fake_text_input.dart';

class TestRunner {
  TestRunner(this.statements, this.customFunctions);

  final List<Statement> statements;
  final Map<String, HoneyFunction> customFunctions;
  final _fakeInput = FakeTextInput();
  var _canceled = false;
  late var _ctx = RuntimeHoneyContext(_fakeInput, customFunctions);

  Stream<TestStep> executeAll() async* {
    final queue = ListQueue.of(statements.reversed);
    const stepIndex = 0;
    while (queue.isNotEmpty && !_canceled) {
      final statement = queue.removeLast();

      //final dynamic result = await runRepeatedly(expression);
      await Future.delayed(Duration(milliseconds: 500));

      final step = TestStep(
        line: statement.line,
        step: statement.source,
        nextLine: queue.isNotEmpty ? queue.last.line : null,
        error: null,
      );
      if (!_canceled) {
        yield step;
      }

      /*if (result is HoneyError) {
        return;
      }*/
    }
  }

  Future<dynamic> runRepeatedly(
    Expr expression, {
    bool untilTrue = false,
  }) async {
    await HoneyWidgetsBinding.instance
        .waitUntilSettled(const Duration(seconds: 10));
    final startCtx = _ctx;

    final s = Stopwatch()..start();
    while (true) {
      //final timeout = (await _ctx.getVariable('timeout')).asNum;
      await Future<void>.delayed(const Duration(milliseconds: 100));

      _ctx = startCtx.clone();
      HoneyError? error;
      Expr? value;
      try {
        value = await _ctx.eval(expression);
      } on HoneyError catch (e) {
        error = e;
      } catch (e, s) {
        error = UnknownError('$e $s');
      }
      /*if (error != null) {
        if (!error.retry) {
          return error;
        }
      } else if (value!.asBool || !untilTrue) {
        return value;
      } else if (!value.retry) {
        return value;
      }

      if (s.elapsed.inMilliseconds > timeout || _canceled) {
        return error ?? value;
      }*/
    }
  }

  Future<void> cancel() async {
    _canceled = true;
  }

  void dispose() {
    _fakeInput.dispose();
  }

  Future<dynamic> _runCondition(
      ConditionStatement statement, ListQueue<Statement> queue) async {
    var isConditionMet = false;
    dynamic result;
    for (final conditionalStatement
        in statement.conditionStatements ?? <ConditionStatementItem>[]) {
      if (conditionalStatement.condition != null) {
        result = await runRepeatedly(
          conditionalStatement.condition!,
        );
        isConditionMet = result is ValueExpr && result.asBool;
        if (isConditionMet) {
          queue.addAll(conditionalStatement.statements);
          break;
        }
      } else {
        queue.addAll(conditionalStatement.statements);
      }
    }
    return result;
  }
}
