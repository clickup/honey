import 'dart:async';
import 'dart:collection';

import 'package:honey_core/honey_core.dart';
import 'package:honey/src/utils/fake_text_input.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/runner/function_registry.dart';

import 'context/runtime_honey_context.dart';
import 'errors/honey_error.dart';
import 'errors/unknown_error.dart';

class TestRunner {
  final List<Statement> statements;
  final FunctionRegistry functions;
  final Duration timeout;
  final _fakeInput = FakeTextInput();
  var _canceled = false;
  late var _ctx = RuntimeHoneyContext(functions, _fakeInput);

  TestRunner(this.statements, this.functions, this.timeout);

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
          timeout,
          untilTrue: true,
        );
        if (result is Expression && result.asBool) {
          queue.addAll(statement.statements.reversed);
        }
      } else if (statement is ExpressionStatement) {
        result = await runRepeatedly(
          statement.expression,
          timeout,
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
    Expression expression,
    Duration timeout, {
    bool untilTrue = false,
  }) async {
    await HoneyBinding.instance.waitUntilSettled(Duration(seconds: 10));
    final startCtx = _ctx;

    final s = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 100));

      _ctx = startCtx.clone();
      HoneyError? error;
      Expression? value;
      try {
        value = await _ctx.eval(expression);
      } on HoneyError catch (e) {
        error = e;
      } catch (e) {
        error = UnknownError(e.toString());
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

      if (s.elapsed > timeout || _canceled) {
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
}
