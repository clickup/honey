import 'dart:ui';

import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'semantics_extension.dart';

List<SemanticsNode> findNodesAtOffset(SemanticsNode root, Offset offset) {
  final matches = <SemanticsNode>[];
  root.visitChildren((child) {
    final childRect = child.globalRect;
    if (childRect.contains(offset)) {
      matches.add(child);
      if (!child.mergeAllDescendantsIntoThisNode) {
        matches.addAll(findNodesAtOffset(child, offset));
      }
    }
    return true;
  });
  return matches;
}

/*SemanticsNode? findNodeWithId(int id) {
  final matches = <SemanticsNode>[];
  root.visitChildren((child) {
    final childRect = child.globalRect;
    if (childRect.contains(offset)) {
      matches.add(child);
      if (!child.mergeAllDescendantsIntoThisNode) {
        matches.addAll(findNodesAtOffset(child, offset));
      }
    }
    return true;
  });
  return matches;
}*/
