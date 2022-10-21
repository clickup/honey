import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:honey/src/cli/honey_daemon.dart';

class DaemonCommand extends Command<void> {
  DaemonCommand() {
    argParser.addOption(
      'flutter',
      abbr: 'f',
      help: 'The path to the flutter root.',
    );
  }

  @override
  final name = 'daemon';

  @override
  final description = 'Runs the Honey Daemon that provides a JSON interface '
      'to connected devices and the compiler.';

  @override
  void run() {
    var flutterRoot = argResults!['flutter'] as String?;
    flutterRoot ??= Platform.environment['FLUTTER_ROOT'];

    if (flutterRoot == null) {
      throw 'Please provide the --flutter option or set '
          'the FLUTTER_ROOT environment variable';
    }

    HoneyDaemon(flutterRoot).start();
  }
}
