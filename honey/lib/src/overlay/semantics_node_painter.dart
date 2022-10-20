import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/overlay/semantics_data_painter.dart';
import 'package:honey/src/utils/semantics_extension.dart';

typedef WidgetColorChooser = Color Function(SemanticsNode, SemanticsData);
typedef SelectCallback = void Function(SemanticsNode);

class SemanticsNodePainter extends StatelessWidget {
  const SemanticsNodePainter({
    super.key,
    required this.node,
    required this.onSelect,
    this.colorChooser = _defaultColorChooser,
  });

  final SemanticsNode node;
  final WidgetColorChooser colorChooser;
  final SelectCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final data = node.getSemanticsData();
    final color = colorChooser(node, data);

    final dataPainter = GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: SemanticsDataPainter(
        data: data,
        color: color,
      ),
      onLongPress: () {
        onSelect(node);
      },
    );

    final children = <SemanticsNode>[];
    if (!node.mergeAllDescendantsIntoThisNode) {
      node.visitChildren((node) {
        if (node.shouldBeConsidered) {
          children.add(node);
        }
        return true;
      });
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fromRect(
          rect: node.globalRect,
          child: dataPainter,
        ),
        for (var child in children)
          SemanticsNodePainter(
            node: child,
            onSelect: onSelect,
          ),
      ],
    );
  }
}

Color _defaultColorChooser(SemanticsNode node, SemanticsData data) {
  late Color color;
  if (data.hasFlag(SemanticsFlag.isTextField)) {
    color = Colors.purple;
  } else if (data.hasFlag(SemanticsFlag.hasCheckedState)) {
    color = Colors.orange;
  } else if (data.hasFlag(SemanticsFlag.isLink)) {
    color = Colors.indigo;
  } else if (data.hasFlag(SemanticsFlag.isButton)) {
    color = Colors.green;
  } else if (data.hasAction(SemanticsAction.tap)) {
    color = Colors.yellow;
  } else if (data.hasFlag(SemanticsFlag.isImage)) {
    color = Colors.lightBlue;
  } else if (!node.hasChildren || node.rect != node.parent?.rect) {
    color = Colors.grey;
  } else {
    color = Colors.transparent;
  }
  return color.withAlpha(128);
}
