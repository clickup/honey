import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class SemanticsDataPainter extends StatelessWidget {
  final SemanticsData data;
  final Color color;

  const SemanticsDataPainter({
    Key? key,
    required this.data,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
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
