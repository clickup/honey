part of 'expression.dart';

@immutable
class FunctionExp extends Expression {
  const FunctionExp(
    this.function,
    this.params, {
    super.retry = false,
  });

  final HoneyFunction function;

  final List<Expression> params;

  @override
  bool operator ==(Object other) =>
      other is FunctionExp &&
      function == other.function &&
      const ListEquality<Expression>().equals(params, other.params);

  @override
  int get hashCode => Object.hashAll([function, ...params]);

  @override
  String toString() => 'FunctionExp(function: $function, params: $params)';
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
  startsWith,
  endsWith,
  contains,
  matches,
  concat;
}
