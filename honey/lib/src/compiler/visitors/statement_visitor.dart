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
      ifStatement: _ifStatement(ctx),
      elseIfStatements: _elseIfStatements(ctx),
      elseStatements: _elseStatement(ctx),
      source: ctx.source,
      line: ctx.line,
    );
  }

  ConditionStatementItem? _ifStatement(StatementIfContext ctx) {
    if (ctx.ifStat() == null) {
      return null;
    }

    final actionCtx = ctx.ifStat()!.actionStatements();
    final conditionCtx = ctx.ifStat()!.expression();
    final condition = conditionCtx?.accept(expressionVisitor);
    final statements = <Statement>[];
    for (final element in actionCtx) {
      final e = element.accept(actionVisitor);
      if (e != null) {
        statements.add(
          ExpressionStatement(
            source: element.source,
            optional: false,
            expression: e,
            line: element.line,
          ),
        );
      }
    }

    return ConditionStatementItem(
      condition: condition,
      statements: statements.toList(),
    );
  }

  ConditionStatementItem? _elseStatement(StatementIfContext ctx) {
    if (ctx.ifStat()?.elseStat() == null) {
      return null;
    }

    final actionCtx = ctx.ifStat()!.elseStat()!.actionStatements();
    final statements = <Statement>[];
    for (final element in actionCtx) {
      final e = element.accept(actionVisitor);
      if (e != null) {
        statements.add(
          ExpressionStatement(
            source: element.source,
            optional: false,
            expression: e,
            line: element.line,
          ),
        );
      }
    }

    return ConditionStatementItem(
      statements: statements.toList(),
    );
  }

  List<ConditionStatementItem>? _elseIfStatements(StatementIfContext ctx) {
    if (ctx.ifStat()?.elseIfStats() == null) {
      return null;
    }

    final conditionStatements = <ConditionStatementItem>[];
    for (final element in ctx.ifStat()!.elseIfStats()) {
      final actionCtx = element.actionStatements();
      final conditionCtx = element.expression();
      final condition = conditionCtx?.accept(expressionVisitor);
      final statements = <Statement>[];
      for (final element in actionCtx) {
        final e = element.accept(actionVisitor);
        if (e != null) {
          statements.add(
            ExpressionStatement(
              source: element.source,
              optional: false,
              expression: e,
              line: element.line,
            ),
          );
        }
      }
      conditionStatements.add(
        ConditionStatementItem(
          condition: condition,
          statements: statements.toList(),
        ),
      );
    }

    return conditionStatements.toList();
  }
}
