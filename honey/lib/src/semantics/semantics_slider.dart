import 'package:flutter/material.dart';
import 'package:honey/src/semantics/semantics_widget.dart';

class SemanticsSlider extends StatelessWidget {
  const SemanticsSlider({
    super.key,
    required this.child,
    required this.value,
    this.label,
    this.adjustmentUnit = 0.1,
    this.onChanged,
    this.properties,
    this.testOnly = false,
  });

  final Widget child;
  final double value;
  final String? label;
  final double adjustmentUnit;
  final ValueChanged<double>? onChanged;
  final Map<String, String>? properties;
  final bool testOnly;

  @override
  Widget build(BuildContext context) {
    final increased = (value + adjustmentUnit).clamp(0.0, 1.0);
    final decreased = (value - adjustmentUnit).clamp(0.0, 1.0);
    return SemanticsWidget(
      label: label,
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
