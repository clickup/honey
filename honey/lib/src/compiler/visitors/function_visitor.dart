import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/function.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';

class FunctionVisitor extends HoneyTalkBaseVisitor<Expr> {
  @override
  Expr visitFunctionFormat(FunctionFormatContext ctx) {
    final target = ctx.date!.accept(expressionVisitor)!;
    final sourceFormat = ctx.sourceFormat?.accept(expressionVisitor) ?? empty();
    final targetFormat = ctx.targetFormat?.accept(expressionVisitor) ?? empty();
    return func(F.format, {
      pValue: target,
      pInput: sourceFormat,
      pOutput: targetFormat,
    });
  }

  @override
  Expr visitFunctionNow(FunctionNowContext ctx) {
    return func(F.now, {});
  }

  @override
  Expr visitFunctionCustom(FunctionCustomContext ctx) {
    final name = ctx.ID()!.text!;
    final params = <Expr>[];
    var unnamedParams = 0;
    for (final param in ctx.functionParams()) {
      final paramName = param.ID()?.text ?? (unnamedParams++).toString();
      final paramValue = param.term()!.accept(expressionVisitor)!;
      params
        ..add(val(paramName))
        ..add(paramValue);
    }
    return func(F.function, {pName: val(name), pValue: list(params)});
  }
}
