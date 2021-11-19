import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:honey_core/honey_core.dart';

class WidgetExp extends Expression {
  final SemanticsData data;
  final Rect rect;
  final Map<String, dynamic> properties;

  const WidgetExp({
    required this.data,
    required this.rect,
    required this.properties,
  });

  @override
  bool get retry => false;

  ValueExp? getProperty(String property) {
    final s = data;
    property = property.toLowerCase();
    switch (property) {
      // widget types
      case 'widget':
        return ValueExp(true, retry: true);
      case 'button':
        return ValueExp(s.hasFlag(SemanticsFlag.isButton), retry: true);
      case 'link':
        return ValueExp(s.hasFlag(SemanticsFlag.isLink), retry: true);
      case 'textfield':
        return ValueExp(s.hasFlag(SemanticsFlag.isTextField), retry: true);
      case 'image':
        return ValueExp(s.hasFlag(SemanticsFlag.isImage), retry: true);
      case 'slider':
        return ValueExp(s.hasFlag(SemanticsFlag.isSlider), retry: true);
      case 'checkable':
      case 'checkbox':
        final checkable = s.hasFlag(SemanticsFlag.hasCheckedState) ||
            s.hasFlag(SemanticsFlag.isChecked);
        return ValueExp(checkable, retry: true);
      case 'toggleable':
      case 'switch':
        final toggleable = s.hasFlag(SemanticsFlag.hasToggledState) ||
            s.hasFlag(SemanticsFlag.isToggled);
        return ValueExp(toggleable, retry: true);
      case 'header':
        return ValueExp(s.hasFlag(SemanticsFlag.isHeader), retry: true);
      // attributes
      case 'clickable':
        return ValueExp(s.hasAction(SemanticsAction.tap), retry: true);
      case 'long-clickable':
        return ValueExp(s.hasAction(SemanticsAction.longPress), retry: true);
      case 'scrollable':
        final scrollable = s.hasAction(SemanticsAction.scrollUp) ||
            s.hasAction(SemanticsAction.scrollDown) ||
            s.hasAction(SemanticsAction.scrollLeft) ||
            s.hasAction(SemanticsAction.scrollRight);
        return ValueExp(scrollable, retry: true);
      case 'checked':
        return ValueExp(s.hasFlag(SemanticsFlag.isChecked), retry: true);
      case 'unchecked':
        final unchecked = s.hasFlag(SemanticsFlag.hasCheckedState) &&
            !s.hasFlag(SemanticsFlag.isChecked);
        return ValueExp(unchecked, retry: true);
      case 'toggled':
        return ValueExp(s.hasFlag(SemanticsFlag.isToggled), retry: true);
      case 'enableable':
        final enableable = s.hasFlag(SemanticsFlag.hasEnabledState) ||
            s.hasFlag(SemanticsFlag.isEnabled);
        return ValueExp(enableable, retry: true);
      case 'enabled':
        return ValueExp(s.hasFlag(SemanticsFlag.isEnabled), retry: true);
      case 'disabled':
        final disabled = s.hasFlag(SemanticsFlag.hasEnabledState) &&
            !s.hasFlag(SemanticsFlag.isEnabled);
        return ValueExp(disabled, retry: true);
      case 'focusable':
        final focusable = s.hasFlag(SemanticsFlag.isFocusable) ||
            s.hasFlag(SemanticsFlag.isFocused);
        return ValueExp(focusable, retry: true);
      case 'focused':
        return ValueExp(s.hasFlag(SemanticsFlag.isFocused), retry: true);
      case 'multiline':
        return ValueExp(s.hasFlag(SemanticsFlag.isMultiline), retry: true);
      case 'selected':
        return ValueExp(s.hasFlag(SemanticsFlag.isSelected), retry: true);
      case 'obscured':
        return ValueExp(s.hasFlag(SemanticsFlag.isObscured), retry: true);
      case 'readonly':
        return ValueExp(s.hasFlag(SemanticsFlag.isReadOnly), retry: true);
      // properties
      case 'label':
        return ValueExp(s.label, retry: true);
      case 'value':
        return ValueExp(s.value, retry: true);
      case 'hint':
        return ValueExp(s.hint, retry: true);
      default:
        if (properties.containsKey(property)) {
          final val = properties[property];
          if (val != null) {
            return ValueExp(val, retry: true);
          }
        }
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
