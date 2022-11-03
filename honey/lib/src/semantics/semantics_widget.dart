import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/honey_widgets_binding.dart';

class SemanticsWidget extends StatefulWidget {
  const SemanticsWidget({
    super.key,
    required this.child,
    this.label,
    this.value,
    this.tooltip,
    this.increasedValue,
    this.decreasedValue,
    this.hint,
    this.button,
    this.enabled,
    this.checked,
    this.selected,
    this.toggled,
    this.image,
    this.header,
    this.link,
    this.slider,
    this.readOnly,
    this.focused,
    this.obscured,
    this.multiline,
    this.onTap,
    this.onLongPress,
    this.onIncrease,
    this.onDecrease,
    this.merge = true,
    this.testOnly = false,
    this.properties,
  });

  final Widget child;
  final String? label;
  final String? value;
  final String? tooltip;
  final String? increasedValue;
  final String? decreasedValue;
  final String? hint;
  final bool? button;
  final bool? enabled;
  final bool? checked;
  final bool? selected;
  final bool? toggled;
  final bool? image;
  final bool? header;
  final bool? link;
  final bool? slider;
  final bool? readOnly;
  final bool? focused;
  final bool? obscured;
  final bool? multiline;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;
  final bool merge;
  final bool testOnly;
  final Map<String, String>? properties;

  @override
  State<SemanticsWidget> createState() => _SemanticsWidgetState();
}

class _SemanticsWidgetState extends State<SemanticsWidget> {
  static int _tagCounter = 0;
  final _tag = SemanticsTag('__honey${_tagCounter++}');

  @override
  void initState() {
    super.initState();

    _updateTag();
  }

  @override
  void didUpdateWidget(covariant SemanticsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.properties != widget.properties) {
      _updateTag();
    }
  }

  void _updateTag() {
    HoneyWidgetsBinding.instance
        .updateSemanticsProperties(_tag, widget.properties);
  }

  @override
  void dispose() {
    HoneyWidgetsBinding.instance.updateSemanticsProperties(_tag, null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.testOnly && kReleaseMode) {
      return widget.child;
    } else {
      final child = Semantics(
        container: true,
        tagForChildren: _tag,
        label: widget.label,
        value: widget.value,
        tooltip: widget.tooltip,
        increasedValue: widget.increasedValue,
        decreasedValue: widget.decreasedValue,
        hint: widget.hint,
        button: widget.button,
        enabled: widget.enabled,
        checked: widget.checked,
        selected: widget.selected,
        toggled: widget.toggled,
        image: widget.image,
        header: widget.header,
        link: widget.link,
        slider: widget.slider,
        readOnly: widget.readOnly,
        focused: widget.focused,
        focusable: widget.focused != null,
        obscured: widget.obscured,
        multiline: widget.multiline,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        onIncrease: widget.onIncrease,
        onDecrease: widget.onDecrease,
        child: widget.child,
      );
      if (widget.merge) {
        return MergeSemantics(child: child);
      } else {
        return child;
      }
    }
  }
}
