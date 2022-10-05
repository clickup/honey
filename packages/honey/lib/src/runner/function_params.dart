import 'package:honey_core/honey_core.dart';

import 'context/honey_context.dart';

class FunctionParams {
  final List<Expression> params;

  const FunctionParams(this.params);

  Expression? getOrNull(int index) {
    if (hasParam(index)) {
      return params[index];
    }
  }

  bool hasParam(int index) => index < params.length;

  Expression get(int index) {
    return getOrNull(index) ?? ValueExp.empty();
  }

  Future<Expression> getAndEval(HoneyContext context, int index) {
    print('$index ${get(index).value ?? ''}');
    return context.eval(get(index));
  }
}
