import 'package:honey_parser/src/antlr.dart';

enum Direction { Top, Left, Bottom, Right }

class SingleDirectionVisitor extends HoneyTalkBaseVisitor<Direction> {
  @override
  Direction visitSingleDirectionTop(SingleDirectionTopContext ctx) {
    return Direction.Top;
  }

  @override
  Direction visitSingleDirectionLeft(SingleDirectionLeftContext ctx) {
    return Direction.Left;
  }

  @override
  Direction visitSingleDirectionBottom(SingleDirectionBottomContext ctx) {
    return Direction.Bottom;
  }

  @override
  Direction visitSingleDirectionRight(SingleDirectionRightContext ctx) {
    return Direction.Right;
  }
}

class DoubleDirection {
  final Direction direction1;
  final Direction direction2;

  const DoubleDirection(this.direction1, this.direction2);
}

class DoubleDirectionVisitor extends HoneyTalkBaseVisitor<DoubleDirection> {
  @override
  DoubleDirection visitDoubleDirectionTopLeft(
      DoubleDirectionTopLeftContext ctx) {
    return DoubleDirection(Direction.Top, Direction.Left);
  }

  @override
  DoubleDirection? visitDoubleDirectionTopRight(
      DoubleDirectionTopRightContext ctx) {
    return DoubleDirection(Direction.Top, Direction.Right);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomLeft(
      DoubleDirectionBottomLeftContext ctx) {
    return DoubleDirection(Direction.Bottom, Direction.Left);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomRight(
      DoubleDirectionBottomRightContext ctx) {
    return DoubleDirection(Direction.Bottom, Direction.Right);
  }
}
