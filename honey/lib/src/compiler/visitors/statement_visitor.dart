import 'package:antlr4/antlr4.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/expression/statement.dart';

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
    return ExpressionStatement(
      expression: action,
      optional: ctx.maybe() != null,
      source: ctx.source,
      line: ctx.line,
    );
  }

  @override
  Statement? visitStatementExpr(StatementExprContext ctx) {
    final exprCtx = ctx.expr()!;
    final expr = exprCtx.accept(expressionVisitor)!;
    return ExpressionStatement(
      expression: expr,
      optional: ctx.maybe() != null,
      source: ctx.source,
      line: ctx.line,
    );
  }

  @override
  Statement? visitStatementIf(StatementIfContext ctx) {
    return ConditionStatement(
      conditionStatements: _conditionStatements(ctx),
      source: ctx.source,
      line: ctx.line,
    );
  }

  List<ConditionStatementItem>? _conditionStatements(StatementIfContext ctx) {
    if (ctx.ifStatement() == null) {
      return null;
    }

    final items = <ConditionStatementItem>[];
    final ifActionStatements = ctx.ifStatement()!.actionStatements();
    final ifConditionContext = ctx.ifStatement()!.expr();
    items.add(_prepareItem(ifActionStatements, ifConditionContext));

    if (ctx.ifStatement()?.elseIfStatements() == null) {
      return items;
    }

    for (final element in ctx.ifStatement()?.elseIfStatements() ??
        <ElseIfStatementContext>[]) {
      final item = _prepareItem(
        element.actionStatements(),
        element.expr(),
      );
      items.add(item);
    }

    return items.toList();
  }

  ConditionStatementItem _prepareItem(
    List<ActionStatementContext> actionStatements,
    ExprContext? exprContext,
  ) {
    final condition = exprContext?.accept(expressionVisitor);
    final statements = <Statement>[];
    for (final element in actionStatements) {
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
}
