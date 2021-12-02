import 'dart:convert';

import 'package:honey_core/honey_core.dart';

import 'appium_session.dart';

class AppiumRunner {
  final String url;
  final Map<String, String> capabilities;

  AppiumSession? _session;

  AppiumRunner({required this.url, required this.capabilities});

  Future<void> connect(String url, Map<String, String> capabilities) async {
    _session = await AppiumSession.create(
      Uri.parse(url),
      capabilities,
    );
  }

  Future<void> close() async {
    await _session?.close();
  }

  Future<void> runTests(Map<String, List<Statement>> tests) async {
    for (final test in tests.keys) {
      final statements = tests[test]!;
      await _runTest(test, statements);
    }
  }

  /*Future<void> _uploadTest(List<Statement> test) async {
    if (_session!.isAndroid) {
      await _session!.pushFile(
        '/storage/emulated/0/Android/data/co.mangotechnologies.clickup/files/.honeytest',
        utf8.encode(json),
      );
    } else {
      await _session!.pushFile(
        '@${_session!.package}:documents/.honeytest',
        utf8.encode(json),
      );
    }
  }*/

  Future<void> _runTest(String testName, List<Statement> statements) async {
    print('TEST $testName');
    final testJson = jsonEncode(statements.map((e) => e.toJson()).toList());
    await _session!.logEvent('honey', 'Starting $testName');
    await _session!.setClipboard('$honeyTestMarker $testJson');
    await _session!.resetApp();

    final steps = <TestStep>[];

    while (true) {
      final log = await _session!.getLog();
      for (var line in log) {
        final match = honeyStepRegex.firstMatch(line);
        if (match != null) {
          print(line);
          final fixed = match.group(1)!.replaceAll('\\134', '\\');
          final step = TestStep.fromJson(jsonDecode(fixed));
          if (step.error) {
            await _session!
                .logEvent('honey', '${step.step} failed: ${step.message}');
            return;
          } else {
            await _session!.logEvent('honey', '${step.step} successful');
          }
          steps.add(step);
        }
        if (steps.length == statements.length) {
          return;
        }
      }
      await Future.delayed(Duration(seconds: 2));
    }
  }
}
