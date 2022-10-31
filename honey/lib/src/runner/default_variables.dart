import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';
import 'package:honey/src/expression/variable.dart';

const _ms = 1;
const _s = _ms * 1000;
const _min = _s * 60;
const _h = _min * 60;
const _day = _h * 24;
const _week = _day * 7;
const _month = _day * 30;
const _year = _day * 365;

final defaultVariables = <String, EvaluatedExpr>{
  Variable.timeout.name: val(20 * _s),
  Variable.stepDelay.name: val(100 * _ms),
  Variable.settleTimeout.name: val(20 * _s),
  Variable.milliseconds.name: val(_ms),
  Variable.seconds.name: val(_s),
  Variable.minutes.name: val(_min),
  Variable.hours.name: val(_h),
  Variable.days.name: val(_day),
  Variable.weeks.name: val(_week),
  Variable.months.name: val(_month),
  Variable.years.name: val(_year),
};
