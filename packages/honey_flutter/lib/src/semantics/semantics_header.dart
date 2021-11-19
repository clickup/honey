import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsHeader extends StatelessWidget {
  final Widget child;
  final String? label;
  final Map<String, dynamic>? properties;
  final bool testOnly;

  const SemanticsHeader({
    Key? key,
    required this.child,
    this.label,
    this.properties,
    this.testOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      header: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
