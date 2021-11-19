import 'package:honey_core/honey_core.dart';
import 'package:honey_parser/src/antlr.dart';
import 'package:honey_parser/src/builtin.dart';

import 'visitors.dart';

class ActionVisitor extends HoneyTalkBaseVisitor<FunctionExp> {
  @override
  FunctionExp visitActionVerify(ActionVerifyContext ctx) {
    final expression = ctx.expression()!.accept(expressionVisitor)!;
    return Builtin.verify(expression);
  }

  @override
  FunctionExp visitActionSee(ActionSeeContext ctx) {
    final target = ctx.expression()!.accept(expressionVisitor)!;
    final widgets = Builtin.widgets(target);
    final countExp = Builtin.property("length", widgets);
    final expression = Builtin.greater(countExp, ValueExp(0));
    return Builtin.verify(expression);
  }

  @override
  FunctionExp visitActionClick(ActionClickContext ctx) {
    final type = ctx.clickType()!.accept(clickTypeVisitor)!;
    final target = ctx.target?.accept(expressionVisitor);
    final widgets = target != null ? Builtin.widgets(target) : null;
    final offset = ctx.offset?.accept(expressionVisitor);
    return Builtin.click(type, widgets, offset);
  }

  @override
  FunctionExp visitActionEnter(ActionEnterContext ctx) {
    final value = ctx.value!.accept(expressionVisitor)!;
    return Builtin.enter(value);
  }

  @override
  FunctionExp visitActionSetVariable(ActionSetVariableContext ctx) {
    final variable = ctx.variable!.text!;
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return Builtin.variable(variable, value: value);
  }

  @override
  FunctionExp visitActionRestart(ActionRestartContext ctx) {
    return Builtin.restart();
  }

  @override
  FunctionExp visitActionReset(ActionResetContext ctx) {
    return Builtin.reset();
  }

  @override
  FunctionExp visitActionWait(ActionWaitContext ctx) {
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return Builtin.wait(value);
  }

  @override
  FunctionExp? visitActionPrint(ActionPrintContext ctx) {
    final value = ctx.expression()!.accept(expressionVisitor)!;
    return Builtin.print(value);
  }
}

class ClickTypeVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitClickTypeSingle(ClickTypeSingleContext ctx) => 'single';

  @override
  String visitClickTypeDouble(ClickTypeDoubleContext ctx) => 'double';

  @override
  String visitClickTypeLong(ClickTypeLongContext ctx) => 'long';

  @override
  String visitClickTypeRight(ClickTypeRightContext ctx) => 'right';
}
