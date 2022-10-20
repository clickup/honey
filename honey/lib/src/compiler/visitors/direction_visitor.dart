import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/compiler/antlr.dart';

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
  const DoubleDirection(this.direction1, this.direction2);

  final Direction direction1;
  final Direction direction2;
}

class DoubleDirectionVisitor extends HoneyTalkBaseVisitor<DoubleDirection> {
  @override
  DoubleDirection visitDoubleDirectionTopLeft(
    DoubleDirectionTopLeftContext ctx,
  ) {
    return const DoubleDirection(Direction.top, Direction.left);
  }

  @override
  DoubleDirection? visitDoubleDirectionTopRight(
    DoubleDirectionTopRightContext ctx,
  ) {
    return const DoubleDirection(Direction.top, Direction.right);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomLeft(
    DoubleDirectionBottomLeftContext ctx,
  ) {
    return const DoubleDirection(Direction.bottom, Direction.left);
  }

  @override
  DoubleDirection visitDoubleDirectionBottomRight(
    DoubleDirectionBottomRightContext ctx,
  ) {
    return const DoubleDirection(Direction.bottom, Direction.right);
  }
}
