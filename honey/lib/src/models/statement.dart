class Statement {
  const Statement({
    required this.source,
    required this.startLine,
    required this.startColumn,
    required this.endLine,
    required this.endColumn,
  });

  final String source;
  final int startLine;
  final int startColumn;
  final int endLine;
  final int endColumn;
}
