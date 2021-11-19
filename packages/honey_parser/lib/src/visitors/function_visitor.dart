import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/builtin.dart';

import 'visitors.dart';

class FunctionVisitor extends HoneyTalkBaseVisitor<Expression> {
  @override
  Expression visitFunctionFormat(FunctionFormatContext ctx) {
    final target = ctx.date!.accept(expressionVisitor)!;
    final sourceFormat = ctx.sourceFormat?.accept(expressionVisitor);
    final targetFormat = ctx.targetFormat?.accept(expressionVisitor);
    return Builtin.format(target, sourceFormat, targetFormat);
  }

  @override
  Expression visitFunctionNow(FunctionNowContext ctx) {
    return Builtin.now();
  }

  @override
  Expression? visitFunctionCustom(FunctionCustomContext ctx) {
    final func = ctx.ID()!.text!;
    final params =
        ctx.terms().map((e) => e.accept(expressionVisitor)!).toList();
    return FunctionExp(func, params);
  }
}
