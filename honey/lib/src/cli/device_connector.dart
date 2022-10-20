import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:honey/src/cli/flutter_tools.dart';
import 'package:honey/src/consts/markers.dart';
import 'package:honey/src/models/honey_message.dart';

typedef ConnectedDevicesCallback = void Function(List<Device> devices);
typedef MessageCallback = void Function(Device device, String message);

class DeviceConnector {
  final Set<Device> _newDevices = {};
  final Map<Device, StreamSubscription<String>> _monitoredDevices = {};
  final Map<Device, WebSocket> _devices = {};

  final Set<ConnectedDevicesCallback> _connectedCallbacks = {};
  final Set<MessageCallback> _messageCallbacks = {};

  bool _isDeviceKnown(Device device) {
    return _newDevices.contains(device) ||
        _devices.containsKey(device) ||
        _monitoredDevices.containsKey(device);
  }

  Future<void> refresh() async {
    final devices = await deviceManager!.refreshAllConnectedDevices();
    final mobileDevices = devices.where(
      (d) =>
          d.platformType == PlatformType.android ||
          d.platformType == PlatformType.ios,
    );

    for (final device in mobileDevices) {
      if (!_isDeviceKnown(device)) {
        unawaited(_addDevice(device));
      }
    }
  }

  Future<void> _addDevice(Device device) async {
    _newDevices.add(device);
    try {
      final logReader = await device.getLogReader();
      // ignore: cancel_subscriptions
      final sub = logReader.logLines.listen(
        (line) => _onMonitoredLine(device, line),
        onDone: () {
          _monitoredDevices.remove(device);
        },
        cancelOnError: true,
      );
      _monitoredDevices[device] = sub;
    } finally {
      _newDevices.remove(device);
    }
  }

  void _onMonitoredLine(Device device, String line) {
    final match = honeyPortRegex.firstMatch(line);
    if (match != null) {
      final port = int.parse(match.group(1)!.trim());
      _connectDevice(device, port);
    }
  }

  void _callConnectedDevicesListener() {
    final devices = _devices.keys.toList();
    for (final callback in _connectedCallbacks) {
      try {
        callback(devices);
      } catch (_) {}
    }
  }

  Future<void> _connectDevice(Device device, int port) async {
    try {
      final localPort = await device.portForwarder!.forward(port);
      final socket = await WebSocket.connect('ws://127.0.0.1:$localPort');
      socket.pingInterval = const Duration(seconds: 5);
      _devices[device] = socket;
      socket.listen(
        (data) {
          for (final callback in _messageCallbacks) {
            try {
              if (data is String) {
                callback(device, data);
              }
            } catch (_) {}
          }
        },
        onDone: () {
          _devices.remove(device);
          _callConnectedDevicesListener();
        },
      );
      _callConnectedDevicesListener();
    } finally {
      unawaited(_monitoredDevices[device]?.cancel());
      _monitoredDevices.remove(device);
    }
  }

  void addConnectedDevicesCallback(ConnectedDevicesCallback callback) {
    _connectedCallbacks.add(callback);
  }

  void removeConnectedDevicesCallback(ConnectedDevicesCallback callback) {
    _connectedCallbacks.remove(callback);
  }

  void addMessageCallback(MessageCallback callback) {
    _messageCallbacks.add(callback);
  }

  void removeMessageCallback(MessageCallback callback) {
    _messageCallbacks.remove(callback);
  }

  void sendMessage(String deviceId, HoneyMessage message) {
    final messageJson = jsonEncode(message);
    final device = _devices.keys.firstWhereOrNull((d) => d.id == deviceId);
    _devices[device]?.add(messageJson);
  }
}
