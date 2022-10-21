import 'package:antlr4/antlr4.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/models/statement.dart';

extension on ParserRuleContext {
  String get source => start!.inputStream!.getText(
        Interval(start!.startIndex, stop!.stopIndex),
      );

  int get line => start!.line! - 1;
}

class StatementVisitor extends HoneyTalkBaseVisitor<Statement> {
  @override
  Statement visitStatementAction(StatementActionContext ctx) {
    final actionCtx = ctx.actionStatement()!;
    final action = actionCtx.accept(actionVisitor)!;
    //final conditionCtx = ctx.expression();
    //final condition = conditionCtx?.accept(expressionVisitor);
    return ExpressionStatement(
      expression: action,
      optional: ctx.maybe() != null,
      source: ctx.source,
      line: ctx.line,
    );
  }

  @override
  Statement? visitStatementExpression(StatementExpressionContext ctx) {
    final expressionCtx = ctx.expression()!;
    final expression = expressionCtx.accept(expressionVisitor)!;
    return ExpressionStatement(
      expression: expression,
      optional: ctx.maybe() != null,
      source: ctx.source,
      line: ctx.line,
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
        statements.add(ExpressionStatement(
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
        statements.add(StatementExpression(
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
