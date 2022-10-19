import 'dart:async';

import 'package:flutter/material.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/debug_connection.dart';
import 'package:honey/src/runner/function_registry.dart';
import 'package:honey/src/runner/test_runner.dart';
import 'package:honey_core/honey_core.dart';

import 'honey_binding.dart';

enum HoneyStatus {
  Idle,
  TestStarting,
  TestRunning,
  Overlay,
  Recording,
}

class HoneyDebug {
  static HoneyDebug? _instance;
  static HoneyDebug get instance => _instance!;

  final FutureOr Function() _main;
  final FutureOr Function()? _resetApp;
  final FunctionRegistry _functionRegistry;

  final _stream = StreamController.broadcast();

  late final DebugConnection _debugConnection;

  TestRunner? _testRunner;
  var _overlayEnabled = true;
  var _testRunning = false;
  var _recording = false;

  HoneyDebug({
    required FutureOr Function() main,
    FutureOr Function()? resetApp,
    required Map<String, CustomFunction> customFunctions,
  })  : _main = main,
        _resetApp = resetApp,
        _functionRegistry = FunctionRegistry(customFunctions: customFunctions) {
    _instance = this;
    HoneyBinding.instance.debugMode = true;
    _debugConnection = DebugConnection(() => _stream.add(null));
  }

  Future resetApp() async {
    HoneyBinding.instance.attachRootWidget(Container(key: UniqueKey()));
    await Future.delayed(Duration(milliseconds: 500));
    await HoneyBinding.instance.waitUntilSettled(Duration(seconds: 3));
    await _resetApp?.call();
    await restartApp();
  }

  Future restartApp() async {
    HoneyBinding.instance.attachRootWidget(Container(key: UniqueKey()));
    await Future.delayed(Duration(milliseconds: 500));
    await HoneyBinding.instance.waitUntilSettled(Duration(seconds: 3));
    HoneyBinding.instance.resetWidgetKey();
    await _main();
  }

  Stream<TestStep> runTest(List<Statement> statements) async* {
    if (_testRunner != null) return;

    print(statements);
    try {
      _setStatus(testRunning: true, overlayEnabled: false, recording: false);

      await resetApp();
      _testRunner = TestRunner(
        statements,
        _functionRegistry,
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
}
