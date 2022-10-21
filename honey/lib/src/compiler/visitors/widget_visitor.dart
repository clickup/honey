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
    final filter = ctx.widgetWhere()?.expression()?.accept(expressionVisitor);
    final allFilters = [
      if (filter != null) filter,
      ...ident.attrFilters,
    ];
    return FunctionExp(HoneyFunction.widgets, [
      ListExp(ident.names),
      ListExp(references),
      ListExp(allFilters),
    ]);
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
    });

    final attrs = [
      ctx.widgetType()!.accept(widgetTypeVisitor)!,
      ...ctx.attr.map((e) => e.text!),
    ];
    final attrFilters = attrs.map((e) {
      return FunctionExp(HoneyFunction.equal, [
        FunctionExp(HoneyFunction.variable, [ValueExp(e)]),
        ValueExp(true),
      ]);
    });

    return _WidgetIdentResult(names.toList(), attrFilters.toList());
  }
}

class _WidgetIdentResult {
  _WidgetIdentResult(this.names, this.attrFilters);
  final List<ValueExp> names;
  final List<Expression> attrFilters;
}

class _WidgetNameModifierVisitor
    extends HoneyTalkBaseVisitor<ValueExp Function(ValueExp)> {
  @override
  ValueExp Function(ValueExp) visitWidgetNameCaseSensitive(
    WidgetNameCaseSensitiveContext ctx,
  ) {
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
    WidgetNameCaseInsensitiveContext ctx,
  ) {
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
    WidgetNameExactlyContext ctx,
  ) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return ValueExp.str('^${RegExp.escape(e.value)}\$', regexFlags: '');
      }
    };
  }
}
