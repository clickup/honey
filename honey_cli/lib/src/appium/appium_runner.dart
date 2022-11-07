// ignore_for_file: implementation_imports

import 'dart:convert';

import 'package:honey/src/consts/marker.dart';
import 'package:honey/src/test_error.dart';
import 'package:honey/src/test_step.dart';
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
    await _session!.setClipboard(test);
    await _session!.resetApp();

    var error = false;
    while (true) {
      final log = await _session!.getLog();
      for (final line in log) {
        final stepMatch = honeyStepRegex.firstMatch(line);
        final errorMatch = honeyErrorRegex.firstMatch(line);
        if (stepMatch != null) {
          final step = TestStep.fromJson(
            jsonDecode(stepMatch.group(1)!) as Map<String, dynamic>,
          );
          if (step.skipped) {
            await _session!.logEvent('honey', '${step.step} skipped');
          }
          if (step.error != null) {
            await _session!.logEvent(
              'honey',
              '${step.step} failed: ${step.error}',
            );
            error = true;
          } else {
            await _session!.logEvent('honey', '${step.step} successful');
          }
          if (step.nextLine == null) {
            await _session!.logEvent('honey', 'Test finished');
            return !error;
          }
        } else if (errorMatch != null) {
          final error = TestError.fromJson(
            jsonDecode(errorMatch.group(1)!) as Map<String, dynamic>,
          );
          await _session!.logEvent('honey', 'Test failed: ${error.error}');
          return false;
        }
      }
      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }
}
