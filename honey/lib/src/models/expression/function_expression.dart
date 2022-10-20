part of 'expression.dart';

class FunctionExp extends Expression {
  const FunctionExp(
    this.function,
    this.params, {
    super.retry = false,
  });

  final HoneyFunction function;

  final List<Expression> params;
}

enum HoneyFunction {
  // actions
  click,
  verify,
  enter,
  wait,
  swipe,
  print,
  error,

  // core
  and,
  or,
  not,
  controlIf,
  controlWhile,
  widgets,
  property,
  item,
  length,
  variable,
  function,

  // date
  now,
  format,

  // math
  equal,
  greater,
  less,
  plus,
  minus,
  multiply,
  divide,
  pow,

  // string
  matches,
  concat;
}
