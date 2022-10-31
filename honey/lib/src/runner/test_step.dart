class TestStep {
  TestStep({
    required this.line,
    required this.nextLine,
    required this.step,
    required this.skipped,
    required this.error,
  });

  final int line;
  final int? nextLine;
  final String step;
  final bool skipped;
  final String? error;

  Map<String, dynamic> toJson() => {
        'line': line,
        'nextLine': nextLine,
        'step': step,
        'skipped': skipped,
        'error': error,
      };
}
