import 'package:args/command_runner.dart';
import 'package:honey_cli/src/appium/appium_command.dart';

void main(List<String> args) async {
  final runner = CommandRunner<void>(
    'honey',
    'Command line tool for the honey test framework',
  )..addCommand(AppiumCommand());
  await runner.run(args);
}
