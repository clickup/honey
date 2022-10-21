import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class SemanticsDataPainter extends StatelessWidget {
  const SemanticsDataPainter({
    super.key,
    required this.data,
    required this.color,
  });

  final SemanticsData data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: color,
          ),
        ),
      ),
    );
  }
}
