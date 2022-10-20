import 'package:honey/honey.dart';
import 'package:honey/src/models/expression/expression.dart';
import 'package:honey/src/models/expression/widget_expression.dart';
import 'package:honey/src/runner/context/runtime_honey_context.dart';
import 'package:honey/src/runner/widget_finder.dart';

abstract class WidgetFunctions {
  static Future<Expression> findWidgets(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final filter = params.get(0);
    final namesExp = await params.getAndEval(ctx, 1);
    final referencesExp = await params.getAndEval(ctx, 2);

    final names = <RegExp>[];
    if (namesExp is ListExp) {
      for (final exp in namesExp.list) {
        if (exp is ValueExp) {
          names.add(exp.asRegExp);
        }
      }
    }

    final candidates = findWidgetCandidates(ctx, names: names);
    final runtimeCtx = ctx as RuntimeHoneyContext;
    final filtered = <WidgetExp>[];
    for (final w in candidates) {
      runtimeCtx.referenceWidget = w;
      final filterResult = await runtimeCtx.eval(filter);
      runtimeCtx.referenceWidget = null;
      if (filterResult is ValueExp && filterResult.asBool) {
        filtered.add(w);
      }
    }

    /*final refs = <WidgetReference>[];
    if (referencesExp is ListExp) {
      for (var exp in referencesExp.list) {
        final ref = await WidgetReference.fromExpression(ctx, exp);
        if (ref != null) {
          refs.add(ref);
        }
      }
    }*/
    return ListExp(filtered, retry: true);
  }

  static Future<Expression> widgets(
    HoneyContext ctx,
    FunctionParams params,
  ) async {
    final widget = await params.getAndEval(ctx, 0);
    if (widget is WidgetExp) {
      return ListExp([widget], retry: widget.retry);
    } else if (widget is ListExp) {
      if (widget.isNotEmpty) {
        return ListExp(
          widget.list.whereType<WidgetExp>().toList(),
          retry: widget.retry,
        );
      } else {
        return widget;
      }
    } else if (widget is ValueExp) {
      final candidates = findWidgetCandidates(ctx, names: [widget.asRegExp]);
      return ListExp(candidates, retry: true);
    } else {
      return const ListExp.empty(retry: false);
    }
  }
}
