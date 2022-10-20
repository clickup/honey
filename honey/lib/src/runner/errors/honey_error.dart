class HoneyError extends Error {
  HoneyError({required this.message, required this.retry});

  final String message;
  final bool retry;

  @override
  String toString() {
    return 'HoneyError: $message';
  }
}
