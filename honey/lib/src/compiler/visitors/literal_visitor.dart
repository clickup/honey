import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/expression/value_expr.dart';

class LiteralVisitor extends HoneyTalkBaseVisitor<ValueExpr> {
  @override
  ValueExpr visitLiteralCardinal(LiteralCardinalContext ctx) {
    switch (ctx.cardinal()!.text) {
      case 'zero':
        return val(0);
      case 'one':
        return val(1);
      case 'two':
        return val(2);
      case 'three':
        return val(3);
      case 'four':
        return val(4);
      case 'five':
        return val(5);
      case 'six':
        return val(6);
      case 'seven':
        return val(7);
      case 'eight':
        return val(8);
      case 'nine':
        return val(9);
      case 'ten':
        return val(10);
      default:
        throw StateError(
          'Unrecognized cardinal literal: ${ctx.cardinal()}',
        );
    }
  }

  @override
  ValueExpr? visitOrdinal(OrdinalContext ctx) {
    switch (ctx.text) {
      case 'first':
        return val(1);
      case 'second':
        return val(2);
      case 'third':
        return val(3);
      case 'fourth':
        return val(4);
      case 'fifth':
        return val(5);
      case 'sixth':
        return val(6);
      case 'seventh':
        return val(7);
      case 'eighth':
        return val(8);
      case 'ninth':
        return val(9);
      case 'tenth':
        return val(10);
      case 'last':
        return val(-1);
      default:
        throw StateError(
          'Unrecognized ordinal literal: $ctx',
        );
    }
  }

  @override
  ValueExpr? visitLiteralOrdinal(LiteralOrdinalContext ctx) {
    return visitOrdinal(ctx.ordinal()!);
  }

  @override
  ValueExpr visitLiteralString(LiteralStringContext ctx) {
    final strRaw = ctx.STRING_LITERAL()!.text!;
    return val(strRaw.substring(1, strRaw.length - 1));
  }

  @override
  ValueExpr visitLiteralNumber(LiteralNumberContext ctx) {
    final string = ctx.NUMBER_LITERAL()!.text!;
    return val(string);
  }

  @override
  ValueExpr visitLiteralBool(LiteralBoolContext ctx) {
    final string = ctx.BOOL_LITERAL()!.text!;
    return val(string);
  }
}
