import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:collection/collection.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/models/widget_expression.dart';
import 'package:honey_core/honey_core.dart';

extension SemanticsNodeX on SemanticsNode {
  bool get shouldBeConsidered =>
      !isInvisible && !hasFlag(SemanticsFlag.isHidden);

  WidgetExp toExp({SemanticsData? data}) {
    Map<String, dynamic>? properties;
    final honeyTag =
        tags?.firstWhereOrNull((t) => t.name.startsWith('__honey'));
    if (honeyTag != null) {
      properties = HoneyBinding.instance.getSemanticsProperties(honeyTag);
    }
    return WidgetExp(
      data: data ?? getSemanticsData(),
      rect: globalRect,
      properties: properties ?? {},
    );
  }

  Rect get globalRect {
    Rect paintBounds = rect;
    SemanticsNode? current = this;
    while (current != null) {
      if (current.transform != null)
        paintBounds = MatrixUtils.transformRect(
          current.transform!,
          paintBounds,
        );
      current = current.parent;
    }
    final devicePixelRatio = WidgetsBinding.instance!.window.devicePixelRatio;
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

extension SemanticsDataX on SemanticsData {
  bool matchesName(RegExp name) {
    return name.hasMatch(label) || name.hasMatch(value) || name.hasMatch(hint);
  }

  Rect get transformedRect {
    if (transform != null) {
      return MatrixUtils.transformRect(transform!, rect);
    } else {
      return rect;
    }
  }
}
