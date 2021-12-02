import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:honey_core/honey_core.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'binding/honey_debug.dart';

class DebugConnection {
  final VoidCallback _onStatusChanged;

  WebSocket? _socket;
  late HttpServer _server;
  var _socketId = 0;
  PackageInfo? _packageInfo;

  DebugConnection(this._onStatusChanged) {
    _startServer();

    final debug = HoneyDebug.instance;
    debug.stream.listen((_) async {
      if (_packageInfo == null) {
        _packageInfo = await PackageInfo.fromPlatform();
      }
      _send(DebugMessage.deviceStatus(
        appName: _packageInfo!.appName,
        appBuild: _packageInfo!.buildNumber,
        overlayEnabled: debug.overlayEnabled,
        testRunning: debug.testRunning,
        recording: debug.recording,
      ));
    });
  }

  bool get connected => _socket != null;

  void _startServer() async {
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _server.transform(WebSocketTransformer()).listen((socket) {
      disconnect();
      final socketId = _socketId;
      _socket = socket;
      socket.pingInterval = const Duration(seconds: 5);
      socket.listen(
        _handleMessage,
        onDone: () {
          if (socketId == _socketId) {
            disconnect();
          }
        },
        cancelOnError: true,
      );
      _onStatusChanged();
    });

    _startPortBroadcast();
  }

  void _startPortBroadcast() async {
    void send([dynamic _]) {
      if (_socket == null) {
        print('$honeyPortMarker ${_server.port}');
      }
    }

    send();
    Timer.periodic(const Duration(seconds: 10), send);
  }

  void disconnect() {
    if (_socket != null) {
      print('disconnecting');
    }

    _socketId++;
    _socket?.close();
    _socket = null;
    _onStatusChanged();
  }

  void _handleMessage(dynamic data) {
    if (data is String) {
      final msg = DebugMessage.fromJson(jsonDecode(data));
      msg.maybeMap(
        startTest: (run) async {
          HoneyDebug.instance.runTest(run.statements).listen((step) {
            _send(DebugMessage.testStep(
              runId: run.runId,
              step: step,
            ));
          });
        },
        cancelTests: (_) {
          HoneyDebug.instance.cancelTests();
        },
        toggleOverlay: (_) {
          HoneyDebug.instance.toggleOverlay();
        },
        toggleRecording: (_) {
          HoneyDebug.instance.toggleRecording();
        },
        resetApp: (_) {
          HoneyDebug.instance.resetApp();
        },
        orElse: () {},
      );
    }
  }

  void _send(DebugMessage msg) {
    final json = jsonEncode(msg.toJson());
    _socket?.add(json);
  }
}
