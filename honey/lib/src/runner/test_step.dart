class TestStep {
  TestStep({
    required this.line,
    required this.nextLine,
    required this.step,
    required this.error,
  });

  final int line;
  final int? nextLine;
  final String step;
  final String? error;

  Map<String, dynamic> toJson() => {
        'line': line,
        'nextLine': nextLine,
        'step': step,
        'error': error,
      };
}
