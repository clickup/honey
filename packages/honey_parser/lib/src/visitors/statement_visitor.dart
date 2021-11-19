import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/util.dart';

import 'visitors.dart';

class StatementVisitor extends HoneyTalkBaseVisitor<Statement> {
  @override
  Statement visitStatementAction(StatementActionContext ctx) {
    final actionCtx = ctx.actionStatement()!;
    final action = actionCtx.accept(actionVisitor)!;
    final conditionCtx = ctx.expression();
    final condition = conditionCtx?.accept(expressionVisitor);
    final statement = Statement.expression(
      source: actionCtx.source,
      startLine: actionCtx.start!.line! - 1,
      startColumn: actionCtx.start!.charPositionInLine,
      endLine: actionCtx.stop!.line! - 1,
      endColumn: actionCtx.stop!.charPositionInLine +
          (actionCtx.stop!.text?.length ?? 0),
      expression: action,
    );
    if (condition == null) {
      return statement;
    } else {
      final src = "if ${conditionCtx!.source}";
      return IfStatement(
        source: src,
        startLine: conditionCtx.start!.line! - 1,
        startColumn: conditionCtx.start!.charPositionInLine,
        endLine: conditionCtx.stop!.line! - 1,
        endColumn: conditionCtx.stop!.charPositionInLine +
            (conditionCtx.stop!.text?.length ?? 0),
        condition: condition,
        statements: [statement],
      );
    }
  }
}
