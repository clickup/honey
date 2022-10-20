import 'package:honey/src/models/expression/expression.dart';

class WidgetReference {

  WidgetReference({
    required this.widget,
    required this.parent,
    required this.topLeftX,
    required this.topLeftY,
    required this.bottomRightX,
    required this.bottomRightY,
  });

  factory WidgetReference.fromExp(Expression exp) {
    if (exp is ListExp) {
      return WidgetReference(
        widget: exp.list[0],
        parent: exp.list[1].asBool,
        topLeftX: exp.list[2].asNum.toDouble(),
        topLeftY: exp.list[3].asNum.toDouble(),
        bottomRightX: exp.list[4].asNum.toDouble(),
        bottomRightY: exp.list[5].asNum.toDouble(),
      );
    }
    throw 'Invalid widget reference';
  }
  final Expression? widget;
  final bool parent;
  final double topLeftX;
  final double topLeftY;
  final double bottomRightX;
  final double bottomRightY;

  ListExp toExp() {
    return ListExp(
      [
        //widget.nullable,
        ValueExp(parent),
        ValueExp(topLeftX),
        ValueExp(topLeftY),
        ValueExp(bottomRightX),
        ValueExp(bottomRightY),
      ],
      retry: true,
    );
  }
}
