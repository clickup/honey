import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

Future<EvaluatedExpr> now(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  return val(DateTime.now());
}
