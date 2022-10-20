// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/consts/markers.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/function_params.dart';

typedef CustomFunction = Future<Expression> Function(
  HoneyContext ctx,
  FunctionParams params,
);

typedef DebugCodeBuilder = Positioned Function(BuildContext contex, int code);

const kHoneyMode = bool.hasEnvironment('HONEY');

Future<void> honey({
  required FutureOr<void> Function() main,
  FutureOr<void> Function()? resetApp,
  Map<String, CustomFunction> customFunctions = const {},
}) async {
  if (!kHoneyMode) {
    main();
  } else {
    final binding = HoneyBinding(
      main: main,
      resetApp: resetApp,
      customFunctions: customFunctions,
    );

    final clipboard = (await Clipboard.getData('text/plain'))?.text ?? '';
    final testMatch = honeyTestRegex.firstMatch(clipboard);

    if (testMatch != null) {
      final output = binding.compileAndRunTest(0, testMatch.group(1)!);
      await for (final step in output) {
        print('$honeyMessageMarker${jsonEncode(step)}');
      }
    } else {
      await binding.restartApp();
    }
  }
}
