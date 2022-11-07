class TestStep {
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

  Map<String, dynamic> toJson() => {
        'line': line,
        'nextLine': nextLine,
        'step': step,
        'skipped': skipped,
        'output': output,
        'error': error,
      };
}
