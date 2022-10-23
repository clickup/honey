import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsImage extends StatelessWidget {
  const SemanticsImage({
    super.key,
    required this.child,
    this.label,
    this.properties,
    this.testOnly = false,
  });

  final Widget child;
  final String? label;
  final Map<String, String>? properties;
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      header: true,
      image: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
