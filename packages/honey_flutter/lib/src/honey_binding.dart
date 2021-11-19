import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey_core/honey_core.dart';

import 'debug_connection.dart';
import 'honey_app.dart';

enum HoneyStatus {
  Idle,
  TestStarting,
  TestRunning,
  Overlay,
  Recording,
}

class HoneyBinding extends WidgetsFlutterBinding {
  final Future Function() _main;
  final Future Function() _resetApp;
  final functionRegistry = FunctionRegistry();
  final _semanticTagProperties = <String, Map<String, dynamic>>{};

  final _stream = StreamController.broadcast();

  late final DebugConnection _debugConnection;

  TestRunner? _testRunner;
  var _widgetKey = GlobalKey(debugLabel: 'honeyKey');
  var _overlayEnabled = false;
  var _testRunning = false;
  var _recording = false;

  HoneyBinding({
    required Future Function() main,
    required Future Function() resetApp,
    required Map<String, CustomFunction> customFunctions,
  })  : _main = main,
        _resetApp = resetApp {
    for (var name in customFunctions.keys) {
      functionRegistry.register(name, customFunctions[name]!);
    }

    _debugConnection = DebugConnection(() => _stream.add(null));
  }

  Future resetApp() async {
    attachRootWidget(Container(key: UniqueKey()));
    await Future.delayed(Duration(milliseconds: 500));
    await waitUntilSettled(Duration(seconds: 3));
    await _resetApp();
    await restartApp();
  }

  Future restartApp() async {
    attachRootWidget(Container(key: UniqueKey()));
    await Future.delayed(Duration(milliseconds: 500));
    await waitUntilSettled(Duration(seconds: 3));
    _widgetKey = GlobalKey(debugLabel: 'honeyKey');
    await _main();
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    super.scheduleAttachRootWidget(HoneyApp(
      child: KeyedSubtree(
        key: _widgetKey,
        child: rootWidget,
      ),
    ));
  }

  Stream<TestStep> runTest(List<Statement> statements) async* {
    if (_testRunner != null) return;

    print(statements);
    try {
      _setStatus(testRunning: true, overlayEnabled: false, recording: false);

      await resetApp();
      _testRunner = TestRunner(
        statements,
        functionRegistry,
        Duration(seconds: 15),
      );

      await Future.delayed(Duration(seconds: 3));

      yield* _testRunner!.executeAll();
      _testRunner!.dispose();
    } catch (e) {
      print('SOMETHING WENT WRONG $e');
    }

    await Future.delayed(Duration(milliseconds: 500));
    _setStatus(testRunning: false);

    _testRunner = null;
  }

  Future waitUntilSettled(Duration timeout) async {
    final s = Stopwatch()..start();
    do {
      scheduleFrame();
      await endOfFrame;
    } while (hasScheduledFrame && s.elapsed < timeout);
  }

  void _setStatus({bool? overlayEnabled, bool? testRunning, bool? recording}) {
    _testRunning = testRunning ?? _testRunning;
    _overlayEnabled = overlayEnabled ?? _overlayEnabled;
    _recording = recording ?? _recording;
    _stream.add(null);
  }

  Stream get stream => _stream.stream;

  bool get connected => _debugConnection.connected;

  bool get overlayEnabled => _overlayEnabled;

  bool get testRunning => _testRunning;

  bool get recording => _recording;

  void cancelTests() {
    _testRunner?.cancel();
  }

  void toggleOverlay() {
    _setStatus(overlayEnabled: !_overlayEnabled);
  }

  void toggleRecording() {
    _setStatus(recording: !_recording);
  }

  void updateSemanticsProperties(
      SemanticsTag tag, Map<String, dynamic>? properties) {
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
}
