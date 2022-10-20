import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';

import 'visitors.dart';

class ScriptVisitor extends HoneyTalkBaseVisitor<List<Statement>> {
  @override
  List<Statement> visitScript(ScriptContext ctx) {
    print('starting');
    try {
      return ctx.statements().map((e) {
        print('statement: ${e}');
        final statement = e.accept(statementVisitor)!;
        return statement;
      }).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
