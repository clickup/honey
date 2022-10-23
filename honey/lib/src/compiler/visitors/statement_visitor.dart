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
      conditionStatements: _conditionStatements(ctx),
      source: ctx.source,
      line: ctx.line,
    );
  }

  List<ConditionStatementItem>? _conditionStatements(StatementIfContext ctx) {
    if (ctx.ifStat() == null) {
      return null;
    }

    final items = <ConditionStatementItem>[];
    final ifActionStatements = ctx.ifStat()!.actionStatements();
    final ifConditionContext = ctx.ifStat()!.expression();
    items.add(_prepareItem(ifActionStatements, ifConditionContext!));

    if (ctx.ifStat()?.elseIfStats() == null) {
      return items;
    }

    for (final element
        in ctx.ifStat()?.elseIfStats() ?? <ElseIfStatContext>[]) {
      final item = _prepareItem(
        element.actionStatements(),
        element.expression(),
      );
      items.add(item);
    }

    return items.toList();
  }

  ConditionStatementItem _prepareItem(
    List<ActionStatementContext> actionStatements,
    ExpressionContext? expressionContext,
  ) {
    final condition = expressionContext?.accept(expressionVisitor);
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
