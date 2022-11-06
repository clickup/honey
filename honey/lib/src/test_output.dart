abstract class TestOutput {
  const TestOutput();

  factory TestOutput.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    switch (type) {
      case 'step':
        return TestStep.fromJson(json);
      case 'error':
        return TestError.fromJson(json);
      case 'finished':
        return const TestFinished();
      default:
        throw Exception('Unknown HoneyMessage type: $type');
    }
  }

  Map<String, dynamic> toJson();
}

class TestStep extends TestOutput {
  const TestStep({
    required this.line,
    required this.nextLine,
    required this.step,
    required this.skipped,
    required this.output,
    required this.error,
  });

  factory TestStep.fromJson(Map<String, dynamic> json) => TestStep(
        line: json['line'] as int,
        nextLine: json['nextLine'] as int?,
        step: json['step'] as String,
        skipped: json['skipped'] as bool,
        output: json['output'] as String,
        error: json['error'] as String?,
      );

  final int line;
  final int? nextLine;
  final String step;
  final bool skipped;
  final String? output;
  final String? error;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'step',
        'line': line,
        'nextLine': nextLine,
        'step': step,
        'skipped': skipped,
        'output': output,
        'error': error,
      };
}

class TestError extends TestOutput {
  const TestError({required this.message, this.line, this.column});

  factory TestError.fromJson(Map<String, dynamic> json) => TestError(
        message: json['message'] as String,
        line: json['line'] as int?,
        column: json['column'] as int?,
      );

  final String message;
  final int? line;
  final int? column;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'error',
        'message': message,
        'line': line,
        'column': column,
      };
}

class TestFinished extends TestOutput {
  const TestFinished();

  @override
  Map<String, dynamic> toJson() => {'type': 'finished'};
}
