import 'package:antlr4/antlr4.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/models/statement.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/util.dart';

class StatementVisitor extends HoneyTalkBaseVisitor<Statement> {
  SourceInfo _getSourceInfo(ParserRuleContext context) {
    return SourceInfo(
      source: context.start!.inputStream!.getText(
        Interval(context.start!.startIndex, context.stop!.stopIndex),
      ),
      startLine: context.start!.line! - 1,
      startColumn: context.start!.charPositionInLine,
      endLine: context.stop!.line! - 1,
      endColumn:
          context.stop!.charPositionInLine + (context.stop!.text?.length ?? 0),
    );
  }

  @override
  Statement visitStatementAction(StatementActionContext ctx) {
    final actionCtx = ctx.actionStatement()!;
    final action = actionCtx.accept(actionVisitor)!;
    final conditionCtx = ctx.expression();
    final condition = conditionCtx?.accept(expressionVisitor);
    final statement = Statement.expression(
      sourceInfo: _getSourceInfo(actionCtx),
      optional: ctx.maybe() != null,
      expression: action,
    );
    if (condition == null) {
      return statement;
    } else {
      final src = 'if ${conditionCtx!.source}';
      return IfStatement(
        sourceInfo: _getSourceInfo(actionCtx).copyWith(source: src),
        condition: condition,
        statements: [statement],
      );
    }
  }

  @override
  Statement? visitStatementExpression(StatementExpressionContext ctx) {
    final expressionCtx = ctx.expression()!;
    final expression = expressionCtx.accept(expressionVisitor)!;
    return Statement.expression(
      sourceInfo: _getSourceInfo(ctx),
      optional: ctx.maybe() != null,
      expression: expression,
    );
  }
}
