import 'package:antlr4/antlr4.dart';

extension ParserRuleContextX on ParserRuleContext {
  String get source =>
      start!.inputStream!.getText(Interval(start!.startIndex, stop!.stopIndex));
}
