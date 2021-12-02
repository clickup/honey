import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/binding/honey_binding.dart';

typedef _SemanticsBuilder = Widget Function(SemanticsTag? tag);

// ignore: non_constant_identifier_names
Widget SemanticsWidget({
  Key? key,
  required Widget child,
  String? label,
  String? value,
  String? increasedValue,
  String? decreasedValue,
  String? hint,
  bool? button,
  bool? enabled,
  bool? checked,
  bool? selected,
  bool? toggled,
  bool? image,
  bool? header,
  bool? link,
  bool? slider,
  bool? readOnly,
  bool? focused,
  bool? obscured,
  bool? multiline,
  VoidCallback? onTap,
  VoidCallback? onLongPress,
  VoidCallback? onIncrease,
  VoidCallback? onDecrease,
  bool testOnly = false,
  Map<String, dynamic>? properties,
}) {
  _SemanticsBuilder semanticsBuilder() {
    return (tag) {
      return Semantics(
        container: true,
        excludeSemantics: true,
        tagForChildren: tag,
        label: label,
        value: value,
        increasedValue: increasedValue,
        decreasedValue: decreasedValue,
        hint: hint,
        button: button,
        enabled: enabled,
        checked: checked,
        selected: selected,
        toggled: toggled,
        image: image,
        header: header,
        link: link,
        slider: slider,
        readOnly: readOnly,
        focused: focused,
        focusable: focused != null,
        obscured: obscured,
        multiline: multiline,
        onTap: onTap,
        onLongPress: onLongPress,
        onIncrease: onIncrease,
        onDecrease: onDecrease,
        child: child,
      );
    };
  }

  if (kReleaseMode) {
    Widget newChild;
    if (testOnly) {
      newChild = child;
    } else {
      newChild = semanticsBuilder()(null);
    }
    if (key != null) {
      return KeyedSubtree(
        key: key,
        child: newChild,
      );
    } else {
      return newChild;
    }
  } else {
    return _SemanticsWidget(
      key: key,
      builder: semanticsBuilder(),
      properties: properties,
    );
  }
}

class _SemanticsWidget extends StatefulWidget {
  final _SemanticsBuilder builder;
  final Map<String, dynamic>? properties;

  const _SemanticsWidget({
    Key? key,
    required this.builder,
    required this.properties,
  }) : super(key: key);

  @override
  _SemanticsWidgetState createState() => _SemanticsWidgetState();
}

class _SemanticsWidgetState extends State<_SemanticsWidget> {
  static var _tagCounter = 0;
  final _tag = SemanticsTag('__honey{$_tagCounter++}');

  @override
  void initState() {
    super.initState();

    _updateTag();
  }

  @override
  void didUpdateWidget(covariant _SemanticsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.properties != widget.properties) {
      _updateTag();
    }
  }

  void _updateTag() {
    HoneyBinding.instance.updateSemanticsProperties(_tag, widget.properties);
  }

  @override
  void dispose() {
    HoneyBinding.instance.updateSemanticsProperties(_tag, null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(_tag);
  }
}
