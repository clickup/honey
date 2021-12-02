import 'package:flutter/semantics.dart';
import 'package:honey/src/utils/semantics_extension.dart';
import 'context/honey_context.dart';
import '../models/widget_expression.dart';

List<WidgetExp> findWidgetCandidates(
  HoneyContext context, {
  List<RegExp> names = const [],
}) {
  List<WidgetExp> findCandidates(SemanticsNode root) {
    final candidates = <WidgetExp>[];
    root.visitChildren((n) {
      if (!n.mergeAllDescendantsIntoThisNode) {
        candidates.addAll(findCandidates(n));
      }
      if (!n.shouldBeConsidered) {
        return true;
      }

      final data = n.getSemanticsData();
      if (names.isNotEmpty) {
        final anyNameMatches = names.any((name) => data.matchesName(name));
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
