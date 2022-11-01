import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/errors/honey_error.dart';

Future<EvaluatedExpr> verify(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final expression = await ctx.eval(params[pValue]);

  if (expression is ValueExpr && expression.asBool) {
    return val(expression.asBool);
  } else {
    throw HoneyError('verification failed', expression.retry);
  }
}
