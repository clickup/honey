import 'dart:convert';

import 'package:honey_cli/src/appium/appium_client.dart';

class AppiumSession {
  AppiumSession._({
    required this.client,
    required this.sessionId,
    required this.isAndroid,
    required this.package,
  });

  final AppiumClient client;
  final String sessionId;
  final bool isAndroid;
  final String package;

  static void _checkResponse(WebDriverResponse<dynamic> response) {
    if (response.statusCode != 200 || response.status != 0) {
      final value = response.value;
      if (value is Map<String, dynamic>) {
        final message = value['message'] as String?;
        if (message != null) {
          throw Exception(message);
        }
      }
      throw Exception(response.reason);
    }
  }

  static Future<AppiumSession> create(
    Uri url,
    Map<String, String> capabilities,
  ) async {
    final client = AppiumClient(url);
    final response = await client.post<Map<String, dynamic>>('session', {
      'desiredCapabilities': capabilities,
    });
    _checkResponse(response);

    final platformName = response.value['platformName'] as String?;
    final isAndroid = platformName?.toLowerCase() == 'android';
    final package =
        (response.value['appPackage'] ?? response.value['bundleId']) as String;

    return AppiumSession._(
      client: client,
      sessionId: response.sessionId,
      isAndroid: isAndroid,
      package: package,
    );
  }

  Future<void> logEvent(String vendor, String event) async {
    final response =
        await client.post<dynamic>('session/$sessionId/appium/log_event', {
      'vendor': 'Honey',
      'event': event,
    });
    _checkResponse(response);
  }

  Future<void> resetApp() async {
    final response =
        await client.post<dynamic>('session/$sessionId/appium/app/reset');
    _checkResponse(response);
  }

  Future<void> setClipboard(String content) async {
    final base64 = const Base64Encoder().convert(utf8.encode(content));
    final response = await client
        .post<dynamic>('session/$sessionId/appium/device/set_clipboard', {
      'content': base64,
      'type': 'plaintext',
    });
    _checkResponse(response);
  }

  Future<void> startApp() async {
    final response =
        await client.post<dynamic>('session/$sessionId/appium/app/launch');
    _checkResponse(response);
  }

  Future<Iterable<String>> getLog() async {
    final response = await client.post<List<dynamic>>(
      'session/$sessionId/log',
      {'type': isAndroid ? 'logcat' : 'syslog'},
    );
    _checkResponse(response);
    return response.value
        .map((e) => (e as Map<String, dynamic>)['message'] as String);
  }

  Future<void> close() async {
    final response = await client.delete<dynamic>('session/$sessionId');
    _checkResponse(response);
  }
}
