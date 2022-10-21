// ignore_for_file: avoid_positional_boolean_parameters

import 'package:honey/src/runner/errors/honey_error.dart';

class ExitTestError extends HoneyError {
  ExitTestError(this.success, String message) : super(message, false);

  final bool success;
}
