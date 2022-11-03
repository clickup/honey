import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsLink extends StatelessWidget {
  const SemanticsLink({
    super.key,
    required this.child,
    this.label,
    this.tooltip,
    this.onTap,
    this.properties,
    this.testOnly = false,
  });

  final Widget child;
  final String? label;
  final String? tooltip;
  final VoidCallback? onTap;
  final Map<String, String>? properties;
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      tooltip: tooltip,
      onTap: onTap,
      enabled: onTap != null,
      link: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
