import 'package:antlr4/antlr4.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/expression/expr.dart';
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
    final expr = ctx.ifStatement()!.expr()!.accept(expressionVisitor)!;
    final statements = ctx.ifStatement()!.statements().map((ctx) {
      return ctx.accept(this)!;
    }).toList();
    final actionStatement = ctx.ifStatement()!.actionStatement()?.accept(this);
    final elseBranches = ctx.ifStatement()!.elseIfStatements().map((ctx) {
      final expr = ctx.expr()!.accept(expressionVisitor)!;
      final statements =
          ctx.statements().map((ctx) => ctx.accept(this)!).toList();
      return _ElseBranch(expr, statements, ctx.source, ctx.line);
    }).toList();
    final elseStatement = ctx.ifStatement()!.elseStatement();
    if (elseStatement != null) {
      final statements =
          elseStatement.statements().map((ctx) => ctx.accept(this)!).toList();
      elseBranches.add(
        _ElseBranch(null, statements, elseStatement.source, elseStatement.line),
      );
    }
    return ConditionStatement(
      condition: expr,
      statements: actionStatement != null ? [actionStatement] : statements,
      elseStatements: _simplifyBranches(elseBranches),
      source: ctx.source,
      line: ctx.line,
    );
  }

  List<Statement> _simplifyBranches(List<_ElseBranch> elseBranches) {
    if (elseBranches.isEmpty) {
      return [];
    } else if (elseBranches.first.condition == null) {
      return elseBranches.first.statements;
    } else {
      final branch = elseBranches.first;
      return [
        ConditionStatement(
          condition: branch.condition!,
          statements: branch.statements,
          elseStatements: _simplifyBranches(elseBranches.skip(1).toList()),
          source: branch.source,
          line: branch.line,
        )
      ];
    }
  }
}

class _ElseBranch {
  _ElseBranch(this.condition, this.statements, this.source, this.line);

  final Expr? condition;
  final List<Statement> statements;
  final int line;
  final String source;
}
