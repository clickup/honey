// ignore_for_file: avoid_positional_boolean_parameters

/// The only error that may be thrown by Honey functions if they don't contain
/// a bug.
///
/// This error indicates tho the framework whether it should retry the latest
/// action.
class HoneyError extends Error {
  /// Create a new [HoneyError].
  HoneyError(this.message, this.retry);

  /// A user-friendly error message.
  final String message;

  /// Should the framework retry the latest action?
  final bool retry;

  @override
  String toString() {
    return 'HoneyError: $message';
  }
}
