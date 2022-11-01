import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

Future<EvaluatedExpr> matches(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  final pattern = await ctx.eval(params[pInput]);
  if (value is ValueExpr && pattern is ValueExpr) {
    return val(pattern.value.allMatches(value.value));
  }
  return empty();
}
