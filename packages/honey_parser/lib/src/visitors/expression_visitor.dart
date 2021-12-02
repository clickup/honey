import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/builtin.dart';

import 'visitors.dart';

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
    return Builtin.not(expression);
  }

  @override
  Expression visitExpressionNegate(ExpressionNegateContext ctx) {
    final expression = ctx.expression()!.accept(this)!;
    return Builtin.multiply(expression, ValueExp("-1"));
  }

  @override
  Expression visitExpressionExists(ExpressionExistsContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final widgets = Builtin.widgets(target);
    final count = Builtin.property("length", widgets);
    if (ctx.isAreNot() == null) {
      return Builtin.greater(count, ValueExp("0"));
    } else {
      return Builtin.equal(count, ValueExp("0"));
    }
  }

  @override
  Expression visitExpressionPow(ExpressionPowContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return Builtin.pow(left, right);
  }

  @override
  Expression visitExpressionBinaryOp(ExpressionBinaryOpContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op?.text) {
      case "+":
        return Builtin.plus(left, right);
      case "-":
        return Builtin.minus(left, right);
      case "*":
        return Builtin.multiply(left, right);
      case "/":
        return Builtin.divide(left, right);
      case "&":
        return Builtin.concat(left, right, space: false);
      case "&&":
        return Builtin.concat(left, right, space: true);
      default:
        throw UnsupportedError("Unknown expression op");
    }
  }

  @override
  Expression visitExpressionComparison(ExpressionComparisonContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op!.accept(comparisonOpVisitor)) {
      case "=":
        return Builtin.equal(left, right);
      case "!=":
        return Builtin.not(Builtin.equal(left, right));
      case ">":
        return Builtin.greater(left, right);
      case ">=":
        return Builtin.or(
          Builtin.greater(left, right),
          Builtin.equal(left, right),
        );
      case "<":
        return Builtin.less(left, right);
      case "<=":
        return Builtin.or(
          Builtin.less(left, right),
          Builtin.equal(left, right),
        );
      default:
        throw UnsupportedError("Unknown expression cmpOp");
    }
  }

  @override
  Expression visitExpressionStartsWith(ExpressionStartsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final prefix = ctx.expression(1)!.accept(this)!;
    final regex =
        ValueExp.str('^${RegExp.escape(prefix.asString)}', regexFlags: '');
    return Builtin.matches(value, regex);
  }

  @override
  Expression visitExpressionEndsWith(ExpressionEndsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final postfix = ctx.expression(1)!.accept(this)!;
    final regex =
        ValueExp.str('${RegExp.escape(postfix.asString)}\$', regexFlags: '');
    return Builtin.matches(value, regex);
  }

  @override
  Expression visitExpressionContains(ExpressionContainsContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final substr = ctx.expression(1)!.accept(this)!;
    final regex = ValueExp.str(RegExp.escape(substr.asString), regexFlags: '');
    return Builtin.matches(value, regex);
  }

  @override
  Expression? visitExpressionMatches(ExpressionMatchesContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final regex = ctx.expression(1)!.accept(this)!;
    return Builtin.matches(value, regex);
  }

  @override
  Expression visitExpressionIsAttr(ExpressionIsAttrContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final property = ctx.property()!.accept(propertyVisitor)!;
    final getProperty = Builtin.property(property, target);
    final result = Builtin.equal(
      getProperty,
      ValueExp(true),
    );
    if (ctx.isAreNot() != null) {
      return Builtin.not(result);
    } else {
      return result;
    }
  }

  @override
  Expression visitExpressionAnd(ExpressionAndContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return Builtin.and(left, right);
  }

  @override
  Expression visitExpressionOr(ExpressionOrContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return Builtin.or(left, right);
  }

  @override
  Expression visitTermLiteral(TermLiteralContext ctx) {
    return ctx.literal()!.accept(literalVisitor)!;
  }

  @override
  Expression visitTermNegate(TermNegateContext ctx) {
    final exp = ctx.term()!.accept(this)!;
    return Builtin.multiply(exp, ValueExp("-1"));
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
    return Builtin.item(index, target);
  }

  @override
  Expression visitTermSymbol(TermSymbolContext ctx) {
    return Builtin.variable(ctx.ID()!.text!);
  }

  @override
  Expression visitTermProperty(TermPropertyContext ctx) {
    final target = ctx.term()!.accept(this)!;
    final prop = ctx.property()!.accept(propertyVisitor)!;
    return Builtin.property(prop, target);
  }

  @override
  Expression visitTermWidget(TermWidgetContext ctx) {
    return ctx.widget()!.accept(widgetVisitor)!;
  }
}
