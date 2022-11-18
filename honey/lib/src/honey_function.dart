import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/errors/honey_error.dart';

/// Function type for custom functions.
///
/// If something goes wrong you should always throw a [HoneyError] to indicate
/// whether the error is recoverable or not. Take the `retry` property of the
/// parameters into account.
typedef HoneyFunction = Future<EvaluatedExpr> Function(
  HoneyContext ctx,
  Map<String, Expr> params,
);
