import 'dart:convert';
import 'dart:io';

import 'package:honey_core/honey_core.dart';
import 'package:honey_cli/src/device_connector.dart';
import 'package:honey_cli/src/models/daemon_message.dart';
import 'package:honey_parser/honey_parser.dart';

import 'flutter_tools.dart';

class HoneyDaemon {
  final _connector = DeviceConnector();

  HoneyDaemon(String flutterRoot) {
    Cache.flutterRoot = flutterRoot;
  }

  Future start() async {
    await runInContext(() async {
      _connector.addConnectedDevicesCallback(_handleConnectedDevices);
      _connector.addMessageCallback(_handleDeviceMessage);
      _handleInputStream();

      while (true) {
        try {
          await _connector.refresh();
        } catch (e) {
          _outputError(e);
        }
        await Future.delayed(Duration(seconds: 5));
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
    _output(DaemonMessage.devices(
      devices: daemonDevices,
    ));
  }

  void _handleDeviceMessage(Device device, String message) {
    try {
      final json = jsonDecode(message);
      final debugMessage = DebugMessage.fromJson(json);
      _output(DaemonMessage.message(
        deviceId: device.id,
        message: debugMessage,
      ));
    } catch (e) {
      _outputError(e);
    }
  }

  void _handleInputStream() {
    final input = stdin.transform(utf8.decoder).transform(LineSplitter());
    input.listen((line) {
      try {
        final json = jsonDecode(line);
        final message = DaemonMessage.fromJson(json);
        if (message is DaemonCompile) {
          _handleCompileRequest(message);
        } else if (message is DaemonDeviceMessage) {
          _connector.sendMessage(message.deviceId, message.message);
        } else {
          _outputError('Unknown message: $message');
        }
      } catch (e) {
        _outputError(e);
      }
    });
  }

  void _handleCompileRequest(DaemonCompile request) {
    final results = <CompiledHoneyTalk>[];
    for (var source in request.sources) {
      try {
        final result = compileHoneyTalk(source);
        results.add(CompiledHoneyTalk(
          statements: result.statements,
          error: result.errorLine != null ? 'Compilation error' : null,
          errorLine: result.errorLine,
          errorColumn: result.errorColumn,
        ));
      } catch (e) {
        results.add(CompiledHoneyTalk(error: 'Internal compiler error'));
      }
    }

    final daemonResult = DaemonMessage.compileResult(
      requestId: request.requestId,
      results: results,
    );
    _output(daemonResult);
  }

  void _output(DaemonMessage message) {
    final json = jsonEncode(message.toJson());
    stdout.writeln(json);
  }

  void _outputError(dynamic error) {
    _output(DaemonMessage.error(error: error.toString()));
  }
}
