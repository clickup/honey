import 'package:flutter/material.dart';

import 'semantics_widget.dart';

class SemanticsSwitch extends StatelessWidget {
  final Widget child;
  final bool value;
  final String? label;
  final ValueChanged<bool>? onChanged;
  final Map<String, dynamic>? properties;
  final bool testOnly;

  const SemanticsSwitch({
    Key? key,
    required this.child,
    required this.value,
    this.label,
    this.onChanged,
    this.properties,
    this.testOnly = false,
  }) : super(key: key);

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
