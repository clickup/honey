import 'dart:ui';

import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

mixin WidgetBindingContextMixin {
  Size get screenSize =>
      WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  // ignore: invalid_use_of_protected_member
  TestTextInput get testTextInput => HoneyWidgetsBinding.instance.testTextInput;

  SemanticsNode get semanticsTree {
    return HoneyWidgetsBinding
        .instance.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
  }

  void dispatchPointerEvent(PointerEvent e) {
    WidgetsBinding.instance.handlePointerEvent(e);
  }

  void dispatchSemanticAction(
    SemanticsNode node,
    SemanticsAction action, [
    Object? args,
  ]) {
    HoneyWidgetsBinding.instance.pipelineOwner.semanticsOwner!
        .performAction(node.id, action, args);
  }
}
