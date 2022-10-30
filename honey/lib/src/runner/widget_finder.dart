import 'package:flutter/semantics.dart';
import 'package:honey/src/expression/widget_expr.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/semantics/semantics_extension.dart';

List<WidgetExpr> findWidgetCandidates(
  HoneyContext context, {
  List<RegExp> names = const [],
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
          return name.hasMatch(data.label) ||
              name.hasMatch(data.value) ||
              name.hasMatch(data.hint);
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
