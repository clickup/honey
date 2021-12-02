import 'package:honey_parser/src/antlr.dart';

enum Direction { top, left, bottom, right }

class SingleDirectionVisitor extends HoneyTalkBaseVisitor<Direction> {
  @override
  Direction visitSingleDirectionTop(SingleDirectionTopContext ctx) {
    return Direction.top;
  }

  @override
  Direction visitSingleDirectionLeft(SingleDirectionLeftContext ctx) {
    return Direction.left;
  }

  @override
  Direction visitSingleDirectionBottom(SingleDirectionBottomContext ctx) {
    return Direction.bottom;
  }

  @override
  Direction visitSingleDirectionRight(SingleDirectionRightContext ctx) {
    return Direction.right;
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
    return DoubleDirection(Direction.top, Direction.left);
  }

  @override
  DoubleDirection? visitDoubleDirectionTopRight(
      DoubleDirectionTopRightContext ctx) {
    return DoubleDirection(Direction.top, Direction.right);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomLeft(
      DoubleDirectionBottomLeftContext ctx) {
    return DoubleDirection(Direction.bottom, Direction.left);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomRight(
      DoubleDirectionBottomRightContext ctx) {
    return DoubleDirection(Direction.bottom, Direction.right);
  }
}
