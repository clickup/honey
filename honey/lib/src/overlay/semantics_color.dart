import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

extension SemanticsNodeColor on SemanticsNode {
  Color get honeyColor {
    final data = getSemanticsData();
    if (data.hasFlag(SemanticsFlag.isTextField)) {
      return Colors.purple;
    } else if (data.hasFlag(SemanticsFlag.hasCheckedState)) {
      return Colors.orange;
    } else if (data.hasFlag(SemanticsFlag.isLink)) {
      return Colors.indigo;
    } else if (data.hasFlag(SemanticsFlag.isButton)) {
      return Colors.green;
    } else if (data.hasAction(SemanticsAction.tap)) {
      return Colors.yellow;
    } else if (data.hasFlag(SemanticsFlag.isImage)) {
      return Colors.lightBlue;
    } else if (!hasChildren || rect != parent?.rect) {
      return Colors.grey;
    } else {
      return Colors.transparent;
    }
  }
}
