import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/honey_app.dart';
import 'package:honey/src/models/honey_message.dart';
import 'package:honey/src/models/statement.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey/src/utils/honey_binary_messenger.dart';

enum HoneyStatus {
  overlay,
  test,
}

class HoneyBinding extends WidgetsFlutterBinding {
  HoneyBinding({
    required this.main,
    this.resetApp,
    this.customFunctions = const {},
  }) {
    pipelineOwner.ensureSemantics();
  }

  final FutureOr<void> Function() main;
  final FutureOr<void> Function()? resetApp;
  final Map<String, CustomFunction> customFunctions;

  final _semanticTagProperties = <String, Map<String, dynamic>>{};
  final _statusStreamController = StreamController<HoneyStatus>.broadcast();
  var _status = HoneyStatus.overlay;
  var _widgetKey = GlobalKey(debugLabel: 'honeyKey');
  TestRunner? _testRunner;

  Stream<HoneyStatus> get statusStream async* {
    yield _status;
    yield* _statusStreamController.stream;
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    super.scheduleAttachRootWidget(
      HoneyApp(
        child: KeyedSubtree(
          key: _widgetKey,
          child: rootWidget,
        ),
      ),
    );
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
    Map<String, dynamic>? properties,
  ) {
    if (properties != null) {
      _semanticTagProperties[tag.name] = properties;
    } else {
      _semanticTagProperties.remove(tag.name);
    }
  }

  Map<String, dynamic>? getSemanticsProperties(SemanticsTag tag) {
    return _semanticTagProperties[tag];
  }

  static HoneyBinding get instance => WidgetsBinding.instance as HoneyBinding;

  @override
  HoneyBinaryMessenger get defaultBinaryMessenger =>
      super.defaultBinaryMessenger as HoneyBinaryMessenger;

  @override
  HoneyBinaryMessenger createBinaryMessenger() {
    return HoneyBinaryMessenger(super.createBinaryMessenger());
  }

  Future<void> restartApp() async {
    HoneyBinding.instance.attachRootWidget(Container(key: UniqueKey()));
    await Future<void>.delayed(const Duration(milliseconds: 500));
    await HoneyBinding.instance.waitUntilSettled(const Duration(seconds: 3));

    await resetApp?.call();
    _widgetKey = GlobalKey(debugLabel: 'honeyKey');
    await main();
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

    yield* HoneyBinding.instance.runTest(0, compilation.statements!);
    yield const TestFinished(runId: 0);
  }

  Future<void> cancelTests() async {
    await _testRunner?.cancel();
    _testRunner!.dispose();
    _testRunner = null;
    await Future<void>.delayed(const Duration(milliseconds: 500));
    _setStatus(HoneyStatus.overlay);
  }

  void _setStatus(HoneyStatus status) {
    _status = status;
    _statusStreamController.add(status);
  }
}
