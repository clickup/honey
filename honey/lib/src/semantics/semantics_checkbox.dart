import 'package:flutter/material.dart';

import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsCheckbox extends StatelessWidget {
  const SemanticsCheckbox({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.onTap,
    this.properties,
    this.testOnly = false,
  });

  final Widget child;
  final bool value;
  final String? label;
  final VoidCallback? onTap;
  final Map<String, String>? properties;
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      onTap: onTap,
      enabled: onTap != null,
      checked: value,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
