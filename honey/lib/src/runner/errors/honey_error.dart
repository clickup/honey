// ignore_for_file: avoid_positional_boolean_parameters

class HoneyError extends Error {
  HoneyError(this.message, this.retry);

  final String message;
  final bool retry;

  @override
  String toString() {
    return 'HoneyError: $message';
  }
}
