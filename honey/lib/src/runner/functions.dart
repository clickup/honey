import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/runner/functions/action_functions.dart';
import 'package:honey/src/runner/functions/core_functions.dart';
import 'package:honey/src/runner/functions/date_functions.dart';
import 'package:honey/src/runner/functions/logic_functions.dart';
import 'package:honey/src/runner/functions/math_functions.dart';
import 'package:honey/src/runner/functions/widget_functions.dart';

const functions = {
  HoneyFunction.click: ActionFunctions.click,
  HoneyFunction.verify: ActionFunctions.verify,
  HoneyFunction.enter: ActionFunctions.enter,
  HoneyFunction.wait: ActionFunctions.wait,
  HoneyFunction.swipe: ActionFunctions.swipe,
  HoneyFunction.print: ActionFunctions.print,
  // HoneyFunction.error,
  HoneyFunction.and: LogicFunctions.and,
  HoneyFunction.or: LogicFunctions.or,
  HoneyFunction.not: LogicFunctions.not,
  //HoneyFunction.controlIf: LogicFunctions.and,
  //HoneyFunction.controlWhile: LogicFunctions.and,
  HoneyFunction.widgets: WidgetFunctions.widgets,
  HoneyFunction.property: CoreFunctions.property,
  HoneyFunction.item: CoreFunctions.item,
  HoneyFunction.length: CoreFunctions.length,
  HoneyFunction.variable: CoreFunctions.variable,
  //HoneyFunction.function,
  HoneyFunction.now: DateFunctions.now,
  HoneyFunction.format: DateFunctions.format,
  HoneyFunction.equal: MathFunctions.equal,
  HoneyFunction.greater: MathFunctions.greater,
  HoneyFunction.less: MathFunctions.less,
  HoneyFunction.plus: MathFunctions.plus,
  HoneyFunction.minus: MathFunctions.minus,
  HoneyFunction.multiply: MathFunctions.multiply,
  HoneyFunction.divide: MathFunctions.divide,
  HoneyFunction.pow: MathFunctions.pow,
  //HoneyFunction.matches:Str.cat,
  //HoneyFunction.concat;
};
