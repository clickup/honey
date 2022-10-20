import 'package:flutter/semantics.dart';
import 'package:honey/src/models/expression/widget_expression.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/utils/semantics_extension.dart';

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
