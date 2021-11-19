import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';

import 'direction_visitor.dart';
import 'visitors.dart';

class WidgetReferenceVisitor extends HoneyTalkBaseVisitor<WidgetReference> {
  @override
  WidgetReference visitWidgetReference(WidgetReferenceContext ctx) {
    final widget = ctx.term()?.accept(expressionVisitor);
    final positionVisitor = WidgetReferencePositionVisitor(widget!);
    return ctx.widgetReferencePosition()!.accept(positionVisitor)!;
  }
}

class WidgetReferencePositionVisitor
    extends HoneyTalkBaseVisitor<WidgetReference> {
  static const DS = 0.1;
  static const DL = 0.3;

  final Expression widget;

  WidgetReferencePositionVisitor(this.widget);

  WidgetReference _referenceFraction(
      bool horizontal, double fraction, int index, bool parent) {
    if (horizontal) {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: fraction * index,
        topLeftY: 0,
        bottomRightX: fraction * (index + 1),
        bottomRightY: 1,
      );
    } else {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: 0,
        topLeftY: fraction * index,
        bottomRightX: 1,
        bottomRightY: fraction * (index + 1),
      );
    }
  }

  @override
  WidgetReference visitWidgetReferenceEdge(WidgetReferenceEdgeContext ctx) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.Top:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -DS,
          topLeftY: -DS,
          bottomRightX: 1 + DS,
          bottomRightY: DS,
        );
      case Direction.Left:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -DS,
          topLeftY: -DS,
          bottomRightX: DS,
          bottomRightY: 1 + DS,
        );
      case Direction.Bottom:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -DS,
          topLeftY: 1 - DS,
          bottomRightX: 1 + DS,
          bottomRightY: 1 + DS,
        );
      case Direction.Right:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - DS,
          topLeftY: -DS,
          bottomRightX: 1 + DS,
          bottomRightY: 1 + DS,
        );
    }
  }

  @override
  WidgetReference visitWidgetReferenceCorner(WidgetReferenceCornerContext ctx) {
    final direction = ctx.doubleDirection()!.accept(doubleDirectionVisitor)!;
    final parent = ctx.parent != null;
    if (direction.direction1 == Direction.Top) {
      if (direction.direction2 == Direction.Left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -DS,
          topLeftY: -DS,
          bottomRightX: DS,
          bottomRightY: DS,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - DS,
          topLeftY: -DS,
          bottomRightX: 1 + DS,
          bottomRightY: DS,
        );
      }
    } else {
      if (direction.direction2 == Direction.Left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -DS,
          topLeftY: 1 - DS,
          bottomRightX: DS,
          bottomRightY: 1 + DS,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - DS,
          topLeftY: 1 - DS,
          bottomRightX: 1 + DS,
          bottomRightY: 1 + DS,
        );
      }
    }
  }

  @override
  WidgetReference visitWidgetReferenceHalf(WidgetReferenceHalfContext ctx) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.Top:
        return _referenceFraction(false, 0.5, 0, parent);
      case Direction.Left:
        return _referenceFraction(true, 0.5, 0, parent);
      case Direction.Bottom:
        return _referenceFraction(false, 0.5, 1, parent);
      case Direction.Right:
        return _referenceFraction(true, 0.5, 1, parent);
    }
  }

  @override
  WidgetReference visitWidgetReferenceFraction(
      WidgetReferenceFractionContext ctx) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final fraction = 0.2;
    final index = 1;
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.Top:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.Left:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.Bottom:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.Right:
        return _referenceFraction(false, fraction, index, parent);
    }
  }

  @override
  WidgetReference visitWidgetReferencePercentage(
      WidgetReferencePercentageContext ctx) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final percentage = int.parse(ctx.literal()!.accept(literalVisitor)!);
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.Top:
      case Direction.Bottom:
        return _referenceFraction(
            false, percentage.toDouble() / 100, 0, parent);
      case Direction.Left:
      case Direction.Right:
        return _referenceFraction(true, percentage.toDouble() / 100, 0, parent);
    }
  }

  @override
  WidgetReference visitWidgetReferenceInside(WidgetReferenceInsideContext ctx) {
    final parent = ctx.parent != null;
    return WidgetReference(
      widget: widget,
      parent: parent,
      topLeftX: 0,
      topLeftY: 0,
      bottomRightX: 1,
      bottomRightY: 1,
    );
  }

  @override
  WidgetReference? visitWidgetReferenceTo(WidgetReferenceToContext ctx) {
    final parent = ctx.parent != null;
    final singleDirection =
        ctx.singleDirection()?.accept(singleDirectionVisitor);
    final doubleDirection =
        ctx.doubleDirection()?.accept(doubleDirectionVisitor);
    if (ctx.above != null || singleDirection == Direction.Top) {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: -DL,
        topLeftY: double.negativeInfinity,
        bottomRightX: 1 + DL,
        bottomRightY: 0,
      );
    } else if (ctx.below != null || singleDirection == Direction.Bottom) {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: -DL,
        topLeftY: 0,
        bottomRightX: 1 + DL,
        bottomRightY: double.infinity,
      );
    } else if (singleDirection != null) {
      if (singleDirection == Direction.Left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: double.negativeInfinity,
          topLeftY: -DL,
          bottomRightX: 0,
          bottomRightY: 1 + DL,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1,
          topLeftY: -DL,
          bottomRightX: double.infinity,
          bottomRightY: 1 + DL,
        );
      }
    } else {
      if (doubleDirection!.direction1 == Direction.Top) {
        if (doubleDirection.direction2 == Direction.Left) {
          return WidgetReference(
            widget: widget,
            parent: parent,
            topLeftX: double.negativeInfinity,
            topLeftY: double.infinity,
            bottomRightX: 0,
            bottomRightY: 0,
          );
        } else {
          return WidgetReference(
            widget: widget,
            parent: parent,
            topLeftX: 1,
            topLeftY: double.negativeInfinity,
            bottomRightX: double.infinity,
            bottomRightY: 0,
          );
        }
      } else {
        if (doubleDirection.direction2 == Direction.Left) {
          return WidgetReference(
            widget: widget,
            parent: parent,
            topLeftX: double.negativeInfinity,
            topLeftY: 1,
            bottomRightX: 0,
            bottomRightY: double.infinity,
          );
        } else {
          return WidgetReference(
            widget: widget,
            parent: parent,
            topLeftX: 1,
            topLeftY: 1,
            bottomRightX: double.infinity,
            bottomRightY: double.infinity,
          );
        }
      }
    }
  }
}
