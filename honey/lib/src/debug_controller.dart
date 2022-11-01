import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:honey/honey.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/expression/statement.dart';
import 'package:honey/src/runner/test_runner.dart';

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
      (_, params) async {
        final compilation = compileHoneyTalk(params['test']!);
        late Map<String, dynamic> result;
        if (_testRunner != null) {
          result = {
            'error': 'Test already running',
          };
        } else if (compilation.errorLine != null ||
            compilation.errorColumn != null) {
          result = {
            'error': 'Could not compile Honey script',
            'errorLine': compilation.errorLine,
            'errorColumn': compilation.errorColumn,
          };
        } else {
          unawaited(_runTest(compilation.statements!));
          result = {
            'steps': [
              for (final step in compilation.statements!)
                {
                  'line': step.line,
                  'step': step.source,
                }
            ]
          };
        }

        return ServiceExtensionResponse.result(jsonEncode(result));
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

  Future<void> _runTest(List<Statement> statements) async {
    if (_testRunner != null) return;

    HoneyWidgetsBinding.instance.reset(testing: true);
    final screenSize = HoneyWidgetsBinding.instance.window.physicalSize /
        HoneyWidgetsBinding.instance.window.devicePixelRatio;
    _testRunner = TestRunner(screenSize, customFunctions);

    try {
      await for (final step in _testRunner!.executeStatements(statements)) {
        postEvent('ext.honey.step', step.toJson());
      }
    } finally {
      postEvent('ext.honey.finished', {});
      _testRunner = null;
      HoneyWidgetsBinding.instance.reset(testing: false);
    }
  }

  Future<void> cancelTests() async {
    await _testRunner?.cancel();
  }
}
