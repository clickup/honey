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
  ValueExpr visitLiteralString(LiteralStringContext ctx) {
    final strRaw = ctx.STRING_LITERAL()!.text!;
    final parts = strRaw.split('"');
    return str(
      parts.sublist(1, parts.length - 1).join('"'),
      regexFlags: parts.last.isNotEmpty ? parts.last : null,
    );
  }

  @override
  ValueExpr visitLiteralNumber(LiteralNumberContext ctx) {
    final string = ctx.NUMBER_LITERAL()!.text!;
    return str(string);
  }

  @override
  ValueExpr visitLiteralBool(LiteralBoolContext ctx) {
    final string = ctx.BOOL_LITERAL()!.text!;
    return str(string);
  }
}
