import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/src/binding/honey_binding.dart';
import 'package:honey/src/runner/function_params.dart';
import 'package:honey_core/honey_core.dart';

import 'binding/honey_debug.dart';
import 'binding/honey_test.dart';
import 'runner/context/honey_context.dart';

typedef CustomFunction = Future<Expression> Function(
    HoneyContext ctx, FunctionParams params);
typedef DebugCodeBuilder = Positioned Function(BuildContext contex, int code);

const kHoneyMode = bool.hasEnvironment('HONEY');

void honey({
  required FutureOr Function() main,
  FutureOr Function()? resetApp,
  Map<String, CustomFunction> customFunctions = const {},
}) async {
  print('new honeyYY $kHoneyMode');
  if (!kHoneyMode) {
    main();
  } else {
    HoneyBinding();

    /*File? testFile;
    if (Platform.isAndroid) {
      final externalDir = await getExternalStorageDirectory();
      testFile = File(p.join(externalDir!.path, '.honeytest'));
    } else if (Platform.isIOS) {
      final docsDir = await getApplicationDocumentsDirectory();
      testFile = File(p.join(docsDir.path, '.honeytest'));
    }*/
    final clipboard = (await Clipboard.getData('text/plain'))?.text ?? '';
    print(clipboard);
    final testMatch = honeyTestRegex.firstMatch(clipboard);

    if (testMatch != null) {
      final testJson = testMatch.group(1)!;
      print('FILE EXISTS $testJson');
      final honeyDebug = HoneyTest(
        main: main,
        customFunctions: customFunctions,
      );
      honeyDebug.runTest(testJson);
    } else {
      print('FILE EXISTS NOT');
      final binding = HoneyDebug(
        main: main,
        resetApp: resetApp,
        customFunctions: customFunctions,
      );
      binding.restartApp();
    }
  }
}
