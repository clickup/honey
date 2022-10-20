import 'dart:async';
import 'dart:collection';

import 'package:honey/honey.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/models/honey_message.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/models/statement.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/unknown_error.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/utils/fake_text_input.dart';

class TestRunner {
  TestRunner(this.statements, this.functions);

  final List<Statement> statements;
  final Map<String, CustomFunction> functions;
  final _fakeInput = FakeTextInput();
  var _canceled = false;
  late var _ctx = RuntimeHoneyContext(functions, _fakeInput);

  Stream<TestStep> executeAll() async* {
    final queue = ListQueue.of(statements.reversed);
    var stepIndex = 0;
    while (queue.isNotEmpty && !_canceled) {
      final statement = queue.removeLast();
      final startTime = DateTime.now();
      dynamic result;
      if (statement is IfStatement) {
        result = await runRepeatedly(
          statement.condition,
          untilTrue: true,
        );
        if (result is Expression && result.asBool) {
          queue.addAll(statement.statements.reversed);
        }
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
    await HoneyBinding.instance.waitUntilSettled(const Duration(seconds: 10));
    final startCtx = _ctx;

    final s = Stopwatch()..start();
    while (true) {
      final timeout = (await _ctx.getVariable('timeout')).asNum;
      await Future<void>.delayed(const Duration(milliseconds: 100));

      _ctx = startCtx.clone();
      HoneyError? error;
      Expression? value;
      try {
        value = await _ctx.eval(expression);
      } on HoneyError catch (e, s) {
        error = e;
      } catch (e, s) {
        error = UnknownError('$e $s');
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

  Future<void> cancel() {
    _canceled = true;
  }

  void dispose() {
    _fakeInput.dispose();
  }
}
