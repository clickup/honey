import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/value_expr.dart';

const defaultStepTimeout = Duration(seconds: 20);

const _ms = 1;
const _s = _ms * 1000;
const _min = _s * 60;
const _h = _min * 60;
const _day = _h * 24;
const _week = _day * 7;
const _month = _day * 30;
const _year = _day * 365;

Map<String, EvaluatedExpr> getDefaultVariables() {
  return {
    'timeout': val(defaultStepTimeout.inMilliseconds),
    'milliseconds': val(_ms),
    'seconds': val(_s),
    'minutes': val(_min),
    'hours': val(_h),
    'days': val(_day),
    'weeks': val(_week),
    'months': val(_month),
    'years': val(_year),
  };
}
