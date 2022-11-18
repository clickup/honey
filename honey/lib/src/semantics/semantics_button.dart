import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a button.
class SemanticsButton extends StatelessWidget {
  const SemanticsButton({
    super.key,
    required this.child,
    this.label,
    this.tooltip,
    this.onTap,
    this.properties,
    this.testOnly = false,
  });

  /// The button widget.
  final Widget child;

  /// An optional semantic label for the button.
  final String? label;

  /// An optional semantic tooltip for the button.
  final String? tooltip;

  /// An optional callback that is called when the button is tapped. If this is
  /// not provided, the button will be considered disabled.
  final VoidCallback? onTap;

  /// Additional custom properties to pass to the underlying [Semantics] widget.
  final Map<String, String>? properties;

  /// Whether this semantics information is only used for testing.
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      tooltip: tooltip,
      onTap: onTap,
      enabled: onTap != null,
      button: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
