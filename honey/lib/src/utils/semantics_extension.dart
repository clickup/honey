import 'package:collection/collection.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/expression/widget_expr.dart';

extension SemanticsNodeX on SemanticsNode {
  bool get shouldBeConsidered =>
      !isInvisible && !hasFlag(SemanticsFlag.isHidden);

  WidgetExpr toExp({SemanticsData? data}) {
    Map<String, String>? properties;
    final honeyTag =
        tags?.firstWhereOrNull((t) => t.name.startsWith('__honey'));
    if (honeyTag != null) {
      properties =
          HoneyWidgetsBinding.instance.getSemanticsProperties(honeyTag);
    }
    return WidgetExpr(
      data: data ?? getSemanticsData(),
      rect: globalRect,
      properties: properties ?? {},
      retry: false,
    );
  }

  Rect get globalRect {
    var paintBounds = rect;
    SemanticsNode? current = this;
    while (current != null) {
      final transform = current.transform;
      if (transform != null) {
        paintBounds = MatrixUtils.transformRect(transform, paintBounds);
      }
      current = current.parent;
    }
    final devicePixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
    return MatrixUtils.transformRect(
      Matrix4.diagonal3Values(
        1.0 / devicePixelRatio,
        1.0 / devicePixelRatio,
        1.0 / devicePixelRatio,
      ),
      paintBounds,
    );
  }
}
