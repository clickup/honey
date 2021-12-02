import 'dart:convert';
import 'package:honey_cli/src/appium/appium_client.dart';

class AppiumSession {
  final AppiumClient client;
  final String sessionId;
  final bool isAndroid;
  final String package;

  AppiumSession._({
    required this.client,
    required this.sessionId,
    required this.isAndroid,
    required this.package,
  });

  static _checkResponse(WebDriverResponse response) {
    if (response.statusCode != 200 ||
        (response.body['status'] != null && response.body['status'] != 0)) {
      throw response.body['value']?['message'] ??
          response.reasonPhrase ??
          'Unknown Appium Error';
    }
  }

  static Future<AppiumSession> create(
      Uri url, Map<String, String> capabilities) async {
    final client = AppiumClient(url);

    var response = await client.post('session', {
      'desiredCapabilities': capabilities,
    });
    _checkResponse(response);

    final sessionId = response.body['sessionId'];

    final info = response.body['value'];
    print(info);
    final isAndroid = info['platformName']?.toLowerCase() == 'android';
    final package = info['appPackage'] ?? info['bundleId'];

    return AppiumSession._(
      client: client,
      sessionId: sessionId,
      isAndroid: isAndroid,
      package: package,
    );
  }

  Future logEvent(String vendor, String event) async {
    final response = await client.post('session/$sessionId/appium/log_event', {
      'vendor': 'honey',
      'event': event,
    });
    _checkResponse(response);
  }

  Future resetApp() async {
    final response = await client.post('session/$sessionId/appium/app/reset');
    _checkResponse(response);
  }

  Future setClipboard(String content) async {
    final base64 = Base64Encoder().convert(utf8.encode(content));
    final response =
        await client.post('session/$sessionId/appium/device/set_clipboard', {
      'content': base64,
      'type': 'plaintext',
    });
    _checkResponse(response);
  }

  Future startApp() async {
    final response = await client.post('session/$sessionId/appium/app/launch');
    _checkResponse(response);
  }

  Future pushFile(String path, List<int> bytes) async {
    final base64 = Base64Encoder().convert(bytes);
    final response =
        await client.post('session/$sessionId/appium/device/push_file', {
      'path': path,
      'data': base64,
    });
    _checkResponse(response);
  }

  Future<Iterable<String>> getLog() async {
    final response = await client.post('session/$sessionId/log', {
      'type': isAndroid ? 'logcat' : 'syslog',
    });
    _checkResponse(response);
    final log = response.body['value'] as List;
    return log.map((e) => e['message']);
  }

  Future close() async {
    final response = await client.delete('session/$sessionId');
    _checkResponse(response);
  }
}
