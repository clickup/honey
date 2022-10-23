import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';

class ExpressionVisitor extends HoneyTalkBaseVisitor<Expr> {
  @override
  Expr visitTermTerm(TermTermContext ctx) {
    return ctx.term()!.accept(this)!;
  }

  @override
  Expr visitExpressionExpression(ExpressionExpressionContext ctx) {
    return ctx.expression()!.accept(this)!;
  }

  @override
  Expr visitExpressionTerm(ExpressionTermContext ctx) {
    return super.visitExpressionTerm(ctx)!;
  }

  @override
  Expr visitExpressionNot(ExpressionNotContext ctx) {
    final expression = ctx.expression()!.accept(this)!;
    return func(F.not, {pValue: expression});
  }

  @override
  Expr visitExpressionNegate(ExpressionNegateContext ctx) {
    final expression = ctx.expression()!.accept(this)!;
    return func(F.multiply, {pLeft: expression, pRight: val(-1)});
  }

  @override
  Expr visitExpressionExists(ExpressionExistsContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final widgets = func(F.widgets, {pTarget: target});
    final count = func(F.length, {pValue: widgets});
    if (ctx.isAreNot() == null) {
      return func(F.greater, {pLeft: count, pRight: val(0)});
    } else {
      return func(F.equal, {pLeft: count, pRight: val(0)});
    }
  }

  @override
  Expr visitExpressionPow(ExpressionPowContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return func(F.pow, {pLeft: left, pRight: right});
  }

  @override
  Expr visitExpressionBinaryOp(ExpressionBinaryOpContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op?.text) {
      case '+':
        return func(F.plus, {pLeft: left, pRight: right});
      case '-':
        return func(F.minus, {pLeft: left, pRight: right});
      case '*':
        return func(F.multiply, {pLeft: left, pRight: right});
      case '/':
        return func(F.divide, {pLeft: left, pRight: right});
      case '&':
        return func(F.concat, {pLeft: left, pRight: right});
      case '&&':
        return func(F.concat, {
          pValue: list([left, val(' '), right])
        });
      default:
        throw UnsupportedError('Unknown expression op');
    }
  }

  @override
  Expr visitExpressionComparison(ExpressionComparisonContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    switch (ctx.op!.accept(comparisonOpVisitor)) {
      case '=':
        return func(F.equal, {pLeft: left, pRight: right});
      case '!=':
        return func(F.not, {
          pValue: func(F.equal, {pLeft: left, pRight: right})
        });
      case '>':
        return func(F.greater, {pLeft: left, pRight: right});
      case '>=':
        return func(F.or, {
          pLeft: func(F.greater, {pLeft: left, pRight: right}),
          pRight: func(F.equal, {pLeft: left, pRight: right}),
        });
      case '<':
        return func(F.less, {pLeft: left, pRight: right});
      case '<=':
        return func(F.or, {
          pLeft: func(F.less, {pLeft: left, pRight: right}),
          pRight: func(F.equal, {pLeft: left, pRight: right}),
        });
      default:
        throw UnsupportedError('Unknown expression cmpOp');
    }
  }

  @override
  Expr visitExpressionStartsWith(ExpressionStartsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final prefix = ctx.expression(1)!.accept(this)!;
    return func(F.startsWith, {pValue: value, pInput: prefix});
  }

  @override
  Expr visitExpressionEndsWith(ExpressionEndsWithContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final postfix = ctx.expression(1)!.accept(this)!;
    return func(F.endsWith, {pValue: value, pInput: postfix});
  }

  @override
  Expr visitExpressionContains(ExpressionContainsContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final substr = ctx.expression(1)!.accept(this)!;
    return func(F.contains, {pValue: value, pInput: substr});
  }

  @override
  Expr? visitExpressionMatches(ExpressionMatchesContext ctx) {
    final value = ctx.expression(0)!.accept(this)!;
    final regex = ctx.expression(1)!.accept(this)!;
    return func(F.matches, {pValue: value, pInput: regex});
  }

  @override
  Expr visitExpressionIsAttr(ExpressionIsAttrContext ctx) {
    final target = ctx.expression()!.accept(this)!;
    final property = ctx.property()!.accept(propertyVisitor)!;
    final result = func(F.equal, {
      pLeft: func(F.property, {
        pValue: func(F.widgets, {pTarget: target}),
        pName: val(property)
      }),
      pRight: val(true)
    });
    if (ctx.isAreNot() != null) {
      return func(F.not, {pValue: result});
    } else {
      return result;
    }
  }

  @override
  Expr visitExpressionAnd(ExpressionAndContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return func(F.and, {pLeft: left, pRight: right});
  }

  @override
  Expr visitExpressionOr(ExpressionOrContext ctx) {
    final left = ctx.expression(0)!.accept(this)!;
    final right = ctx.expression(1)!.accept(this)!;
    return func(F.or, {pLeft: left, pRight: right});
  }

  @override
  Expr visitTermLiteral(TermLiteralContext ctx) {
    return ctx.literal()!.accept(literalVisitor)!;
  }

  @override
  Expr visitTermNegate(TermNegateContext ctx) {
    final exp = ctx.term()!.accept(this)!;
    return func(F.multiply, {pLeft: exp, pRight: val(-1)});
  }

  @override
  Expr visitTermFunction(TermFunctionContext ctx) {
    return ctx.function()!.accept(functionVisitor)!;
  }

  @override
  Expr visitTermOrdinal(TermOrdinalContext ctx) {
    final target = ctx.term()!.accept(this)!;
    var index = ctx.ordinal()!.ruleIndex + 1;
    if (index == 11) {
      index = -1;
    }
    return func(F.property, {pValue: target, pName: val(index)});
  }

  @override
  Expr visitTermSymbol(TermSymbolContext ctx) {
    final name = ctx.ID()!.text!;
    return func(F.variable, {pName: val(name)});
  }

  @override
  Expr visitTermProperty(TermPropertyContext ctx) {
    final target = ctx.term()!.accept(this)!;
    final prop = ctx.property()!.accept(propertyVisitor)!;
    return func(F.property, {pValue: target, pName: val(prop)});
  }

  @override
  Expr visitTermWidget(TermWidgetContext ctx) {
    return ctx.widgetTerm()!.accept(widgetVisitor)!;
  }
}
