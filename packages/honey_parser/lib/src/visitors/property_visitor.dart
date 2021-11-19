import 'package:honey_parser/src/antlr.dart';

import 'visitors.dart';

class PropertyVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitBuiltinPropLength(BuiltinPropLengthContext ctx) {
    return "length";
  }

  @override
  String visitBuiltinPropChars(BuiltinPropCharsContext ctx) {
    return "items";
  }

  @override
  String visitBuiltinPropItems(BuiltinPropItemsContext ctx) {
    return "items";
  }

  @override
  String visitBuiltinPropLines(BuiltinPropLinesContext ctx) {
    return "lines";
  }

  @override
  String visitBuiltinPropWords(BuiltinPropWordsContext ctx) {
    return "words";
  }

  @override
  String visitBuiltinPropWidgetType(BuiltinPropWidgetTypeContext ctx) {
    return ctx.widgetType()!.accept(widgetTypeVisitor)!;
  }

  @override
  String visitOtherProperty(OtherPropertyContext ctx) {
    return "property";
  }
}
