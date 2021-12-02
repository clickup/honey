import 'dart:async';
import 'dart:convert';

import 'package:honey/honey.dart';
import 'package:honey/src/binding/honey_binding.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey_core/honey_core.dart';

class HoneyTest {
  final FutureOr Function() _main;
  final FunctionRegistry _functionRegistry;

  HoneyTest({
    required FutureOr Function() main,
    required Map<String, CustomFunction> customFunctions,
  })  : _main = main,
        _functionRegistry = FunctionRegistry(customFunctions: customFunctions) {
    HoneyBinding.instance.debugMode = false;
  }

  void runTest(String statementsJson) {
    final statements = (jsonDecode(statementsJson) as List)
        .map((e) => Statement.fromJson(e))
        .toList();

    _main();

    Timer.run(() async {
      print('starting test');
      try {
        final testRunner = TestRunner(
          statements,
          _functionRegistry,
        );

        print('steps: ${statements.length}');
        await for (var step in testRunner.executeAll()) {
          print('step');
          final stepJson = jsonEncode(step.toJson());
          print('$honeyStepMarker $stepJson');
        }
        testRunner.dispose();
      } catch (e) {}
    });
  }
}
