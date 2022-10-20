import 'dart:convert';
import 'package:honey/src/cli/appium/appium_client.dart';

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

  static void _checkResponse(WebDriverResponse response) {
    if (response.statusCode != 200 ||
        (response.body['status'] != null && response.body['status'] != 0)) {
      final error = response.body['value']?['message'] ??
          response.reasonPhrase ??
          'Unknown Appium Error';
      throw StateError(error as String);
    }
  }

  static Future<AppiumSession> create(
      Uri url, Map<String, String> capabilities,) async {
    final client = AppiumClient(url);
    final response = await client.post('session', {
      'desiredCapabilities': capabilities,
    });
    _checkResponse(response);

    final sessionId = response.body['sessionId'] as String;

    final info = response.body['value'] as Map<String, dynamic>;
    final isAndroid = info['platformName']?.toLowerCase() == 'android';
    final package = (info['appPackage'] ?? info['bundleId']) as String;

    return AppiumSession._(
      client: client,
      sessionId: sessionId,
      isAndroid: isAndroid,
      package: package,
    );
  }

  Future<void> logEvent(String vendor, String event) async {
    final response = await client.post('session/$sessionId/appium/log_event', {
      'vendor': 'honey',
      'event': event,
    });
    _checkResponse(response);
  }

  Future<void> resetApp() async {
    final response = await client.post('session/$sessionId/appium/app/reset');
    _checkResponse(response);
  }

  Future<void> setClipboard(String content) async {
    final base64 = const Base64Encoder().convert(utf8.encode(content));
    final response =
        await client.post('session/$sessionId/appium/device/set_clipboard', {
      'content': base64,
      'type': 'plaintext',
    });
    _checkResponse(response);
  }

  Future<void> startApp() async {
    final response = await client.post('session/$sessionId/appium/app/launch');
    _checkResponse(response);
  }

  Future<Iterable<String>> getLog() async {
    final response = await client.post('session/$sessionId/log', {
      'type': isAndroid ? 'logcat' : 'syslog',
    });
    _checkResponse(response);
    final log = response.body['value'] as List;
    return log.map((e) => (e as Map<String, dynamic>)['message'] as String);
  }

  Future<void> close() async {
    final response = await client.delete('session/$sessionId');
    _checkResponse(response);
  }
}
