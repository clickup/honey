import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/runner/context/honey_context.dart';

class FunctionParams {
  const FunctionParams(this.params);

  final List<Expression> params;

  bool hasParam(int index) => index < params.length;

  Expression get(int index) {
    return hasParam(index) ? params[index] : const ValueExp.empty();
  }

  Future<Expression> getAndEval(HoneyContext context, int index) {
    return context.eval(get(index));
  }
}
