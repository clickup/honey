import 'dart:convert';

import 'package:honey/src/cli/appium/appium_session.dart';
import 'package:honey/src/consts/markers.dart';
import 'package:honey/src/protocol/honey_message.dart';

class AppiumRunner {
  AppiumRunner({required this.url, required this.capabilities});

  final String url;
  final Map<String, String> capabilities;

  AppiumSession? _session;

  Future<void> connect(String url, Map<String, String> capabilities) async {
    _session = await AppiumSession.create(
      Uri.parse(url),
      capabilities,
    );
  }

  Future<void> close() async {
    await _session?.close();
  }

  Future<void> runTests(Map<String, String> tests) async {
    for (final testName in tests.keys) {
      final test = tests[testName]!;
      await _runTest(testName, test);
    }
  }

  Future<void> _runTest(String testName, String test) async {
    await _session!.logEvent('honey', 'Starting $testName');
    await _session!.setClipboard('$honeyTestMarker $test');
    await _session!.resetApp();

    while (true) {
      final log = await _session!.getLog();
      for (final line in log) {
        final match = honeyMessageRegex.firstMatch(line);
        if (match != null) {
          final fixed = match.group(1)!.replaceAll(r'\134', r'\');
          final message = HoneyMessage.fromJson(
            jsonDecode(fixed) as Map<String, dynamic>,
          );
          if (message is TestStep) {
            if (message.error != null) {
              await _session!.logEvent(
                'honey',
                '${message.step} failed: ${message.error}',
              );
            } else {
              await _session!.logEvent('honey', '${message.step} successful');
            }
          } else if (message is TestFinished) {
            await _session!.logEvent('honey', '$testName finished');
            return;
          }
        }
      }
      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }
}
