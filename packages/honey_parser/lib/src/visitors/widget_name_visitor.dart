import 'package:honey_parser/src/antlr.dart';
import 'package:honey_core/honey_core.dart';

import 'visitors.dart';

class WidgetNameVisitor extends HoneyTalkBaseVisitor<List<ValueExp>> {
  final _nameModifierVisitor = _WidgetNameModifierVisitor();

  ValueExp _defaultModifier(String e) => ValueExp.str(e, regexFlags: "i");

  @override
  List<ValueExp> visitWidgetName(WidgetNameContext ctx) {
    final nameModifier =
        ctx.widgetNameModifier()?.accept(_nameModifierVisitor) ??
            _defaultModifier;

    return ctx.name
        .map((e) => nameModifier(e.accept(literalVisitor)!))
        .toList();
  }
}

class _WidgetNameModifierVisitor
    extends HoneyTalkBaseVisitor<ValueExp Function(String)> {
  @override
  ValueExp Function(String) visitWidgetNameStartingWith(
      WidgetNameStartingWithContext ctx) {
    final exactly = ctx.exactly != null;
    return (e) =>
        ValueExp.str("^${RegExp.escape(e)}", regexFlags: !exactly ? null : "i");
  }

  @override
  ValueExp Function(String) visitWidgetNameEndingWith(
      WidgetNameEndingWithContext ctx) {
    final exactly = ctx.exactly != null;
    return (e) => ValueExp.str("${RegExp.escape(e)}\$",
        regexFlags: !exactly ? null : "i");
  }

  @override
  ValueExp Function(String) visitWidgetNameContaining(
      WidgetNameContainingContext ctx) {
    final exactly = ctx.exactly != null;
    return (e) =>
        ValueExp.str(RegExp.escape(e), regexFlags: !exactly ? null : "i");
  }

  @override
  ValueExp Function(String) visitWidgetNameExactly(
      WidgetNameExactlyContext ctx) {
    return (e) => ValueExp(RegExp.escape(e));
  }

  @override
  ValueExp Function(String) visitWidgetNameMatching(
      WidgetNameMatchingContext ctx) {
    return (e) => ValueExp(e);
  }
}
