import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/expression/value_expr.dart';

class ActionVisitor extends HoneyTalkBaseVisitor<FunctionExpr> {
  @override
  FunctionExpr visitActionVerify(ActionVerifyContext ctx) {
    final expression = ctx.expr()!.accept(expressionVisitor)!;
    return func(F.verify, {pValue: expression});
  }

  @override
  FunctionExpr visitActionSee(ActionSeeContext ctx) {
    final target = ctx.expr()!.accept(expressionVisitor)!;
    final widgetExp = func(F.widgets, {pTarget: target});
    final countExp = func(F.length, {pValue: widgetExp});
    final gtZero = func(F.greater, {pLeft: countExp, pRight: val(0)});
    return func(F.verify, {pValue: gtZero});
  }

  @override
  FunctionExpr visitActionClick(ActionClickContext ctx) {
    final type = ctx.clickType()!.accept(clickTypeVisitor)!;
    final target = ctx.target?.accept(expressionVisitor);
    final offset = ctx.offset?.accept(expressionVisitor);
    return func(F.click, {
      pType: val(type.name),
      if (target != null) pTarget: target,
      if (offset != null) pOffset: offset,
    });
  }

  @override
  FunctionExpr? visitActionSwipe(ActionSwipeContext ctx) {
    final direction = ctx.swipeType()!.singleDirection()?.direction;
    final target = ctx.target?.accept(expressionVisitor);
    final offset = ctx.offset?.accept(expressionVisitor);
    final distance = ctx.pixels?.accept(expressionVisitor);
    return func(F.swipe, {
      pType: val(direction?.name ?? Direction.bottom.name),
      if (target != null) pTarget: target,
      if (offset != null) pOffset: offset,
      if (distance != null) pValue: distance,
    });
  }

  @override
  FunctionExpr visitActionEnter(ActionEnterContext ctx) {
    final value = ctx.value!.accept(expressionVisitor)!;
    return func(F.enter, {pValue: value});
  }

  @override
  FunctionExpr visitActionSetVariable(ActionSetVariableContext ctx) {
    final variable = ctx.variable!.text!;
    final value = ctx.expr()!.accept(expressionVisitor)!;
    return func(F.variable, {pName: val(variable), pValue: value});
  }

  @override
  FunctionExpr visitActionWait(ActionWaitContext ctx) {
    final value = ctx.expr()!.accept(expressionVisitor)!;
    return func(F.wait, {pValue: value});
  }

  @override
  FunctionExpr visitActionPrint(ActionPrintContext ctx) {
    final value = ctx.expr()!.accept(expressionVisitor)!;
    return func(F.print, {pValue: value});
  }
}

class ClickTypeVisitor extends HoneyTalkBaseVisitor<ClickType> {
  @override
  ClickType visitClickTypeSingle(ClickTypeSingleContext ctx) =>
      ClickType.single;

  @override
  ClickType visitClickTypeDouble(ClickTypeDoubleContext ctx) =>
      ClickType.double;

  @override
  ClickType visitClickTypeLong(ClickTypeLongContext ctx) => ClickType.long;

  @override
  ClickType visitClickTypeRight(ClickTypeRightContext ctx) => ClickType.right;
}
