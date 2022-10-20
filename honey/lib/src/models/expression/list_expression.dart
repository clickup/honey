part of 'expression.dart';

class ListExp extends Expression {
  const ListExp(
    this.list, {
    required super.retry,
  });

  const ListExp.empty({required super.retry}) : list = const [];

  final List<Expression> list;

  @override
  bool get isEmpty => list.isEmpty;

  @override
  bool get isNotEmpty => list.isNotEmpty;
}
