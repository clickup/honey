import 'dart:convert';
import 'dart:io';

import 'package:honey/src/cli/device_connector.dart';
import 'package:honey/src/cli/flutter_tools.dart';
import 'package:honey/src/protocol/daemon_message.dart';
import 'package:honey/src/protocol/honey_message.dart';

class HoneyDaemon {
  HoneyDaemon(String flutterRoot) {
    Cache.flutterRoot = flutterRoot;
  }

  final _connector = DeviceConnector();

  Future<void> start() async {
    await runInContext(() async {
      _connector
        ..addConnectedDevicesCallback(_handleConnectedDevices)
        ..addMessageCallback(_handleDeviceMessage);
      _handleInputStream();

      while (true) {
        try {
          await _connector.refresh();
        } catch (e) {
          // ignore
        }
        await Future<void>.delayed(const Duration(seconds: 5));
      }
    });
  }

  void _handleConnectedDevices(List<Device> devices) {
    final daemonDevices = devices.map((device) {
      return DaemonDevice(
        id: device.id,
        name: device.name,
        platform: device.platformType!.value,
      );
    }).toList();
    _output(DaemonDevices(daemonDevices));
  }

  void _handleDeviceMessage(Device device, String message) {
    try {
      final json = jsonDecode(message) as Map<String, dynamic>;
      final debugMessage = HoneyMessage.fromJson(json);
      _output(
        DaemonDeviceMessage(
          deviceId: device.id,
          message: debugMessage,
        ),
      );
    } catch (e) {
      // ignore
    }
  }

  void _handleInputStream() {
    stdin.transform(utf8.decoder)
      ..transform(const LineSplitter())
      ..listen((line) {
        try {
          final json = jsonDecode(line) as Map<String, dynamic>;
          final message = DaemonMessage.fromJson(json);
          if (message is DaemonDeviceMessage) {
            _connector.sendMessage(message.deviceId, message.message);
          }
        } catch (e) {
          // ignore
        }
      });
  }

  void _output(DaemonMessage message) {
    final json = jsonEncode(message);
    stdout.writeln(json);
  }
}
