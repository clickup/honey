import 'dart:ui';

import 'package:honey/src/models/widget_expression.dart';
import 'package:honey_core/honey_core.dart';
import 'package:collection/collection.dart';

extension ExpressionExt on Expression {
  Offset get asOffset {
    final parts = value?.split(',') ?? [];
    if (parts.length < 2) {
      return Offset.zero;
    }
    final x = ValueExp(parts[0]).asNum;
    final y = ValueExp(parts[1]).asNum;
    return Offset(x.toDouble(), y.toDouble());
  }

  WidgetExp? get widgetExp {
    if (this is WidgetExp) {
      return this as WidgetExp;
    } else if (this is ListExp) {
      final first = (this as ListExp).list.firstOrNull;
      if (first is WidgetExp) {
        return first;
      }
    }
  }

  T map<T>({
    required T Function(FunctionExp) function,
    required T Function(ValueExp) value,
    required T Function(ListExp) list,
    required T Function(WidgetExp) widget,
  }) {
    if (this is FunctionExp) {
      return function(this as FunctionExp);
    } else if (this is ValueExp) {
      return value(this as ValueExp);
    } else if (this is ListExp) {
      return list(this as ListExp);
    } else {
      return widget(this as WidgetExp);
    }
  }

  T maybeMap<T>({
    T Function(FunctionExp)? function,
    T Function(ValueExp)? value,
    T Function(ListExp)? list,
    T Function(WidgetExp)? widget,
    required T Function() orElse,
  }) {
    if (this is FunctionExp && function != null) {
      return function(this as FunctionExp);
    } else if (this is ValueExp && value != null) {
      return value(this as ValueExp);
    } else if (this is ListExp && list != null) {
      return list(this as ListExp);
    } else if (this is WidgetExp && widget != null) {
      return widget(this as WidgetExp);
    } else {
      return orElse();
    }
  }

  Expression withRetry(bool retry) {
    return map(
      function: (f) => f.copyWith(retry: retry),
      widget: (w) => w,
      list: (l) => l.copyWith(retry: retry),
      value: (v) => v.copyWith(retry: retry),
    );
  }
}
