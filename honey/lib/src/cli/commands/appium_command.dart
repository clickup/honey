import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:honey/src/cli/appium/appium_runner.dart';

class AppiumCommand extends Command<void> {
  AppiumCommand() {
    argParser
      ..addOption(
        'url',
        abbr: 'u',
        help: 'Url to the appium host.',
        mandatory: true,
      )
      ..addMultiOption(
        'capability',
        abbr: 'c',
        help: 'Key=value pair of an appium capability.',
      );
  }

  @override
  final name = 'appium';

  @override
  final description = 'Runs Honey tests using Appium.';

  @override
  Future<void> run() async {
    final url = (argResults!['url'] as String).trim();
    final capabilities = _getCapabilities();
    final tests = _getTests();

    if (tests.isEmpty) {
      print('No tests to run');
      exit(0);
    }

    final runner = AppiumRunner(url: url, capabilities: capabilities);
    await runner.connect(url, capabilities);

    try {
      await runner.runTests(tests);
    } finally {
      await runner.close();
    }
  }

  Map<String, String> _getCapabilities() {
    final capabilities = argResults!['capability'] as List<String>;

    final capsMap = <String, String>{};
    for (var capa in capabilities) {
      final parts = capa.split('=');
      if (parts.length != 2) {
        throw ArgumentError('Invalid capability: $capa');
      }
      capsMap[parts[0].trim()] = parts[1].trim();
    }

    return capsMap;
  }

  Iterable<File> _getTestFiles() sync* {
    final testGlobs = argResults!.rest;

    for (final testGlob in testGlobs) {
      final testFiles = Glob(testGlob).listSync();
      for (final testFile in testFiles) {
        if (testFile is File &&
            testFile.path.endsWith('.ht') &&
            testFile.existsSync()) {
          yield testFile as File;
        }
      }
    }
  }

  Map<String, List<Statement>> _getTests() {
    final compiled = <String, List<Statement>>{};

    for (final testFile in _getTestFiles()) {
      final content = testFile.readAsStringSync();
      final result = compileHoneyTalk(content);
      if (result.hasError) {
        print(
            'Compilation error in ${testFile.absolute.path} at line ${result.errorLine}');
        exit(1);
      }
      compiled[testFile.path] = result.statements!;
    }

    return compiled;
  }
}
