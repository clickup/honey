import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'semantics_data_painter.dart';
import 'package:honey/src/utils/semantics_extension.dart';

typedef WidgetColorChooser = Color Function(SemanticsNode, SemanticsData);
typedef SelectCallback = void Function(SemanticsNode);

class SemanticsNodePainter extends StatelessWidget {
  final SemanticsNode node;
  final WidgetColorChooser colorChooser;
  final SelectCallback onSelect;

  const SemanticsNodePainter({
    Key? key,
    required this.node,
    required this.onSelect,
    this.colorChooser = _defaultColorChooser,
  }) : super(key: key);

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

    if (!node.mergeAllDescendantsIntoThisNode) {
      final children = <SemanticsNode>[];
      node.visitChildren((node) {
        if (node.shouldBeConsidered) {
          children.add(node);
        }
        return true;
      });
      if (children.length > 0) {
        return Positioned.fromRect(
          rect: data.transformedRect,
          child: Stack(
            children: [
              dataPainter,
              for (var child in children)
                SemanticsNodePainter(
                  node: child,
                  onSelect: onSelect,
                ),
            ],
          ),
        );
      }
    }
    return Positioned.fromRect(
      rect: data.transformedRect,
      child: dataPainter,
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
