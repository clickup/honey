import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

Future<EvaluatedExpr> output(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  final output = value.toDisplayString();
  ctx.print(output);
  return val(output);
}
