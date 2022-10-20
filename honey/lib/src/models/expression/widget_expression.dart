import 'package:flutter/rendering.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/models/expression/expression.dart';

class WidgetExp extends Expression {
  const WidgetExp({
    required this.data,
    required this.rect,
    required this.properties,
    required super.retry,
  });

  final SemanticsData data;
  final Rect rect;
  final Map<String, dynamic> properties;

  ValueExp? getProperty(String property) {
    switch (Property.fromName(property)) {
      // widget types
      case Property.widget:
        return ValueExp(true, retry: true);
      case Property.button:
        return ValueExp(data.hasFlag(SemanticsFlag.isButton), retry: true);
      case Property.link:
        return ValueExp(data.hasFlag(SemanticsFlag.isLink), retry: true);
      case Property.textfield:
        return ValueExp(data.hasFlag(SemanticsFlag.isTextField), retry: true);
      case Property.image:
        return ValueExp(data.hasFlag(SemanticsFlag.isImage), retry: true);
      case Property.slider:
        return ValueExp(data.hasFlag(SemanticsFlag.isSlider), retry: true);
      case Property.checkable:
      case Property.checkbox:
        final checkable = data.hasFlag(SemanticsFlag.hasCheckedState) ||
            data.hasFlag(SemanticsFlag.isChecked);
        return ValueExp(checkable, retry: true);
      case Property.toggleable:
      case Property.sswitch:
        final toggleable = data.hasFlag(SemanticsFlag.hasToggledState) ||
            data.hasFlag(SemanticsFlag.isToggled);
        return ValueExp(toggleable, retry: true);
      case Property.header:
        return ValueExp(data.hasFlag(SemanticsFlag.isHeader), retry: true);
      // attributes
      case Property.clickable:
        return ValueExp(data.hasAction(SemanticsAction.tap), retry: true);
      case Property.longClickable:
        return ValueExp(data.hasAction(SemanticsAction.longPress), retry: true);
      case Property.scrollable:
        final scrollable = data.hasAction(SemanticsAction.scrollUp) ||
            data.hasAction(SemanticsAction.scrollDown) ||
            data.hasAction(SemanticsAction.scrollLeft) ||
            data.hasAction(SemanticsAction.scrollRight);
        return ValueExp(scrollable, retry: true);
      case Property.checked:
        return ValueExp(data.hasFlag(SemanticsFlag.isChecked), retry: true);
      case Property.unchecked:
        final unchecked = data.hasFlag(SemanticsFlag.hasCheckedState) &&
            !data.hasFlag(SemanticsFlag.isChecked);
        return ValueExp(unchecked, retry: true);
      case Property.toggled:
        return ValueExp(data.hasFlag(SemanticsFlag.isToggled), retry: true);
      case Property.enableable:
        final enableable = data.hasFlag(SemanticsFlag.hasEnabledState) ||
            data.hasFlag(SemanticsFlag.isEnabled);
        return ValueExp(enableable, retry: true);
      case Property.enabled:
        return ValueExp(data.hasFlag(SemanticsFlag.isEnabled), retry: true);
      case Property.disabled:
        final disabled = data.hasFlag(SemanticsFlag.hasEnabledState) &&
            !data.hasFlag(SemanticsFlag.isEnabled);
        return ValueExp(disabled, retry: true);
      case Property.focusable:
        final focusable = data.hasFlag(SemanticsFlag.isFocusable) ||
            data.hasFlag(SemanticsFlag.isFocused);
        return ValueExp(focusable, retry: true);
      case Property.focused:
        return ValueExp(data.hasFlag(SemanticsFlag.isFocused), retry: true);
      case Property.multiline:
        return ValueExp(data.hasFlag(SemanticsFlag.isMultiline), retry: true);
      case Property.selected:
        return ValueExp(data.hasFlag(SemanticsFlag.isSelected), retry: true);
      case Property.obscured:
        return ValueExp(data.hasFlag(SemanticsFlag.isObscured), retry: true);
      case Property.readonly:
        return ValueExp(data.hasFlag(SemanticsFlag.isReadOnly), retry: true);
      // properties
      case Property.label:
        return ValueExp(data.label, retry: true);
      case Property.value:
        return ValueExp(data.value, retry: true);
      case Property.hint:
        return ValueExp(data.hint, retry: true);
      // ignore: no_default_cases
      default:
        if (properties.containsKey(property)) {
          final val = properties[property];
          if (val != null) {
            return ValueExp(val, retry: true);
          }
        }
        return const ValueExp.empty(retry: true);
    }
  }

  static const semanticsAttrs = [
    'widget',
    'button',
    'link',
    'textfield',
    'image',
    'slider',
    'checkable',
    'checkbox',
    'toggleable',
    'switch',
    'header',
    'clickable',
    'long-clickable',
    'scrollable',
    'checked',
    'unchecked',
    'toggled',
    'enableable',
    'enabled',
    'disabled',
    'focusable',
    'focused',
    'multiline',
    'selected',
    'obscured',
    'readonly',
  ];
}
