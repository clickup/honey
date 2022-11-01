import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:honey/honey.dart';
import 'package:honey/src/expression/statement.dart';
import 'package:honey/src/expression/variable.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/errors/unknown_error.dart';
import 'package:honey/src/runner/test_step.dart';

class TestRunner {
  TestRunner(this.screenSize, this.customFunctions);

  final Size screenSize;
  final Map<String, HoneyFunction> customFunctions;

  late HoneyContext _ctx;
  var _canceled = false;

  HoneyContext get context => _ctx;

  Stream<TestStep> executeStatements(List<Statement> statements) async* {
    _ctx = RuntimeHoneyContext(screenSize, customFunctions);

    final queue = ListQueue.of(statements.reversed);
    while (queue.isNotEmpty && !_canceled) {
      final statement = queue.removeLast();

      dynamic result;
      var optional = false;
      if (statement is ExpressionStatement) {
        optional = statement.optional;
        result = await _runRepeatedly(statement.expression);
      } else if (statement is ConditionStatement) {
        result = await _runRepeatedly(statement.condition, untilTrue: true);
        if (result is ValueExpr && result.asBool) {
          queue.addAll(statement.statements.reversed);
        } else {
          queue.addAll(statement.elseStatements.reversed);
        }
      }

      if (_canceled) {
        return;
      }

      final finished = queue.isEmpty || (result is HoneyError && !optional);
      yield TestStep(
        line: statement.line,
        step: statement.source,
        nextLine: finished ? null : queue.last.line,
        skipped: result is HoneyError && optional,
        error: result is HoneyError && !optional ? result.message : null,
      );

      if (result is HoneyError && !optional) {
        return;
      }
    }
  }

  Future<dynamic> _runRepeatedly(
    Expr expression, {
    bool untilTrue = false,
  }) async {
    final settleTimeout = _ctx.getVariable(Variable.settleTimeout.name).asNum;
    final timeout = _ctx.getVariable(Variable.timeout.name).asNum;
    final stepDelay = _ctx.getVariable(Variable.stepDelay.name).asNum;

    await HoneyWidgetsBinding.instance
        .waitUntilSettled(Duration(milliseconds: settleTimeout.toInt()));
    final startCtx = _ctx;

    final s = Stopwatch()..start();
    while (true) {
      await Future<void>.delayed(Duration(milliseconds: stepDelay.toInt()));

      _ctx = startCtx.clone();
      HoneyError? error;
      EvaluatedExpr? value;
      try {
        value = await _ctx.eval(expression);
      } catch (e, s) {
        if (e is HoneyError) {
          error = e;
        } else {
          error = UnknownError('$e\n$s');
        }
      }
      if (error != null) {
        if (!error.retry) {
          return error;
        }
      } else if ((value is ValueExpr && value.asBool) || !untilTrue) {
        return value;
      } else if (!value!.retry) {
        return value;
      }

      if (s.elapsed.inMilliseconds > timeout || _canceled) {
        return error ?? value;
      }
    }
  }

  Future<void> cancel() async {
    _canceled = true;
  }
}
