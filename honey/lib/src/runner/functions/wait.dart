import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

Future<EvaluatedExpr> wait(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final duration = await ctx.eval(params[pValue]);
  if (duration is ValueExpr) {
    await ctx.delay(Duration(milliseconds: duration.asNum.toInt()));
    return val(duration.asNum.toInt());
  }
  return empty();
}
