import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';

@immutable
class WidgetExpr with EvaluatedExpr {
  const WidgetExpr({
    required this.data,
    required this.rect,
    this.properties = const {},
    this.retry = false,
  });

  final SemanticsData data;
  final Rect rect;
  final Map<String, String> properties;

  @override
  final bool retry;

  @override
  WidgetExpr withRetry(bool retry) => WidgetExpr(
        data: data,
        rect: rect,
        properties: properties,
        retry: retry,
      );

  @override
  ValueExpr property(String name) => _property(name).withRetry(retry);

  ValueExpr _property(String name) {
    if (properties.containsKey(property)) {
      final value = properties[property];
      if (value != null) {
        return val(value);
      }
    }

    switch (Property.fromName(name)) {
      // widget types
      case Property.widget:
        return val(true);
      case Property.button:
        return val(data.hasFlag(SemanticsFlag.isButton));
      case Property.link:
        return val(data.hasFlag(SemanticsFlag.isLink));
      case Property.textfield:
        return val(data.hasFlag(SemanticsFlag.isTextField));
      case Property.image:
        return val(data.hasFlag(SemanticsFlag.isImage));
      case Property.slider:
        return val(data.hasFlag(SemanticsFlag.isSlider));
      case Property.checkable:
      case Property.checkbox:
        final checkable = data.hasFlag(SemanticsFlag.hasCheckedState) ||
            data.hasFlag(SemanticsFlag.isChecked);
        return val(checkable);
      case Property.toggleable:
      case Property.sswitch:
        final toggleable = data.hasFlag(SemanticsFlag.hasToggledState) ||
            data.hasFlag(SemanticsFlag.isToggled);
        return val(toggleable);
      case Property.header:
        return val(data.hasFlag(SemanticsFlag.isHeader));
      // attributes
      case Property.clickable:
        return val(data.hasAction(SemanticsAction.tap));
      case Property.longClickable:
        return val(data.hasAction(SemanticsAction.longPress));
      case Property.scrollable:
        final scrollable = data.hasAction(SemanticsAction.scrollUp) ||
            data.hasAction(SemanticsAction.scrollDown) ||
            data.hasAction(SemanticsAction.scrollLeft) ||
            data.hasAction(SemanticsAction.scrollRight);
        return val(scrollable);
      case Property.checked:
        return val(data.hasFlag(SemanticsFlag.isChecked));
      case Property.unchecked:
        final unchecked = data.hasFlag(SemanticsFlag.hasCheckedState) &&
            !data.hasFlag(SemanticsFlag.isChecked);
        return val(unchecked);
      case Property.toggled:
        return val(data.hasFlag(SemanticsFlag.isToggled));
      case Property.enableable:
        final enableable = data.hasFlag(SemanticsFlag.hasEnabledState) ||
            data.hasFlag(SemanticsFlag.isEnabled);
        return val(enableable);
      case Property.enabled:
        return val(data.hasFlag(SemanticsFlag.isEnabled));
      case Property.disabled:
        final disabled = data.hasFlag(SemanticsFlag.hasEnabledState) &&
            !data.hasFlag(SemanticsFlag.isEnabled);
        return val(disabled);
      case Property.focusable:
        final focusable = data.hasFlag(SemanticsFlag.isFocusable) ||
            data.hasFlag(SemanticsFlag.isFocused);
        return val(focusable);
      case Property.focused:
        return val(data.hasFlag(SemanticsFlag.isFocused));
      case Property.multiline:
        return val(data.hasFlag(SemanticsFlag.isMultiline));
      case Property.selected:
        return val(data.hasFlag(SemanticsFlag.isSelected));
      case Property.obscured:
        return val(data.hasFlag(SemanticsFlag.isObscured));
      case Property.readonly:
        return val(data.hasFlag(SemanticsFlag.isReadOnly));
      // properties
      case Property.label:
        return val(data.label);
      case Property.value:
        return val(data.value);
      case Property.hint:
        return val(data.hint);
      case Property.width:
        return val(rect.width);
      case Property.height:
        return val(rect.height);
      case Property.size:
        return val('${rect.width}x${rect.height}');
      case Property.area:
        return val(rect.width * rect.height);
      // ignore: no_default_cases
      default:
        return empty(retry: retry);
    }
  }

  @override
  String toDisplayString() {
    return 'Widget(label: ${data.label}, value: ${data.value}, '
        'hint: ${data.hint}, rect: $rect, properties: $properties)';
  }

  @override
  bool operator ==(Object other) =>
      other is WidgetExpr &&
      data == other.data &&
      rect == other.rect &&
      const MapEquality<String, dynamic>().equals(properties, other.properties);

  @override
  int get hashCode => Object.hash(
        data,
        rect,
        const MapEquality<String, dynamic>().hash(properties),
      );

  @override
  String toString() {
    return 'WidgetExpr{data: $data, rect: $rect, properties: $properties}';
  }
}
