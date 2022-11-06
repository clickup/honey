import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/honey_function.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/test_output.dart';

const honeyMarker = r'$_$HONEY';
final honeyRegex = RegExp(r'\$_\$HONEY(.*)');

Future<void> runFromClipboard(
  Map<String, HoneyFunction> customFunctions,
) async {
  final test = await Clipboard.getData(Clipboard.kTextPlain);
  if (test?.text == null) return;

  final compilation = compileHoneyTalk(test!.text!);
  final statements = compilation.statements;
  if (statements == null) {
    final error = TestError(
      message: 'Could not compile Honey script',
      line: compilation.errorLine,
      column: compilation.errorColumn,
    );
    _output(error.toJson());
  } else {
    final testRunner = TestRunner(
      context: RuntimeHoneyContext(customFunctions: customFunctions),
      waitUntilSettled: HoneyWidgetsBinding.instance.waitUntilSettled,
    );

    try {
      await for (final step in testRunner.executeStatements(statements)) {
        _output(step.toJson());
      }
    } finally {
      _output(const TestFinished().toJson());
    }
  }
}

void _output(Map<String, dynamic> json) {
  final output = jsonEncode(json);
  // ignore: avoid_print
  print('$honeyMarker $output');
}
