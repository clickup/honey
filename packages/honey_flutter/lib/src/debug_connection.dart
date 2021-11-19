import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey_core/honey_core.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DebugConnection {
  final VoidCallback _onStatusChanged;

  WebSocket? _socket;
  late HttpServer _server;
  var _socketId = 0;
  PackageInfo? _packageInfo;

  DebugConnection(this._onStatusChanged) {
    _startServer();

    final binding = HoneyBinding.instance;
    binding.stream.listen((_) async {
      if (_packageInfo == null) {
        _packageInfo = await PackageInfo.fromPlatform();
      }
      _send(DebugMessage.deviceStatus(
        appName: _packageInfo!.appName,
        appBuild: _packageInfo!.buildNumber,
        overlayEnabled: binding.overlayEnabled,
        testRunning: binding.testRunning,
        recording: binding.recording,
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
      _socket!.pingInterval = const Duration(seconds: 5);
      _socket!.listen(
        _handleMessage,
        onDone: () {
          if (socketId == _socketId) {
            disconnect();
          }
        },
      );
      _onStatusChanged();
    });

    _startPortBroadcast();
  }

  void _startPortBroadcast() async {
    void send([dynamic _]) {
      if (_socket == null) {
        print('Honey listening on port ${_server.port}');
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
          HoneyBinding.instance.runTest(run.statements).listen((step) {
            _send(DebugMessage.testStep(
              runId: run.runId,
              step: step,
            ));
          });
        },
        cancelTests: (_) {
          HoneyBinding.instance.cancelTests();
        },
        toggleOverlay: (_) {
          HoneyBinding.instance.toggleOverlay();
        },
        toggleRecording: (_) {
          HoneyBinding.instance.toggleRecording();
        },
        resetApp: (_) {
          HoneyBinding.instance.resetApp();
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
