import 'package:honey/src/consts/function.dart';
import 'package:honey/src/expression/function_expr.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/runner/functions/action_functions.dart';
import 'package:honey/src/runner/functions/core_functions.dart';
import 'package:honey/src/runner/functions/date_functions.dart';
import 'package:honey/src/runner/functions/logic_functions.dart';
import 'package:honey/src/runner/functions/math_functions.dart';
import 'package:honey/src/runner/functions/widget_functions.dart';

const defaultFunctions = <F, HoneyFunction>{
  F.click: ActionFunctions.click,
  F.verify: ActionFunctions.verify,
  F.enter: ActionFunctions.enter,
  F.wait: ActionFunctions.wait,
  F.swipe: ActionFunctions.swipe,
  F.output: ActionFunctions.output,
  // F.error,
  F.and: LogicFunctions.and,
  F.or: LogicFunctions.or,
  F.not: LogicFunctions.not,
  F.widgets: WidgetFunctions.widgets,
  F.property: CoreFunctions.property,
  F.variable: CoreFunctions.variable,
  //F.function,
  F.now: DateFunctions.now,
  F.format: DateFunctions.format,
  F.equal: MathFunctions.equal,
  F.greater: MathFunctions.greater,
  F.less: MathFunctions.less,
  F.plus: MathFunctions.plus,
  F.minus: MathFunctions.minus,
  F.multiply: MathFunctions.multiply,
  F.divide: MathFunctions.divide,
  F.pow: MathFunctions.pow,
  //F.matches:Str.cat,
};
