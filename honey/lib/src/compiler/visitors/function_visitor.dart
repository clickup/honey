import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';

class FunctionVisitor extends HoneyTalkBaseVisitor<Expression> {
  @override
  Expression visitFunctionFormat(FunctionFormatContext ctx) {
    final target = ctx.date!.accept(expressionVisitor)!;
    final sourceFormat = ctx.sourceFormat?.accept(expressionVisitor);
    final targetFormat = ctx.targetFormat?.accept(expressionVisitor);
    return FunctionExp(
      HoneyFunction.format,
      [
        target,
        sourceFormat ?? const ValueExp.empty(),
        targetFormat ?? const ValueExp.empty()
      ],
    );
  }

  @override
  Expression visitFunctionNow(FunctionNowContext ctx) {
    return const FunctionExp(HoneyFunction.now, []);
  }

  @override
  Expression? visitFunctionCustom(FunctionCustomContext ctx) {
    final func = ctx.ID()!.text!;
    final params =
        ctx.terms().map((e) => e.accept(expressionVisitor)!).toList();
    return FunctionExp(HoneyFunction.function, [ValueExp(func), ...params]);
  }
}
