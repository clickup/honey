import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';

class ExpressionVisitor extends HoneyTalkBaseVisitor<Expression> {
  @override
  Expression visitTermTerm(TermTermContext ctx) {
    return ctx.term()!.accept(this)!;
  }

  @override
  Expression visitExpressionExpression(ExpressionExpressionContext ctx) {
    return ctx.expression()!.accept(this)!;
  }

  @override
  Expression visitExpressionTerm(ExpressionTermContext ctx) {
    return super.visitExpressionTerm(ctx)!;
  }

  @override
  Expression visitExpressionNot(ExpressionNotContext ctx) {
    final expression = ctx.expression()!.accept(this)!;
    return FunctionExp(HoneyFunction.not, [expression]);
  }

  @override
  Expression visitExpressionNegate(ExpressionNegateContext ctx) {
    final expression = ctx.expression()!.accept(this)!;
    return FunctionExp(HoneyFunction.not, [expression, ValueExp(-1)]);
  }

  @override
  Expression visitExpressionExists(ExpressionExistsContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final widgets = FunctionExp(HoneyFunction.widgets, [target]);
    final count = FunctionExp(HoneyFunction.length, [widgets]);
    if (ctx.isAreNot() == null) {
      return FunctionExp(HoneyFunction.greater, [count, ValueExp(0)]);
    } else {
      return FunctionExp(HoneyFunction.equal, [count, ValueExp(0)]);
    }
  }

  @override
  Expression visitExpressionPow(ExpressionPowContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return FunctionExp(HoneyFunction.pow, [left, right]);
  }

  @override
  Expression visitExpressionBinaryOp(ExpressionBinaryOpContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op?.text) {
      case '+':
        return FunctionExp(HoneyFunction.plus, [left, right]);
      case '-':
        return FunctionExp(HoneyFunction.minus, [left, right]);
      case '*':
        return FunctionExp(HoneyFunction.multiply, [left, right]);
      case '/':
        return FunctionExp(HoneyFunction.divide, [left, right]);
      case '&':
        return FunctionExp(HoneyFunction.concat, [left, right]);
      case '&&':
        return FunctionExp(HoneyFunction.concat, [left, ValueExp(' '), right]);
      default:
        throw UnsupportedError('Unknown expression op');
    }
  }

  @override
  Expression visitExpressionComparison(ExpressionComparisonContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op!.accept(comparisonOpVisitor)) {
      case '=':
        return FunctionExp(HoneyFunction.equal, [left, right]);
      case '!=':
        return FunctionExp(
          HoneyFunction.not,
          [
            FunctionExp(HoneyFunction.equal, [left, right])
          ],
        );
      case '>':
        return FunctionExp(HoneyFunction.greater, [left, right]);
      case '>=':
        return FunctionExp(HoneyFunction.or, [
          FunctionExp(HoneyFunction.equal, [left, right]),
          FunctionExp(HoneyFunction.greater, [left, right]),
        ]);
      case '<':
        return FunctionExp(HoneyFunction.less, [left, right]);
      case '<=':
        return FunctionExp(HoneyFunction.or, [
          FunctionExp(HoneyFunction.equal, [left, right]),
          FunctionExp(HoneyFunction.less, [left, right]),
        ]);
      default:
        throw UnsupportedError('Unknown expression cmpOp');
    }
  }

  @override
  Expression visitExpressionStartsWith(ExpressionStartsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final prefix = ctx.expression(1)!.accept(this)!;
    final regex = ValueExp.str(
      '^${RegExp.escape(prefix.asString)}',
      regexFlags: '',
    );
    return FunctionExp(HoneyFunction.matches, [value, regex]);
  }

  @override
  Expression visitExpressionEndsWith(ExpressionEndsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final postfix = ctx.expression(1)!.accept(this)!;
    final regex = ValueExp.str(
      '${RegExp.escape(postfix.asString)}\$',
      regexFlags: '',
    );
    return FunctionExp(HoneyFunction.matches, [value, regex]);
  }

  @override
  Expression visitExpressionContains(ExpressionContainsContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final substr = ctx.expression(1)!.accept(this)!;
    final regex = ValueExp.str(
      RegExp.escape(substr.asString),
      regexFlags: '',
    );
    return FunctionExp(HoneyFunction.matches, [value, regex]);
  }

  @override
  Expression? visitExpressionMatches(ExpressionMatchesContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final regex = ctx.expression(1)!.accept(this)!;
    return FunctionExp(HoneyFunction.matches, [value, regex]);
  }

  @override
  Expression visitExpressionIsAttr(ExpressionIsAttrContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final property = ctx.property()!.accept(propertyVisitor)!;
    final getProperty = FunctionExp(
      HoneyFunction.property,
      [target, ValueExp(property)],
    );
    final result =
        FunctionExp(HoneyFunction.equal, [getProperty, ValueExp(true)]);
    if (ctx.isAreNot() != null) {
      return FunctionExp(HoneyFunction.not, [result]);
    } else {
      return result;
    }
  }

  @override
  Expression visitExpressionAnd(ExpressionAndContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return FunctionExp(HoneyFunction.and, [left, right]);
  }

  @override
  Expression visitExpressionOr(ExpressionOrContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return FunctionExp(HoneyFunction.or, [left, right]);
  }

  @override
  Expression visitTermLiteral(TermLiteralContext ctx) {
    return ctx.literal()!.accept(literalVisitor)!;
  }

  @override
  Expression visitTermNegate(TermNegateContext ctx) {
    final exp = ctx.term()!.accept(this)!;
    return FunctionExp(HoneyFunction.multiply, [exp, ValueExp(-1)]);
  }

  @override
  Expression visitTermFunction(TermFunctionContext ctx) {
    return ctx.function()!.accept(functionVisitor)!;
  }

  @override
  Expression visitTermOrdinal(TermOrdinalContext ctx) {
    final target = ctx.term()!.accept(this)!;
    var index = ctx.ordinal()!.ruleIndex + 1;
    if (index == 11) {
      index = -1;
    }
    return FunctionExp(HoneyFunction.item, [target, ValueExp(index)]);
  }

  @override
  Expression visitTermSymbol(TermSymbolContext ctx) {
    return FunctionExp(HoneyFunction.variable, [ValueExp(ctx.ID()!.text)]);
  }

  @override
  Expression visitTermProperty(TermPropertyContext ctx) {
    final target = ctx.term()!.accept(this)!;
    final prop = ctx.property()!.accept(propertyVisitor)!;
    return FunctionExp(HoneyFunction.property, [target, ValueExp(prop)]);
  }

  @override
  Expression visitTermWidget(TermWidgetContext ctx) {
    return ctx.widget()!.accept(widgetVisitor)!;
  }
}
