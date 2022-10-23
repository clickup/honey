import 'package:antlr4/antlr4.dart';
// ignore: implementation_imports
import 'package:antlr4/src/util/bit_set.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/script_visitor.dart';
import 'package:honey/src/models/statement.dart';

final strRegex = RegExp(
  r'[^"/]+|"(?:"|[^\"])*"|/(?:/|[^\/])*/',
  multiLine: true,
);

CompilationResult compileHoneyTalk(String script) {
  final scriptLc = script.replaceAllMapped(strRegex, (match) {
    final value = match.group(0)!;
    return value.startsWith('"') || value.startsWith('/')
        ? value
        : value.toLowerCase();
  });

  final chars = InputStream.fromString(scriptLc);
  final lexer = HoneyTalkLexer(chars);
  final tokens = CommonTokenStream(lexer);
  final parser = HoneyTalkParser(tokens);

  CompilationResult? error;
  parser
    ..removeErrorListeners()
    ..addErrorListener(
      HoneyErrorListener((e) {
        error = e;
      }),
    );

  final statements = parser.script().accept(ScriptVisitor())!;
  return error ?? CompilationResult(statements: statements);
}

class HoneyErrorListener extends ErrorListener {
  HoneyErrorListener(this.errorListener);

  final void Function(CompilationResult error) errorListener;

  @override
  void reportAmbiguity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    bool exact,
    BitSet? ambigAlts,
    ATNConfigSet configs,
  ) {}

  @override
  void reportAttemptingFullContext(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    BitSet? conflictingAlts,
    ATNConfigSet configs,
  ) {}

  @override
  void reportContextSensitivity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    int prediction,
    ATNConfigSet configs,
  ) {}

  @override
  void syntaxError(
    Recognizer<ATNSimulator> recognizer,
    Object? offendingSymbol,
    int? line,
    int charPositionInLine,
    String msg,
    RecognitionException<IntStream>? e,
  ) {
    final token = offendingSymbol is Token ? offendingSymbol.text : null;
    final result = CompilationResult(
      errorLine: line ?? 0,
      errorColumn: charPositionInLine,
      errorToken: token,
    );
    errorListener(result);
  }
}

class CompilationResult {
  CompilationResult({
    this.statements,
    this.errorLine,
    this.errorColumn,
    this.errorToken,
  });

  final List<Statement>? statements;
  final int? errorLine;
  final int? errorColumn;
  final String? errorToken;

  bool get hasError => errorLine != null;
}
