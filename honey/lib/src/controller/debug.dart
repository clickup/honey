// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:honey/honey.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/test_error.dart';

class DebugController {
  DebugController(this.customFunctions) {
    _registerTestExtension();
    _registerCancelTestExtension();
    postEvent('ext.honey.greeting', {});
  }

  final Map<String, HoneyFunction> customFunctions;
  TestRunner? _testRunner;

  void _registerTestExtension() {
    registerExtension(
      'ext.honey.test',
      (_, params) {
        var output = <String, dynamic>{};
        if (_testRunner != null) {
          output = const TestError(error: 'Test already running').toJson();
        } else {
          final compilation = compileHoneyTalk(params['test']!);
          final statements = compilation.statements;
          if (statements == null) {
            output = TestError(
              error: 'Could not compile Honey script',
              line: compilation.errorLine,
              column: compilation.errorColumn,
            ).toJson();
          } else {
            _testRunner = TestRunner(
              context: RuntimeHoneyContext(customFunctions: customFunctions),
              waitUntilSettled: HoneyWidgetsBinding.instance.waitUntilSettled,
            );
            HoneyWidgetsBinding.instance.reset(testing: true);
            _testRunner!.executeStatements(statements).forEach((element) {
              postEvent('ext.honey.step', element.toJson());
            }).whenComplete(() {
              HoneyWidgetsBinding.instance.reset(testing: false);
              _testRunner = null;
            });
          }
        }
        final response = ServiceExtensionResponse.result(jsonEncode(output));
        return Future.value(response);
      },
    );
  }

  void _registerCancelTestExtension() {
    registerExtension(
      'ext.honey.cancelTest',
      (_, params) async {
        await _testRunner?.cancel();
        return ServiceExtensionResponse.result('{}');
      },
    );
  }
}
