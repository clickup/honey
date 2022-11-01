import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

Future<EvaluatedExpr> output(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  ctx.message = value.toDisplayString();
  return val(ctx.message);
}
