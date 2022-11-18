import 'package:flutter/material.dart';

import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a checkbox.
class SemanticsCheckbox extends StatelessWidget {
  const SemanticsCheckbox({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.tooltip,
    this.onTap,
    this.properties,
    this.testOnly = false,
  });

  /// The checkbox widget.
  final Widget child;

  /// Whether the checkbox is checked.
  final bool value;

  /// An optional semantic label for the checkbox.
  final String? label;

  /// An optional semantic tooltip for the checkbox.
  final String? tooltip;

  /// An optional callback that is called when the checkbox is tapped. If this is
  /// not provided, the checkbox will be considered disabled.
  final VoidCallback? onTap;

  /// Additional custom properties to pass to the underlying [Semantics] widget.
  final Map<String, String>? properties;

  /// Whether this semantics information is only used for testing.
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
