import 'package:honey_core/honey_core.dart';

const _MS = 1;
const _S = _MS * 1000;
const _MIN = _S * 60;
const _H = _MIN * 60;
const _DAY = _H * 24;
const _WEEK = _DAY * 7;
const _MONTH = _DAY * 30;
const _YEAR = _DAY * 365;

Map<String, ValueExp> getDefaultVariables() {
  return {
    'milliseconds': ValueExp(_MS, retry: false),
    'seconds': ValueExp(_S, retry: false),
    'minutes': ValueExp(_MIN, retry: false),
    'hours': ValueExp(_H, retry: false),
    'days': ValueExp(_DAY, retry: false),
    'weeks': ValueExp(_WEEK, retry: false),
    'months': ValueExp(_MONTH, retry: false),
    'years': ValueExp(_YEAR, retry: false),
  };
}
