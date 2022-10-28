import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/statement.dart';
import 'package:honey/src/overlay/honey_overlay.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/utils/honey_binary_messenger.dart';

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
        WidgetsBinding {
  HoneyWidgetsBinding._(this._customFunctions) {
    pipelineOwner.ensureSemantics();
  }

  static HoneyWidgetsBinding get instance =>
      BindingBase.checkInstance(_instance);
  static HoneyWidgetsBinding? _instance;

  final _key = GlobalKey();

  final Map<String, HoneyFunction> _customFunctions;
  final _semanticTagProperties = <String, Map<String, String>>{};
  var testing = false;
  TestRunner? _testRunner;
  Widget? _rootWidget;

  @override
  void initInstances() {
    super.initInstances();
    _instance = this;
  }

  static Future<void> ensureInitialized({
    Map<String, HoneyFunction> customFunctions = const {},
  }) async {
    if (_instance == null) {
      HoneyWidgetsBinding._(customFunctions);
    }
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    _rootWidget = rootWidget;

    Widget widget = KeyedSubtree(key: _key, child: rootWidget);
    if (!testing) {
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

  @override
  HoneyBinaryMessenger get defaultBinaryMessenger =>
      super.defaultBinaryMessenger as HoneyBinaryMessenger;

  @override
  HoneyBinaryMessenger createBinaryMessenger() {
    return HoneyBinaryMessenger(super.createBinaryMessenger());
  }

  Stream<TestStep> runTest(int runId, List<Statement> statements) async* {
    if (_testRunner != null) return;

    try {
      _setStatus(HoneyStatus.test);
      await restartApp();
      await Future<void>.delayed(const Duration(seconds: 3));
      //_testRunner = TestRunner(statements, customFunctions);
      //yield* _testRunner!.executeAll();
    } finally {
      await cancelTests();
    }
  }

  Stream<HoneyMessage> compileAndRunTest(int runId, String test) async* {
    final compilation = compileHoneyTalk(test);
    if (compilation.hasError) {
      yield CompileError(
        runId: 0,
        line: compilation.errorLine ?? 0,
        column: compilation.errorColumn ?? 0,
      );
      return;
    }

    yield* HoneyWidgetsBinding.instance.runTest(0, compilation.statements!);
    yield const TestFinished(runId: 0);
  }

  Future<void> cancelTests() async {
    await _testRunner?.cancel();
    _testRunner!.dispose();
    _testRunner = null;
    await Future<void>.delayed(const Duration(milliseconds: 500));
    runApp(_rootWidget!);
  }
}
