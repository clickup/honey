import 'package:flutter/material.dart';

import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a switch.
class SemanticsSwitch extends StatelessWidget {
  const SemanticsSwitch({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.tooltip,
    this.onChanged,
    this.properties,
    this.testOnly = false,
  });

  /// The switch widget.
  final Widget child;

  /// Whether the switch is checked.
  final bool value;

  /// An optional semantic label for the switch.
  final String? label;

  /// An optional semantic tooltip for the switch.
  final String? tooltip;

  /// An optional callback that is called when the switch is toggled. If this is
  /// not provided, the switch will be considered disabled.
  final ValueChanged<bool>? onChanged;

  /// Additional custom properties to pass to the underlying [Semantics] widget.
  final Map<String, String>? properties;

  /// Whether this semantics information is only used for testing.
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      tooltip: tooltip,
      enabled: onChanged != null,
      toggled: value,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
