import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/consts/property.dart';

class WidgetTypeVisitor extends HoneyTalkBaseVisitor<Property> {
  @override
  Property visitWidgetTypeWidget(WidgetTypeWidgetContext ctx) {
    return Property.widget;
  }

  @override
  Property visitWidgetTypeButton(WidgetTypeButtonContext ctx) {
    return Property.button;
  }

  @override
  Property visitWidgetTypeLink(WidgetTypeLinkContext ctx) {
    return Property.link;
  }

  @override
  Property visitWidgetTypeTextField(WidgetTypeTextFieldContext ctx) {
    return Property.textfield;
  }

  @override
  Property visitWidgetTypeImage(WidgetTypeImageContext ctx) {
    return Property.image;
  }

  @override
  Property visitWidgetTypeSlider(WidgetTypeSliderContext ctx) {
    return Property.slider;
  }

  @override
  Property visitWidgetTypeCheckBox(WidgetTypeCheckBoxContext ctx) {
    return Property.checkbox;
  }

  @override
  Property visitWidgetTypeSwitch(WidgetTypeSwitchContext ctx) {
    return Property.sswitch;
  }

  @override
  Property visitWidgetTypeHeader(WidgetTypeHeaderContext ctx) {
    return Property.header;
  }
}
