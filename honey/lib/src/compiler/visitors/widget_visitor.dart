import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/function.dart';
import 'package:honey/src/consts/name_modifier.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/consts/property.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/list_expr.dart';
import 'package:honey/src/expression/value_expr.dart';

class WidgetVisitor extends HoneyTalkBaseVisitor<FunctionExpr> {
  @override
  FunctionExpr visitWidgetTerm(WidgetTermContext ctx) {
    var modifier = NameModifier.caseInsensitive;
    if (ctx.widgetIdent()?.caseSensitive() != null) {
      modifier = NameModifier.caseSensitive;
    } else if (ctx.widgetIdent()?.exactly() != null) {
      modifier = NameModifier.exactly;
    }
    final names = ctx
            .widgetIdent()
            ?.name
            .map((e) => e.accept(literalVisitor)!)
            .toList() ??
        [];

    final widgetTypes = [
      if (ctx.widgetIdent()?.widgetType()?.button() != null) Property.button,
      if (ctx.widgetIdent()?.widgetType()?.link() != null) Property.link,
      if (ctx.widgetIdent()?.widgetType()?.textfield() != null)
        Property.textfield,
      if (ctx.widgetIdent()?.widgetType()?.slider() != null) Property.slider,
      if (ctx.widgetIdent()?.widgetType()?.image() != null) Property.image,
      if (ctx.widgetIdent()?.widgetType()?.checkbox() != null)
        Property.checkbox,
      if (ctx.widgetIdent()?.widgetType()?.sswitch() != null) Property.sswitch,
      if (ctx.widgetIdent()?.widgetType()?.header() != null) Property.header,
    ];

    final attrs = [
      ...widgetTypes.map((e) => e.name),
      if (ctx.widgetIdent() != null)
        ...ctx.widgetIdent()!.attr.map((e) => e.text!),
    ];
    final attrFilters = attrs.map((e) {
      return func(F.equal, {
        pLeft: func(F.variable, {pName: val(e)}),
        pRight: val(true),
      });
    });
    /*final references = ctx
        .widgetReferences()
        .map((e) => e.accept(referenceVisitor)!.toExp())
        .toList();*/
    final filter = ctx.widgetWhere()?.expr()?.accept(expressionVisitor);
    final allFilters = [
      ...attrFilters,
      if (filter != null) filter,
    ];
    return func(F.widgets, {
      if (names.isNotEmpty) pName: list(names),
      if (names.isNotEmpty) pModifier: val(modifier.name),
      //pReference: list(references),
      if (allFilters.isNotEmpty) pFilter: list(allFilters),
    });
  }
}
