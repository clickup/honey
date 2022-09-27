import 'package:args/command_runner.dart';

class CompileCommand extends Command {
  @override
  final name = 'compile';

  @override
  final description = 'Compiles a HoneyTalk script.';

  CompileCommand();

  @override
  void run() {}
}
