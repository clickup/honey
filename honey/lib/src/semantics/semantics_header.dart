import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a header.
class SemanticsHeader extends StatelessWidget {
  const SemanticsHeader({
    super.key,
    required this.child,
    this.label,
    this.tooltip,
    this.properties,
    this.testOnly = false,
  });

  /// The header widget.
  final Widget child;

  /// An optional semantic label for the header.
  final String? label;

  /// An optional semantic tooltip for the header.
  final String? tooltip;

  /// Additional custom properties to pass to the underlying [Semantics] widget.
  final Map<String, String>? properties;

  /// Whether this semantics information is only used for testing.
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    return SemanticsWidget(
      label: label,
      tooltip: tooltip,
      header: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
