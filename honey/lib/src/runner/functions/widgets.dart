import 'package:flutter/semantics.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/name_modifier.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/semantics/semantics_extension.dart';

Future<EvaluatedExpr> widgets(
  HoneyContext ctx,
  Map<String, Expr> params,
) async {
  var namesExp = await ctx.eval(params[pName]);
  final modifierExp = await ctx.eval(params[pModifier]);
  final filters = params[pFilter];

  if (params.containsKey(pTarget)) {
    final target = await ctx.eval(params[pTarget]);
    if (target is WidgetExpr) {
      return eList([target]);
    } else if (target is EvaluatedListExpr) {
      return target;
    } else {
      namesExp = eList([target]);
    }
  }

  final names = <String>[];
  if (namesExp is EvaluatedListExpr) {
    for (var i = 0; i < namesExp.length; i++) {
      final nameExp = namesExp[i];
      if (nameExp is ValueExpr && !nameExp.isEmpty) {
        names.add(nameExp.value);
      }
    }
  }

  final modifierName = modifierExp is ValueExpr ? modifierExp.value : '';
  final modifier = NameModifier.fromName(modifierName);
  final candidates = _findWidgetCandidates(
    ctx,
    names: names,
    modifier: modifier ?? NameModifier.caseInsensitive,
  );

  final filtered = <WidgetExpr>[];
  if (filters is ListExpr) {
    candidateLoop:
    for (final w in candidates) {
      final refCtx = ctx.clone(referenceWidget: w);
      for (var i = 0; i < filters.length; i++) {
        final filter = filters[i];
        final result = await refCtx.eval(filter);
        if (result is ValueExpr && result.asBool) {
          filtered.add(w);
          continue candidateLoop;
        }
      }
    }
  } else {
    filtered.addAll(candidates);
  }

  return eList(filtered, retry: true);
}

List<WidgetExpr> _findWidgetCandidates(
  HoneyContext context, {
  List<String> names = const [],
  NameModifier modifier = NameModifier.caseInsensitive,
}) {
  List<WidgetExpr> findCandidates(SemanticsNode root) {
    final candidates = <WidgetExpr>[];
    root.visitChildren((n) {
      if (!n.mergeAllDescendantsIntoThisNode) {
        candidates.addAll(findCandidates(n));
      }
      if (!n.shouldBeConsidered) {
        return true;
      }

      final data = n.getSemanticsData();
      if (names.isNotEmpty) {
        final anyNameMatches = names.any((name) {
          return _nameMatches(data.label, name, modifier) ||
              _nameMatches(data.value, name, modifier) ||
              _nameMatches(data.hint, name, modifier);
        });
        if (!anyNameMatches) {
          return true;
        }
      }

      candidates.add(n.toExp());
      return true;
    });
    return candidates;
  }

  final candidates = findCandidates(context.semanticsTree);
  return candidates;
}

bool _nameMatches(String value, String name, NameModifier modifier) {
  switch (modifier) {
    case NameModifier.caseSensitive:
      return value.contains(name);
    case NameModifier.caseInsensitive:
      return value.toLowerCase().contains(name.toLowerCase());
    case NameModifier.exactly:
      return value == name;
  }
}
