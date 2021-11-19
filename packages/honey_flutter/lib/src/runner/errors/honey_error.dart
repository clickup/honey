class HoneyError {
  final String message;
  final bool retry;

  const HoneyError(this.message, this.retry);

  @override
  String toString() {
    return 'HoneyError: $message';
  }
}
