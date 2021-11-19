import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsButton extends StatelessWidget {
  final Widget child;
  final String label;
  final VoidCallback? onTap;
  final Map<String, dynamic>? properties;
  final bool testOnly;

  const SemanticsButton({
    Key? key,
    required this.child,
    required this.label,
    this.onTap,
    this.properties,
    this.testOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      onTap: onTap,
      enabled: onTap != null,
      button: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
