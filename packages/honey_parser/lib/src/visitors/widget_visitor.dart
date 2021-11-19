import 'package:honey_parser/src/antlr.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/builtin.dart';

import 'visitors.dart';

class WidgetVisitor extends HoneyTalkBaseVisitor<FunctionExp> {
  @override
  FunctionExp? visitWidget(WidgetContext ctx) {
    final ident = ctx.widgetIdent()!.accept(identVisitor)!;
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

class WidgetIdentVisitor extends HoneyTalkBaseVisitor<_WidgetIdentResult> {
  @override
  _WidgetIdentResult? visitWidgetIdent(WidgetIdentContext ctx) {
    final names = ctx.widgetName()?.accept(nameVisitor);
    final type = ctx.widgetType()!.accept(typeVisitor)!;
    final attrs = ctx.attr.map((e) => e.text!).toList();
    var attrFilter = Builtin.equal(Builtin.variable(type), ValueExp(true));
    for (var attr in attrs) {
      final attrExp = Builtin.equal(Builtin.variable(attr), ValueExp(true));
      attrFilter = Builtin.and(attrExp, attrFilter);
    }
    return _WidgetIdentResult(names ?? [], attrFilter);
  }
}

class _WidgetIdentResult {
  final List<ValueExp> names;
  final Expression attrFilter;

  _WidgetIdentResult(this.names, this.attrFilter);
}
