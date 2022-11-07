import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

typedef HoneyFunction = Future<EvaluatedExpr> Function(
  HoneyContext ctx,
  Map<String, Expr> params,
);
