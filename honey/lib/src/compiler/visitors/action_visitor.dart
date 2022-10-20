import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/visitors.dart';

class ActionVisitor extends HoneyTalkBaseVisitor<FunctionExp> {
  @override
  FunctionExp visitActionVerify(ActionVerifyContext ctx) {
    final expression = ctx.expression()!.accept(expressionVisitor)!;
    return FunctionExp(HoneyFunction.verify, [expression]);
  }

  @override
  FunctionExp visitActionSee(ActionSeeContext ctx) {
    final target = ctx.expression()!.accept(expressionVisitor)!;
    final countExp = FunctionExp(HoneyFunction.length, [target]);
    final gtZero = FunctionExp(HoneyFunction.greater, [countExp, ValueExp(0)]);
    return FunctionExp(HoneyFunction.verify, [gtZero]);
  }

  @override
  FunctionExp visitActionClick(ActionClickContext ctx) {
    final type = ctx.clickType()!.accept(clickTypeVisitor)!;
    final target = ctx.target?.accept(expressionVisitor);
    final offset = ctx.offset?.accept(expressionVisitor);
    return FunctionExp(HoneyFunction.click, [
      ValueExp(type.name),
      target ?? const ValueExp.empty(),
      offset ?? const ValueExp.empty()
    ]);
  }

  @override
  FunctionExp? visitActionSwipe(ActionSwipeContext ctx) {
    final direction = ctx.swipeType()!.accept(singleDirectionVisitor)!;
    final target = ctx.target?.accept(expressionVisitor);
    final offset = ctx.offset?.accept(expressionVisitor);
    final distance = ctx.pixels?.accept(expressionVisitor);
    return FunctionExp(HoneyFunction.swipe, [
      ValueExp(direction.name),
      target ?? const ValueExp.empty(),
      offset ?? const ValueExp.empty(),
      distance ?? const ValueExp.empty()
    ]);
  }

  @override
  FunctionExp visitActionEnter(ActionEnterContext ctx) {
    final value = ctx.value!.accept(expressionVisitor)!;
    return FunctionExp(HoneyFunction.enter, [value]);
  }

  @override
  FunctionExp visitActionSetVariable(ActionSetVariableContext ctx) {
    final variable = ctx.variable!.text!;
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return FunctionExp(HoneyFunction.variable, [ValueExp(variable), value]);
  }

  @override
  FunctionExp visitActionWait(ActionWaitContext ctx) {
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return FunctionExp(HoneyFunction.wait, [value]);
  }

  @override
  FunctionExp? visitActionPrint(ActionPrintContext ctx) {
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return FunctionExp(HoneyFunction.print, [value]);
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
