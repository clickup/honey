import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/errors/honey_error.dart';

Future<EvaluatedExpr> error(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final messageExpr = await ctx.eval(params[pValue]);
  final message = messageExpr is ValueExpr ? messageExpr.value : '';
  throw HoneyError(message, false);
}
