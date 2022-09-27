import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/src/models/widget_expression.dart';
import 'package:honey/src/utils/semantics_extension.dart';

class _SemanticsPopupPositionDelegate extends SingleChildLayoutDelegate {
  _SemanticsPopupPositionDelegate({
    required this.target,
  });

  final Offset target;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      constraints.loosen();

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return positionDependentBox(
      size: size,
      childSize: childSize,
      target: target,
      verticalOffset: 10,
      preferBelow: false,
    );
  }

  @override
  bool shouldRelayout(_SemanticsPopupPositionDelegate oldDelegate) {
    return target != oldDelegate.target;
  }
}

class SemanticsPopup extends StatelessWidget {
  const SemanticsPopup({
    Key? key,
    required this.animation,
    required this.node,
  }) : super(key: key);

  final SemanticsNode node;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final widget = node.toExp();
    final attrs = WidgetExp.semanticsAttrs
        .map((e) {
          final result = widget.getProperty(e);
          if ((result?.isBool ?? false) && result!.asBool) {
            return e;
          }
        })
        .where((e) => e != null)
        .cast<String>()
        .toList();
    return Positioned.fill(
      child: IgnorePointer(
        child: CustomSingleChildLayout(
          delegate: _SemanticsPopupPositionDelegate(
            target: node.globalRect.center,
          ),
          child: FadeTransition(
            opacity: animation,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[500],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(8),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.grey[700]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.data.label.isNotEmpty)
                      _Property('label', widget.data.label),
                    if (widget.data.hint.isNotEmpty)
                      _Property('hint', widget.data.hint),
                    if (widget.data.value.isNotEmpty)
                      _Property('value', widget.data.value),
                    if (attrs.isNotEmpty) _Property('attrs', attrs.join(', ')),
                    _Property(
                      'offset',
                      '${widget.rect.topLeft.dx.toStringAsFixed(1)}, '
                          '${widget.rect.topLeft.dy.toStringAsFixed(1)}',
                    ),
                    _Property(
                      'size',
                      '${widget.rect.size.width.toStringAsFixed(1)} x '
                          '${widget.rect.size.height.toStringAsFixed(1)}',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Property extends StatelessWidget {
  final String label;
  final String value;

  const _Property(
    this.label,
    this.value,
  ) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 50,
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(value),
        ],
      ),
    );
  }
}
