class TestError {
  const TestError({required this.error, this.line, this.column});

  factory TestError.fromJson(Map<String, dynamic> json) => TestError(
        error: json['error'] as String,
        line: json['line'] as int?,
        column: json['column'] as int?,
      );

  final String error;
  final int? line;
  final int? column;

  Map<String, dynamic> toJson() => {
        'error': error,
        'line': line,
        'column': column,
      };
}
