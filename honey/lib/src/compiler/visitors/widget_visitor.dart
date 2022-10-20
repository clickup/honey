import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/models/expression/expression.dart';

class WidgetVisitor extends HoneyTalkBaseVisitor<FunctionExp> {
  final _identVisitor = _WidgetIdentVisitor();
  @override
  FunctionExp? visitWidget(WidgetContext ctx) {
    final ident = ctx.widgetIdent()!.accept(_identVisitor)!;
    final references = ctx
        .widgetReferences()
        .map((e) => e.accept(referenceVisitor)!.toExp())
        .toList();
    var filter = ctx.widgetWhere()?.expression()?.accept(expressionVisitor);
    filter = filter != null
        ? Builtin.and(ident.attrFilter, filter)
        : ident.attrFilter;
    return Builtin.findWidgets(ident.names, references, filter);
  }
}

class _WidgetIdentVisitor extends HoneyTalkBaseVisitor<_WidgetIdentResult> {
  final nameModifierVisitor = _WidgetNameModifierVisitor();

  @override
  _WidgetIdentResult? visitWidgetIdent(WidgetIdentContext ctx) {
    final nameModifier = ctx.widgetNameModifier()?.accept(nameModifierVisitor);
    final names = ctx.name.map((e) {
      final name = e.accept(literalVisitor)!;
      if (nameModifier != null) {
        return nameModifier(name);
      } else {
        return name;
      }
    }).toList();

    final type = ctx.widgetType()!.accept(typeVisitor)!;
    final attrs = ctx.attr.map((e) => e.text!).toList();
    var attrFilter = Builtin.equal(Builtin.variable(type), ValueExp(true));
    for (final attr in attrs) {
      final attrExp = Builtin.equal(Builtin.variable(attr), ValueExp(true));
      attrFilter = Builtin.and(attrExp, attrFilter);
    }
    return _WidgetIdentResult(names, attrFilter);
  }
}

class _WidgetIdentResult {

  _WidgetIdentResult(this.names, this.attrFilter);
  final List<ValueExp> names;
  final Expression attrFilter;
}

class _WidgetNameModifierVisitor
    extends HoneyTalkBaseVisitor<ValueExp Function(ValueExp)> {
  @override
  ValueExp Function(ValueExp) visitWidgetNameCaseSensitive(
      WidgetNameCaseSensitiveContext ctx,) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return ValueExp.str(RegExp.escape(e.value), regexFlags: '');
      }
    };
  }

  @override
  ValueExp Function(ValueExp) visitWidgetNameCaseInsensitive(
      WidgetNameCaseInsensitiveContext ctx,) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return ValueExp.str(RegExp.escape(e.value), regexFlags: 'i');
      }
    };
  }

  @override
  ValueExp Function(ValueExp) visitWidgetNameExactly(
      WidgetNameExactlyContext ctx,) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return ValueExp.str('^${RegExp.escape(e.value)}\$', regexFlags: '');
      }
    };
  }
}
