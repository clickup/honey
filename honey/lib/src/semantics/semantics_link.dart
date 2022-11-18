import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a link.
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

  /// The link widget.
  final Widget child;

  /// An optional semantic label for the link.
  final String? label;

  /// An optional semantic tooltip for the link.
  final String? tooltip;

  /// An optional callback that is called when the link is tapped. If this is
  /// not provided, the link will be considered disabled.
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
      link: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
