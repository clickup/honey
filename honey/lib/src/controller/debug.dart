import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:honey/honey.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/test_output.dart';

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
          output = const TestError(message: 'Test already running').toJson();
        } else {
          final compilation = compileHoneyTalk(params['test']!);
          final statements = compilation.statements;
          if (statements == null) {
            output = TestError(
              message: 'Could not compile Honey script',
              line: compilation.errorLine,
              column: compilation.errorColumn,
            ).toJson();
          } else {
            _testRunner = TestRunner(
              context: RuntimeHoneyContext(customFunctions: customFunctions),
              waitUntilSettled: HoneyWidgetsBinding.instance.waitUntilSettled,
            );
            _testRunner!.executeStatements(statements).forEach((element) {
              postEvent('ext.honey.output', element.toJson());
            }).whenComplete(() {
              postEvent('ext.honey.output', const TestFinished().toJson());
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
