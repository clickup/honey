import 'package:honey/src/compiler/antlr.dart';

class WidgetTypeVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitWidgetTypeWidget(WidgetTypeWidgetContext ctx) {
    return "widget";
  }

  @override
  String visitWidgetTypeButton(WidgetTypeButtonContext ctx) {
    return "button";
  }

  @override
  String visitWidgetTypeLink(WidgetTypeLinkContext ctx) {
    return "link";
  }

  @override
  String visitWidgetTypeTextField(WidgetTypeTextFieldContext ctx) {
    return "textfield";
  }

  @override
  String visitWidgetTypeImage(WidgetTypeImageContext ctx) {
    return "image";
  }

  @override
  String visitWidgetTypeSlider(WidgetTypeSliderContext ctx) {
    return "slider";
  }

  @override
  String visitWidgetTypeCheckBox(WidgetTypeCheckBoxContext ctx) {
    return "checkbox";
  }

  @override
  String visitWidgetTypeSwitch(WidgetTypeSwitchContext ctx) {
    return "switch";
  }

  @override
  String visitWidgetTypeList(WidgetTypeListContext ctx) {
    return "list";
  }

  @override
  String visitWidgetTypeHeader(WidgetTypeHeaderContext ctx) {
    return "header";
  }
}
