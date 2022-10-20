import 'dart:async';
import 'dart:collection';

import 'package:honey/src/binding/honey_binding.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey/src/utils/fake_text_input.dart';
import 'package:honey/src/runner/function_registry.dart';

import 'context/runtime_honey_context.dart';
import 'errors/honey_error.dart';
import 'errors/unknown_error.dart';

class TestRunner {
  final List<Statement> statements;
  final FunctionRegistry functions;
  final _fakeInput = FakeTextInput();
  var _canceled = false;
  late var _ctx = RuntimeHoneyContext(functions, _fakeInput);

  TestRunner(this.statements, this.functions);

  Stream<TestStep> executeAll() async* {
    final queue = ListQueue.of(statements.reversed);
    var stepIndex = 0;
    while (queue.isNotEmpty && !_canceled) {
      final statement = queue.removeLast();
      final startTime = DateTime.now();
      dynamic result;
      if (statement is ConditionStatement) {
        result = await _runCondition(statement, queue);
      } else if (statement is ExpressionStatement) {
        result = await runRepeatedly(
          statement.expression,
        );
      }

      final step = TestStep(
        time: DateTime.now().difference(startTime).inMilliseconds,
        index: stepIndex++,
        step: statement.sourceInfo.source,
        message: result is HoneyError ? result.message : _ctx.message,
        error: result is HoneyError && !statement.optional,
        variables: Map.of(_ctx.variables),
      );
      if (!_canceled) {
        yield step;
      }

      if (result is HoneyError) {
        return;
      }
    }
  }

  Future<dynamic> runRepeatedly(
    Expression expression, {
    bool untilTrue = false,
  }) async {
    await HoneyBinding.instance.waitUntilSettled(Duration(seconds: 10));
    final startCtx = _ctx;

    final s = Stopwatch()..start();
    while (true) {
      final timeout = (await _ctx.getVariable('timeout')).asNum;
      await Future.delayed(Duration(milliseconds: 100));

      _ctx = startCtx.clone();
      HoneyError? error;
      Expression? value;
      try {
        value = await _ctx.eval(expression);
      } on HoneyError catch (e, s) {
        error = e;
      } catch (e, s) {
        error = UnknownError(e.toString() + ' ' + s.toString());
      }

      if (error != null) {
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
      }
    }
  }

  void cancel() {
    _canceled = true;
  }

  void dispose() {
    _fakeInput.dispose();
  }

  Future<dynamic> _runCondition(
      ConditionStatement statement, ListQueue<Statement> queue) async {
    var isConditionMet = false;
    dynamic result;
    dynamic conditionalStatement = statement.ifStatement;
    if (conditionalStatement != null) {
      result = await runRepeatedly(
        conditionalStatement.condition,
        untilTrue: false,
      );
      isConditionMet = result is Expression && result.asBool;
    }
    if (statement.elseIfStatement != null && !isConditionMet) {
      conditionalStatement = statement.elseIfStatement;
      result = await runRepeatedly(
        conditionalStatement.condition,
        untilTrue: false,
      );
      isConditionMet = result is Expression && result.asBool;
    }
    if (statement.elseStatement != null && !isConditionMet) {
      conditionalStatement = statement.elseStatement;
      isConditionMet = true;
    }

    if (isConditionMet) {
      queue.addAll(conditionalStatement.statements.reversed);
    }

    return result;
  }
}
