import 'package:honey_core/honey_core.dart';

class Builtin {
  static FunctionExp and(Expression left, Expression right) {
    return FunctionExp("and", [left, right]);
  }

  static FunctionExp or(Expression left, Expression right) {
    return FunctionExp("or", [left, right]);
  }

  static FunctionExp not(Expression expression) {
    return FunctionExp("not", [expression]);
  }

  static FunctionExp equal(Expression left, Expression right) {
    return FunctionExp("equal", [left, right]);
  }

  static FunctionExp greater(Expression left, Expression right) {
    return FunctionExp("greater", [left, right]);
  }

  static FunctionExp less(Expression left, Expression right) {
    return FunctionExp("less", [left, right]);
  }

  static FunctionExp plus(Expression left, Expression right) {
    return FunctionExp("plus", [left, right]);
  }

  static FunctionExp minus(Expression left, Expression right) {
    return FunctionExp("minus", [left, right]);
  }

  static FunctionExp multiply(Expression left, Expression right) {
    return FunctionExp("multiply", [left, right]);
  }

  static FunctionExp divide(Expression left, Expression right) {
    return FunctionExp("divide", [left, right]);
  }

  static FunctionExp pow(Expression left, Expression right) {
    return FunctionExp("pow", [left, right]);
  }

  static FunctionExp property(String property, Expression target) {
    return FunctionExp("property", [ValueExp(property.toLowerCase()), target]);
  }

  static FunctionExp item(int item, Expression target) {
    return FunctionExp("item", [ValueExp(item.toString()), target]);
  }

  static FunctionExp variable(String variable, {Expression? value}) {
    final params = <Expression>[ValueExp(variable.toLowerCase())];
    if (value != null) {
      params.add(value);
    }
    return FunctionExp("variable", params);
  }

  static FunctionExp concat(Expression left, Expression right,
      {bool space = false}) {
    var l = left;
    if (space) {
      l = FunctionExp("concat", [left, ValueExp(" ")]);
    }
    return FunctionExp("concat", [l, right]);
  }

  static FunctionExp matches(Expression value, Expression regex) {
    return FunctionExp('matches', [value, regex]);
  }

  static FunctionExp format(
      Expression date, Expression? sourceFormat, Expression? targetFormat) {
    return FunctionExp("format", [
      date,
      sourceFormat.nullable,
      targetFormat.nullable,
    ]);
  }

  static FunctionExp now() {
    return FunctionExp("now", []);
  }

  static FunctionExp findWidgets(
      List<ValueExp> names, List<Expression> references, Expression? filter) {
    return FunctionExp("findWidgets", [
      filter ?? ValueExp(true),
      ListExp(names),
      ListExp(references),
    ]);
  }

  static FunctionExp widgets(Expression widget) {
    return FunctionExp("widgets", [widget]);
  }

  static FunctionExp click(
      String type, Expression? target, Expression? offset) {
    return FunctionExp(
      "click",
      [
        ValueExp(type),
        target.nullable,
        offset.nullable,
      ],
    );
  }

  static FunctionExp verify(Expression expression) {
    return FunctionExp("verify", [expression]);
  }

  static FunctionExp enter(Expression value) {
    return FunctionExp("enter", [value]);
  }

  static FunctionExp wait(Expression value) {
    return FunctionExp("wait", [value]);
  }

  static FunctionExp print(Expression value) {
    return FunctionExp("print", [value]);
  }
}
