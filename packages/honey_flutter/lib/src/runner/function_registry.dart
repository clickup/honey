import 'package:honey_core/honey_core.dart';
import 'package:honey/src/honey_app.dart';
import 'package:honey/src/runner/errors/honey_error.dart';
import 'package:honey/src/runner/functions/action_functions.dart';
import 'package:honey/src/runner/functions/date_functions.dart';
import 'package:honey/src/runner/functions/logic_functions.dart';
import 'package:honey/src/runner/functions/math_functions.dart';
import 'package:honey/src/runner/functions/widget_functions.dart';

import 'context/honey_context.dart';
import 'functions/core_functions.dart';
import 'function_params.dart';

class FunctionRegistry {
  final _custom = <String, CustomFunction>{};
  final _core = <String, CustomFunction>{
    ...ActionFunctions.functions,
    ...CoreFunctions.functions,
    ...DateFunctions.functions,
    ...LogicFunctions.functions,
    ...MathFunctions.functions,
    ...WidgetFunctions.functions,
  };

  Future<Expression> run(HoneyContext ctx, String name, FunctionParams params) {
    final lcName = name.toLowerCase();
    final function = _custom[lcName] ?? _core[lcName];
    if (function != null) {
      return function(ctx, params);
    } else {
      throw HoneyError('Unknown function $name', false);
    }
  }

  void register(String name, CustomFunction function) {
    _custom[name.toLowerCase()] = function;
  }
}
