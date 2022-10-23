import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';

abstract class CoreFunctions {
  static Future<EvaluatedExpr> property(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final property = await ctx.eval(params[pName]);
    final target = await ctx.eval(params[pValue]);
    final retry = property.retry || target.retry;
    if (property is ValueExpr) {
      final value = target.property(property.value);
      return value.withRetry(value.retry || retry);
    } else {
      return empty(retry: retry);
    }
  }

  static Future<EvaluatedExpr> variable(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final variable = await ctx.eval(params[pName]);
    final value =
        params.containsKey(pValue) ? await ctx.eval(params[pValue]) : null;

    if (variable is ValueExpr) {
      if (value != null) {
        ctx.setVariable(variable.value, value);
      }
      final variableValue = ctx.getVariable(variable.value);
      return variableValue.withRetry(variableValue.retry || variable.retry);
    }
    return empty(retry: variable.retry);
  }

  static Future<EvaluatedExpr> concat(
    HoneyContext ctx,
    Map<String, Expr> params,
  ) async {
    final value = await ctx.eval(params[pValue]);
    var result = '';
    var retry = value.retry;
    if (value is EvaluatedListExpr) {
      for (var i = 0; i < value.length; i++) {
        final item = value[i];
        if (item is ValueExpr) {
          result += item.value;
        }
        retry |= value.retry;
      }
    }
    return val(result, retry: retry);
  }
}
