import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:honey/src/overlay/semantics_color.dart';
import 'package:honey/src/overlay/semantics_data_painter.dart';
import 'package:honey/src/overlay/semantics_node_painter.dart';
import 'package:honey/src/overlay/semantics_popup.dart';
import 'package:honey/src/semantics/semantics_extension.dart';

class HoneyOverlay extends StatefulWidget {
  const HoneyOverlay({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<HoneyOverlay> createState() => _HoneyOverlayState();
}

class _HoneyOverlayState extends State<HoneyOverlay>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );

  late SemanticsHandle _semanticsHandle;
  SemanticsNode? selectedNode;
  Offset? tapOffset;

  @override
  void initState() {
    _semanticsHandle = WidgetsBinding.instance.pipelineOwner.ensureSemantics(
      listener: () {
        SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
          if (mounted) {
            _handleSemanticsUpdate();
          }
        });
      },
    );
    super.initState();
  }

  SemanticsNode? get rootNode =>
      WidgetsBinding.instance.pipelineOwner.semanticsOwner?.rootSemanticsNode;

  @override
  void dispose() {
    _semanticsHandle.dispose();
    super.dispose();
  }

  void _handleSemanticsUpdate() {
    setState(() {
      if (!(selectedNode?.attached ?? false)) {
        selectedNode = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final root = rootNode;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          Positioned.fill(
            child: widget.child,
          ),
          Positioned.fill(
            child: ExcludeSemantics(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: selectedNode != null
                    ? () {
                        _controller.reverse();
                        setState(() {
                          selectedNode = null;
                        });
                      }
                    : null,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Stack(
                    children: [
                      if (selectedNode == null && root != null)
                        SemanticsNodePainter(
                          node: root,
                          onSelect: (node) {
                            setState(() {
                              selectedNode = node;
                            });
                            print(selectedNode?.tooltip);
                            _controller.forward(from: 0);
                          },
                        ),
                      if (selectedNode != null) ...[
                        Positioned.fromRect(
                          rect: selectedNode!.globalRect,
                          child: SemanticsDataPainter(
                            data: selectedNode!.getSemanticsData(),
                            color: selectedNode!.honeyColor,
                          ),
                        ),
                        SemanticsPopup(
                          animation: CurvedAnimation(
                            parent: _controller,
                            curve: Curves.fastOutSlowIn,
                          ),
                          node: selectedNode!,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
