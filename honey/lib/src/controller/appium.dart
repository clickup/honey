// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/consts/marker.dart';
import 'package:honey/src/honey_function.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/test_error.dart';

Future<void> runFromClipboard(
  Map<String, HoneyFunction> customFunctions,
) async {
  final test = await Clipboard.getData(Clipboard.kTextPlain);
  if (test?.text == null) return;

  final compilation = compileHoneyTalk(test!.text!);
  final statements = compilation.statements;
  if (statements == null) {
    final error = TestError(
      error: 'Could not compile Honey script',
      line: compilation.errorLine,
      column: compilation.errorColumn,
    );
    print('$honeyErrorMarker ${jsonEncode(error.toJson())}');
  } else {
    final testRunner = TestRunner(
      context: RuntimeHoneyContext(customFunctions: customFunctions),
      waitUntilSettled: HoneyWidgetsBinding.instance.waitUntilSettled,
    );

    await for (final step in testRunner.executeStatements(statements)) {
      print('$honeyStepMarker ${jsonEncode(step.toJson())}');
    }
  }
}
