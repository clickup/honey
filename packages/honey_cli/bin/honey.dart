// @dart = 2.8

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:honey_cli/src/commands/appium_command.dart';
import 'package:honey_cli/src/commands/compile_command.dart';
import 'package:honey_cli/src/commands/daemon_command.dart';

void main(List<String> args) async {
  try {
    final runner =
        CommandRunner('honey', 'Command line tool for the honey test framework')
          ..addCommand(AppiumCommand())
          ..addCommand(CompileCommand())
          ..addCommand(DaemonCommand());
    await runner.run(args);
  } catch (e) {
    print(e);
    exit(1);
  }
}
