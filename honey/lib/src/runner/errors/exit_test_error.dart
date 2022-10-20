import 'package:honey/src/runner/errors/honey_error.dart';

class ExitTestError extends HoneyError {
  final bool success;

  ExitTestError(this.success, String message) : super(message, retry: false);
}
