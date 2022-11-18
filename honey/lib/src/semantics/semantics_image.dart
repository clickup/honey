import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as an image.
class SemanticsImage extends StatelessWidget {
  const SemanticsImage({
    super.key,
    required this.child,
    this.label,
    this.tooltip,
    this.properties,
    this.testOnly = false,
  });

  /// The image widget.
  final Widget child;

  /// An optional semantic label for the image.
  final String? label;

  /// An optional semantic tooltip for the image.
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
      image: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
