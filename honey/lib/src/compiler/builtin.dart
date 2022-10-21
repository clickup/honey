
/*class Builtin {
  static FunctionExp and(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.and, params: [left, right]);
  }

  static FunctionExp or(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.or, params: [left, right]);
  }

  static FunctionExp not(Expression expression) {
    return FunctionExp(function: HoneyFunction.not, params: [expression]);
  }

  static FunctionExp equal(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.equal, params: [left, right]);
  }

  static FunctionExp greater(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.greater, params: [left, right]);
  }

  static FunctionExp less(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.less, params: [left, right]);
  }

  static FunctionExp plus(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.plus, params: [left, right]);
  }

  static FunctionExp minus(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.minus, params: [left, right]);
  }

  static FunctionExp multiply(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.multiply, params: [left, right]);
  }

  static FunctionExp divide(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.divide, params: [left, right]);
  }

  static FunctionExp pow(Expression left, Expression right) {
    return FunctionExp(function: HoneyFunction.pow, params: [left, right]);
  }

  static FunctionExp property(String property, Expression target) {
    return FunctionExp(
      function: HoneyFunction.property,
      params: [ValueExp(property.toLowerCase()), target],
    );
  }

  static FunctionExp item(int item, Expression target) {
    return FunctionExp(
      function: HoneyFunction.item,
      params: [ValueExp(item), target],
    );
  }

  static FunctionExp variable(String variable, {Expression? value}) {
    final params = <Expression>[ValueExp(variable.toLowerCase())];
    if (value != null) {
      params.add(value);
    }
    return FunctionExp(function: HoneyFunction.variable, params: params);
  }

  static FunctionExp concat(
    Expression left,
    Expression right, {
    bool space = false,
  }) {
    var l = left;
    if (space) {
      l = FunctionExp(
        function: HoneyFunction.plus,
        params: [left, ValueExp(' ')],
      );
    }
    return FunctionExp(
      function: HoneyFunction.plus,
      params: [l, right],
    );
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

  static FunctionExp swipe(
    String type,
    Expression? target,
    Expression? offset,
    Expression? pixels,
  ) {
    return FunctionExp(
      "swipe",
      [
        ValueExp(type),
        target.nullable,
        offset.nullable,
        pixels.nullable,
      ],
    );
  }

  static FunctionExp verify(Expression expression) {
    return FunctionExp(HoneyFunction.verify, [expression]);
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
*/