import 'package:flutter/material.dart';

import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsSwitch extends StatelessWidget {
  const SemanticsSwitch({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.onChanged,
    this.properties,
    this.testOnly = false,
  });

  final Widget child;
  final bool value;
  final String? label;
  final ValueChanged<bool>? onChanged;
  final Map<String, String>? properties;
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      enabled: onChanged != null,
      toggled: value,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
