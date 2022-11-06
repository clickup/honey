// ignore_for_file: implementation_imports

import 'dart:convert';

import 'package:honey/src/controller/appium.dart';
import 'package:honey/src/test_output.dart';
import 'package:honey_cli/src/appium/appium_session.dart';

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

  Future<bool> runTest(String testName, String test) async {
    await _session!.logEvent('honey', 'Starting $testName');
    await _session!.setClipboard('$honeyMarker $test');
    await _session!.resetApp();

    var error = false;
    while (true) {
      final log = await _session!.getLog();
      for (final line in log) {
        final match = honeyRegex.firstMatch(line);
        if (match != null) {
          final fixed = match.group(1)!.replaceAll(r'\134', r'\');
          final output = TestOutput.fromJson(
            jsonDecode(fixed) as Map<String, dynamic>,
          );
          if (output is TestStep) {
            if (output.skipped) {
              await _session!.logEvent('honey', '${output.step} skipped');
            }
            if (output.error != null) {
              await _session!.logEvent(
                'honey',
                '${output.step} failed: ${output.error}',
              );
              error = true;
            } else {
              await _session!.logEvent('honey', '${output.step} successful');
            }
          } else if (output is TestFinished) {
            await _session!.logEvent('honey', '$testName finished');
            return !error;
          }
        }
      }
      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }
}
