import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/debug_controller.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/overlay/honey_overlay.dart';
import 'package:honey/src/runner/context/honey_context.dart';

typedef HoneyFunction = Future<EvaluatedExpr> Function(
  HoneyContext ctx,
  Map<String, Expr> params,
);

class HoneyWidgetsBinding extends BindingBase
    with
        GestureBinding,
        SchedulerBinding,
        ServicesBinding,
        PaintingBinding,
        SemanticsBinding,
        RendererBinding,
        WidgetsBinding,
        TestDefaultBinaryMessengerBinding {
  HoneyWidgetsBinding._(Map<String, HoneyFunction> customFunctions) {
    pipelineOwner.ensureSemantics();
    DebugController(customFunctions);
  }

  static HoneyWidgetsBinding get instance =>
      BindingBase.checkInstance(_instance);
  static HoneyWidgetsBinding? _instance;

  final _key = GlobalKey();
  final _semanticTagProperties = <String, Map<String, String>>{};

  var _testing = false;
  Widget? _rootWidget;
  late TestTextInput _testTextInput;

  TestTextInput get testTextInput => _testTextInput;

  @override
  void initInstances() {
    super.initInstances();
    _instance = this;
    _testTextInput = TestTextInput();
  }

  static void ensureInitialized({
    Map<String, HoneyFunction> customFunctions = const {},
  }) {
    if (_instance == null) {
      HoneyWidgetsBinding._(customFunctions);
    }
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    _rootWidget = rootWidget;

    Widget widget = KeyedSubtree(key: _key, child: rootWidget);
    if (!_testing) {
      widget = HoneyOverlay(child: widget);
    }

    super.scheduleAttachRootWidget(widget);
  }

  Future<void> waitUntilSettled(Duration timeout) async {
    final s = Stopwatch()..start();
    do {
      scheduleFrame();
      await endOfFrame;
    } while (hasScheduledFrame && s.elapsed < timeout);
  }

  void updateSemanticsProperties(
    SemanticsTag tag,
    Map<String, String>? properties,
  ) {
    if (properties != null) {
      _semanticTagProperties[tag.name] = properties;
    } else {
      _semanticTagProperties.remove(tag.name);
    }
  }

  Map<String, String>? getSemanticsProperties(SemanticsTag tag) {
    return _semanticTagProperties[tag];
  }

  void reset({required bool testing}) {
    _testing = testing;
    resetGestureBinding();
    _testTextInput.reset();
    if (testing) {
      _testTextInput.register();
    } else {
      _testTextInput.unregister();
    }

    if (_rootWidget != null) {
      runApp(_rootWidget!);
    }
  }
}
