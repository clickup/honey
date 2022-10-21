import 'package:honey/src/models/expression/expression.dart';

const defaultStepTimeout = Duration(seconds: 20);

const _ms = 1;
const _s = _ms * 1000;
const _min = _s * 60;
const _h = _min * 60;
const _day = _h * 24;
const _week = _day * 7;
const _month = _day * 30;
const _year = _day * 365;

Map<String, Expression> getDefaultVariables() {
  return {
    'timeout': ValueExp(defaultStepTimeout.inMilliseconds),
    'milliseconds': ValueExp(_ms),
    'seconds': ValueExp(_s),
    'minutes': ValueExp(_min),
    'hours': ValueExp(_h),
    'days': ValueExp(_day),
    'weeks': ValueExp(_week),
    'months': ValueExp(_month),
    'years': ValueExp(_year),
  };
}
