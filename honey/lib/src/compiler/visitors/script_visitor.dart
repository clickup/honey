import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/expression/statement.dart';

class ScriptVisitor extends HoneyTalkBaseVisitor<List<Statement>> {
  @override
  List<Statement> visitScript(ScriptContext ctx) {
    return ctx.statements().map((e) => e.accept(statementVisitor)!).toList();
  }
}
