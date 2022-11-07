import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/runner/errors/honey_error.dart';

Future<EvaluatedExpr> enter(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  final value = await ctx.eval(params[pValue]);
  final textInput = ctx.testTextInput;
  if (value is ValueExpr) {
    if (textInput.hasAnyClients) {
      textInput.enterText(value.value);
      return val(value.value);
    } else {
      throw HoneyError('no text field focused', false);
    }
  } else {
    throw HoneyError('no string value given', value.retry);
  }
}
