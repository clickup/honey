import 'package:honey/src/runner/errors/honey_error.dart';

class UnknownError extends HoneyError {
  UnknownError(String message) : super(message, false);
}
