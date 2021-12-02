import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:honey_cli/honey_cli.dart';

class CompileCommand extends Command {
  @override
  final name = 'compile';

  @override
  final description = 'Compiles a HoneyTalk script.';

  CompileCommand() {}

  @override
  void run() {}
}
