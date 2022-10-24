/*import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/runner/widget_reference.dart';

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
  WidgetReferencePositionVisitor(this.widget);

  static const ds = 0.1;
  static const dl = 0.3;

  final Expr widget;

  WidgetReference _referenceFraction(
    bool horizontal,
    double fraction,
    int index,
    bool parent,
  ) {
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
      case Direction.top:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -ds,
          topLeftY: -ds,
          bottomRightX: 1 + ds,
          bottomRightY: ds,
        );
      case Direction.left:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -ds,
          topLeftY: -ds,
          bottomRightX: ds,
          bottomRightY: 1 + ds,
        );
      case Direction.bottom:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -ds,
          topLeftY: 1 - ds,
          bottomRightX: 1 + ds,
          bottomRightY: 1 + ds,
        );
      case Direction.right:
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - ds,
          topLeftY: -ds,
          bottomRightX: 1 + ds,
          bottomRightY: 1 + ds,
        );
    }
  }

  @override
  WidgetReference visitWidgetReferenceCorner(WidgetReferenceCornerContext ctx) {
    final direction = ctx.doubleDirection()!.accept(doubleDirectionVisitor)!;
    final parent = ctx.parent != null;
    if (direction.direction1 == Direction.top) {
      if (direction.direction2 == Direction.left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -ds,
          topLeftY: -ds,
          bottomRightX: ds,
          bottomRightY: ds,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - ds,
          topLeftY: -ds,
          bottomRightX: 1 + ds,
          bottomRightY: ds,
        );
      }
    } else {
      if (direction.direction2 == Direction.left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: -ds,
          topLeftY: 1 - ds,
          bottomRightX: ds,
          bottomRightY: 1 + ds,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1 - ds,
          topLeftY: 1 - ds,
          bottomRightX: 1 + ds,
          bottomRightY: 1 + ds,
        );
      }
    }
  }

  @override
  WidgetReference visitWidgetReferenceHalf(WidgetReferenceHalfContext ctx) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.top:
        return _referenceFraction(false, 0.5, 0, parent);
      case Direction.left:
        return _referenceFraction(true, 0.5, 0, parent);
      case Direction.bottom:
        return _referenceFraction(false, 0.5, 1, parent);
      case Direction.right:
        return _referenceFraction(true, 0.5, 1, parent);
    }
  }

  @override
  WidgetReference visitWidgetReferenceFraction(
    WidgetReferenceFractionContext ctx,
  ) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    const fraction = 0.2;
    const index = 1;
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.top:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.left:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.bottom:
        return _referenceFraction(false, fraction, index, parent);
      case Direction.right:
        return _referenceFraction(false, fraction, index, parent);
    }
  }

  @override
  WidgetReference visitWidgetReferencePercentage(
    WidgetReferencePercentageContext ctx,
  ) {
    final direction = ctx.singleDirection()!.accept(singleDirectionVisitor)!;
    final percentage = int.parse(ctx.literal()!.accept(literalVisitor)!.value);
    final parent = ctx.parent != null;
    switch (direction) {
      case Direction.top:
      case Direction.bottom:
        return _referenceFraction(
          false,
          percentage.toDouble() / 100,
          0,
          parent,
        );
      case Direction.left:
      case Direction.right:
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
    if (ctx.above != null || singleDirection == Direction.top) {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: -dl,
        topLeftY: double.negativeInfinity,
        bottomRightX: 1 + dl,
        bottomRightY: 0,
      );
    } else if (ctx.below != null || singleDirection == Direction.bottom) {
      return WidgetReference(
        widget: widget,
        parent: parent,
        topLeftX: -dl,
        topLeftY: 0,
        bottomRightX: 1 + dl,
        bottomRightY: double.infinity,
      );
    } else if (singleDirection != null) {
      if (singleDirection == Direction.left) {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: double.negativeInfinity,
          topLeftY: -dl,
          bottomRightX: 0,
          bottomRightY: 1 + dl,
        );
      } else {
        return WidgetReference(
          widget: widget,
          parent: parent,
          topLeftX: 1,
          topLeftY: -dl,
          bottomRightX: double.infinity,
          bottomRightY: 1 + dl,
        );
      }
    } else {
      if (doubleDirection!.direction1 == Direction.top) {
        if (doubleDirection.direction2 == Direction.left) {
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
        if (doubleDirection.direction2 == Direction.left) {
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