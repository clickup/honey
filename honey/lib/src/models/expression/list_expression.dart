part of 'expression.dart';

@immutable
class ListExp extends Expression {
  const ListExp(
    this.list, {
    super.retry = false,
  });

  const ListExp.empty({super.retry = false}) : list = const [];

  final List<Expression> list;

  @override
  bool get isEmpty => list.isEmpty;

  @override
  bool get isNotEmpty => list.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      other is ListExp &&
      const ListEquality<Expression>().equals(list, other.list);

  @override
  int get hashCode => Object.hashAll(list);

  @override
  String toString() => 'ListExp(list: $list)';
}
