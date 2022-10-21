import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/consts/property.dart';

class PropertyVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitBuiltinPropLength(BuiltinPropLengthContext ctx) {
    return Property.length.name;
  }

  @override
  String visitBuiltinPropChars(BuiltinPropCharsContext ctx) {
    return Property.items.name;
  }

  @override
  String visitBuiltinPropItems(BuiltinPropItemsContext ctx) {
    return Property.items.name;
  }

  @override
  String visitBuiltinPropLines(BuiltinPropLinesContext ctx) {
    return Property.lines.name;
  }

  @override
  String visitBuiltinPropWords(BuiltinPropWordsContext ctx) {
    return Property.words.name;
  }

  @override
  String visitOtherProperty(OtherPropertyContext ctx) {
    return ctx.ID()!.text!;
  }
}
