import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:honey/src/compiler/compile.dart';
import 'package:honey/src/consts/markers.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/models/honey_message.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DebugConnection {
  DebugConnection() {
    _startServer();

    _statusSubscription =
        HoneyBinding.instance.statusStream.listen((status) async {
      _packageInfo ??= await PackageInfo.fromPlatform();
      _send(
        DeviceStatus(
          appName: _packageInfo!.appName,
          appBuild: _packageInfo!.buildNumber,
          status: status,
        ),
      );
    });
  }

  StreamSubscription<void>? _statusSubscription;
  StreamSubscription<void>? _socketSubscription;
  WebSocket? _socket;
  late HttpServer _server;
  var _socketId = 0;
  PackageInfo? _packageInfo;

  bool get connected => _socket != null;

  Future<void> _startServer() async {
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _server.transform(WebSocketTransformer()).listen((socket) {
      disconnect();
      final socketId = _socketId;
      _socket = socket;
      socket.pingInterval = const Duration(seconds: 5);
      _socketSubscription = socket.listen(
        _handleMessage,
        onDone: () {
          if (socketId == _socketId) {
            disconnect();
          }
        },
        cancelOnError: true,
      );
    });

    await _startPortBroadcast();
  }

  Future<void> _startPortBroadcast() async {
    void send([dynamic _]) {
      if (_socket == null) {
        // ignore: avoid_print
        print('$honeyPortMarker ${_server.port}');
      }
    }

    send();
    Timer.periodic(const Duration(seconds: 10), send);
  }

  void disconnect() {
    _socketId++;
    _statusSubscription?.cancel();
    _socketSubscription?.cancel();
    _socket?.close();
    _socket = null;
  }

  void _handleMessage(dynamic data) {
    if (data is String) {
      final msg = HoneyMessage.fromJson(
        jsonDecode(data) as Map<String, dynamic>,
      );

      if (msg is StartTestCommand) {
        HoneyBinding.instance
            .compileAndRunTest(msg.runId, msg.test)
            .listen(_send);
      } else if (msg is CancelTestsCommand) {
        HoneyBinding.instance.cancelTests();
      }
    }
  }

  void _send(HoneyMessage msg) {
    final json = jsonEncode(msg.toJson());
    _socket?.add(json);
  }
}
