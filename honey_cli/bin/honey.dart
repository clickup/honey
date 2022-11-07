import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:honey_cli/src/appium/appium_command.dart';

void main(List<String> args) async {
  try {
    final runner = CommandRunner<void>(
      'honey',
      'Command line tool for the honey test framework',
    )..addCommand(AppiumCommand());
    await runner.run(args);
  } catch (e) {
    // ignore: avoid_print
    print(e);
    exit(1);
  }
}
