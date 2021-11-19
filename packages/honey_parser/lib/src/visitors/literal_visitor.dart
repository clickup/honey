import 'package:honey_parser/src/antlr.dart';

class LiteralVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitLiteralCardinal(LiteralCardinalContext ctx) {
    return ctx.cardinalValue()!.ruleIndex.toString();
  }

  @override
  String visitLiteralString(LiteralStringContext ctx) {
    final str = ctx.STRING_LITERAL()!.text!;
    return str.substring(1, str.length - 1);
  }

  @override
  String visitLiteralNumber(LiteralNumberContext ctx) {
    return ctx.NUMBER_LITERAL()!.text!;
  }

  @override
  String? visitLiteralBool(LiteralBoolContext ctx) {
    return ctx.BOOL_LITERAL()!.text!;
  }
}
