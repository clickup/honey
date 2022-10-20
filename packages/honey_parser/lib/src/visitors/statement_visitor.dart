import 'package:antlr4/antlr4.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/util.dart';

import 'visitors.dart';

class StatementVisitor extends HoneyTalkBaseVisitor<Statement> {
  SourceInfo _getSourceInfo(ParserRuleContext context) {
    return SourceInfo(
      source: context.source,
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
    return statement;
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

  @override
  Statement? visitStatementIf(StatementIfContext ctx) {
    return ConditionStatement(
      sourceInfo: _getSourceInfo(ctx),
      ifStatement: _ifStatement(ctx),
      elseIfStatement: _elseIfStatement(ctx),
      elseStatement: _elseStatement(ctx),
    );
  }

  IfStatement? _ifStatement(StatementIfContext ctx) {
    if (ctx.ifStat() == null) {
      return null;
    }

    final actionCtx = ctx.ifStat()!.actionStatements();
    final conditionCtx = ctx.ifStat()!.expression();
    final condition = conditionCtx?.accept(expressionVisitor);
    var statements = <Statement>[];
    for (var element in actionCtx) {
      final e = element.accept(actionVisitor);
      if (e != null) {
        statements.add(Statement.expression(
          sourceInfo: _getSourceInfo(element),
          optional: false,
          expression: e,
        ));
      }
    }

    final src = "if ${conditionCtx!.source}";
    return IfStatement(
      sourceInfo: _getSourceInfo(ctx).copyWith(source: src),
      condition: condition!,
      statements: statements.toList(),
    );
  }

  ElseStatement? _elseStatement(StatementIfContext ctx) {
    if (ctx.ifStat()?.elseStat() == null) {
      return null;
    }

    final actionCtx = ctx.ifStat()!.elseStat()!.actionStatements();
    var statements = <Statement>[];
    for (var element in actionCtx) {
      final e = element.accept(actionVisitor);
      if (e != null) {
        statements.add(Statement.expression(
          sourceInfo: _getSourceInfo(element),
          optional: false,
          expression: e,
        ));
      }
    }

    final src = "else";
    return ElseStatement(
      sourceInfo: _getSourceInfo(ctx).copyWith(source: src),
      statements: statements.toList(),
    );
  }

  ElseIfStatement? _elseIfStatement(StatementIfContext ctx) {
    if (ctx.ifStat()?.elseIfStat() == null) {
      return null;
    }

    final actionCtx = ctx.ifStat()!.elseIfStat()!.actionStatements();
    final conditionCtx = ctx.ifStat()!.elseIfStat()!.expression();
    final condition = conditionCtx?.accept(expressionVisitor);
    var statements = <Statement>[];
    for (var element in actionCtx) {
      final e = element.accept(actionVisitor);
      if (e != null) {
        statements.add(Statement.expression(
          sourceInfo: _getSourceInfo(element),
          optional: false,
          expression: e,
        ));
      }
    }

    final src = "else if ${conditionCtx!.source}";
    return ElseIfStatement(
      sourceInfo: _getSourceInfo(ctx).copyWith(source: src),
      condition: condition!,
      statements: statements.toList(),
    );
  }
}
