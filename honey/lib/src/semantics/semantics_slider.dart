import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

/// A widget that annotates the widget tree with a description of the meaning of
/// the widgets and makes sure it is recognized as a slider.
class SemanticsSlider extends StatelessWidget {
  const SemanticsSlider({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.tooltip,
    this.adjustmentUnit = 0.1,
    this.onChanged,
    this.properties,
    this.testOnly = false,
  });

  /// The slider widget.
  final Widget child;

  /// The current value of the slider.
  final double value;

  /// An optional semantic label for the slider.
  final String? label;

  /// An optional semantic tooltip for the slider.
  final String? tooltip;

  /// The amount by which the slider value should be adjusted when the user
  /// increases or decreases the slider value.
  final double adjustmentUnit;

  /// An optional callback that is called when the slider value changes.
  /// If this is not provided, the slider will be considered disabled.
  final ValueChanged<double>? onChanged;

  /// Additional custom properties to pass to the underlying [Semantics] widget.
  final Map<String, String>? properties;

  /// Whether this semantics information is only used for testing.
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    final increased = (value + adjustmentUnit).clamp(0.0, 1.0);
    final decreased = (value - adjustmentUnit).clamp(0.0, 1.0);
    return SemanticsWidget(
      label: label,
      tooltip: tooltip,
      enabled: onChanged != null,
      increasedValue: (increased * 100).round().toString(),
      decreasedValue: (decreased * 100).round().toString(),
      onIncrease: onChanged == null ? null : () => onChanged!(increased),
      onDecrease: onChanged == null ? null : () => onChanged!(decreased),
      value: (value * 100).round().toString(),
      slider: true,
      properties: properties,
      testOnly: testOnly,
      child: child,
    );
  }
}
