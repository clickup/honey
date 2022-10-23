import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';

class WidgetVisitor extends HoneyTalkBaseVisitor<FunctionExpr> {
  final _identVisitor = _WidgetIdentVisitor();

  @override
  FunctionExpr visitWidgetTerm(WidgetTermContext ctx) {
    final ident = ctx.widgetIdent()!.accept(_identVisitor)!;
    /*final references = ctx
        .widgetReferences()
        .map((e) => e.accept(referenceVisitor)!.toExp())
        .toList();*/
    final filter = ctx.widgetWhere()?.expression()?.accept(expressionVisitor);
    final allFilters = [
      if (filter != null) filter,
      ...ident.attrFilters,
    ];
    return func(F.widgets, {
      pTarget: list(ident.names),
      //pReference: list(references),
      pFilter: list(allFilters),
    });
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

    final widgetTypes = [
      if (ctx.widgetType()?.button() != null) Property.button,
      if (ctx.widgetType()?.link() != null) Property.link,
      if (ctx.widgetType()?.textfield() != null) Property.textfield,
      if (ctx.widgetType()?.slider() != null) Property.slider,
      if (ctx.widgetType()?.image() != null) Property.image,
      if (ctx.widgetType()?.checkbox() != null) Property.checkbox,
      if (ctx.widgetType()?.sswitch() != null) Property.sswitch,
      if (ctx.widgetType()?.header() != null) Property.header,
    ];

    final attrs = [
      ...widgetTypes,
      ...ctx.attr.map((e) => e.text!),
    ];
    final attrFilters = attrs.map((e) {
      return func(F.equal, {
        pLeft: func(F.variable, {pName: val(e)}),
        pRight: val(true),
      });
    });

    return _WidgetIdentResult(names.toList(), attrFilters.toList());
  }
}

class _WidgetIdentResult {
  _WidgetIdentResult(this.names, this.attrFilters);
  final List<ValueExpr> names;
  final List<Expr> attrFilters;
}

class _WidgetNameModifierVisitor
    extends HoneyTalkBaseVisitor<ValueExpr Function(ValueExpr)> {
  @override
  ValueExpr Function(ValueExpr) visitWidgetNameCaseSensitive(
    WidgetNameCaseSensitiveContext ctx,
  ) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return str(RegExp.escape(e.value), regexFlags: '');
      }
    };
  }

  @override
  ValueExpr Function(ValueExpr) visitWidgetNameCaseInsensitive(
    WidgetNameCaseInsensitiveContext ctx,
  ) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return str(RegExp.escape(e.value), regexFlags: 'i');
      }
    };
  }

  @override
  ValueExpr Function(ValueExpr) visitWidgetNameExactly(
    WidgetNameExactlyContext ctx,
  ) {
    return (e) {
      if (e.isRegExp) {
        return e;
      } else {
        return str('^${RegExp.escape(e.value)}\$', regexFlags: '');
      }
    };
  }
}
