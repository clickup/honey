import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/overlay/semantics_color.dart';
import 'package:honey/src/overlay/semantics_data_painter.dart';
import 'package:honey/src/semantics/semantics_extension.dart';

typedef WidgetColorChooser = Color Function(SemanticsNode, SemanticsData);
typedef SelectCallback = void Function(SemanticsNode);

class SemanticsNodePainter extends StatelessWidget {
  const SemanticsNodePainter({
    super.key,
    required this.node,
    required this.onSelect,
  });

  final SemanticsNode node;
  final SelectCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final dataPainter = GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: SemanticsDataPainter(
        data: node.getSemanticsData(),
        color: node.honeyColor.withAlpha(128),
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
