import 'package:flutter/material.dart';

import 'semantics_widget.dart';

class SemanticsCheckbox extends StatelessWidget {
  final Widget child;
  final bool value;
  final String? label;
  final VoidCallback? onTap;
  final Map<String, dynamic>? properties;
  final bool testOnly;

  const SemanticsCheckbox({
    Key? key,
    required this.child,
    required this.value,
    this.label,
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
      checked: value,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
