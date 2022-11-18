// ignore_for_file: avoid_print

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:honey_cli/src/appium/appium_runner.dart';

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
    final testFiles = _getTestFiles();

    if (testFiles.isEmpty) {
      print('No tests to run');
      exit(1);
    }

    final runner = AppiumRunner(url: url, capabilities: capabilities);
    await runner.connect(url, capabilities);

    final failedTests = <String>[];
    try {
      for (final file in testFiles) {
        final test = file.readAsStringSync();
        final testName = file.path.split('/').last;
        final success = await runner.runTest(testName, test);
        if (!success) {
          failedTests.add(testName);
        }
      }
    } finally {
      await runner.close();
    }

    if (failedTests.isNotEmpty) {
      print('Tests failed: ${failedTests.join(', ')}');
      exit(1);
    }
  }

  Map<String, String> _getCapabilities() {
    final capabilities = argResults!['capability'] as List<String>;

    final capsMap = <String, String>{};
    for (final capa in capabilities) {
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
            testFile.path.endsWith('.honey') &&
            testFile.existsSync()) {
          yield testFile as File;
        }
      }
    }
  }
}
