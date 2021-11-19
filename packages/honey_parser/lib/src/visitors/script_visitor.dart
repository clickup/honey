import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';

import 'visitors.dart';

class ScriptVisitor extends HoneyTalkBaseVisitor<List<Statement>> {
  @override
  List<Statement> visitScript(ScriptContext ctx) {
    return ctx.statements().map((e) => e.accept(statementVisitor)!).toList();
  }
}
