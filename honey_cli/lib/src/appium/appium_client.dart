import 'dart:convert';
import 'dart:io';

import 'package:synchronized/synchronized.dart';

class AppiumClient {
  AppiumClient(Uri prefix, {Map<String, String> headers = const {}})
      : _prefix = prefix,
        _headers = headers;

  final HttpClient client = HttpClient();
  final Uri _prefix;
  final Map<String, String> _headers;

  final Lock _lock = Lock();

  Uri resolve(String command) => _prefix.resolve(
        command.isEmpty
            ? _prefix.path.replaceFirst(RegExp(r'/$'), '')
            : command,
      );

  Future<WebDriverResponse<T>> get<T>(String command) {
    return _rawRequest('GET', command, null);
  }

  Future<WebDriverResponse<T>> post<T>(
    String command, [
    Map<String, dynamic>? body,
  ]) {
    return _rawRequest('POST', command, body);
  }

  Future<WebDriverResponse<T>> delete<T>(
    String command, [
    Map<String, dynamic>? body,
  ]) {
    return _rawRequest('DELETE', command, body);
  }

  Future<WebDriverResponse<T>> _rawRequest<T>(
    String method,
    String command,
    Map<String, dynamic>? body,
  ) async {
    return _lock.synchronized(() async {
      late HttpClientRequest httpRequest;

      switch (method) {
        case 'GET':
          httpRequest = await client.getUrl(resolve(command));
          break;
        case 'POST':
          httpRequest = await client.postUrl(resolve(command));
          break;
        case 'DELETE':
          httpRequest = await client.deleteUrl(resolve(command));
          break;
      }

      httpRequest.followRedirects = true;
      _headers.forEach(httpRequest.headers.add);
      httpRequest.headers.add(HttpHeaders.acceptHeader, 'application/json');
      httpRequest.headers.add(HttpHeaders.acceptCharsetHeader, utf8.name);
      httpRequest.headers.add(HttpHeaders.cacheControlHeader, 'no-cache');

      if (body != null && body.isNotEmpty) {
        httpRequest.headers.contentType =
            ContentType('application', 'json', charset: 'utf-8');
        final bodyJson = jsonEncode(body);
        final bodyBytes = utf8.encode(bodyJson);
        httpRequest
          ..contentLength = bodyBytes.length
          ..add(bodyBytes);
      }

      final response = await httpRequest.close();
      return WebDriverResponse.fromResponse(response);
    });
  }
}

class WebDriverResponse<T> {
  WebDriverResponse({
    required this.statusCode,
    required this.reason,
    required this.sessionId,
    required this.status,
    required this.value,
  });

  final int statusCode;
  final String reason;

  final String sessionId;
  final int status;
  final T value;

  static Future<WebDriverResponse<T>> fromResponse<T>(
    HttpClientResponse response,
  ) async {
    final responseStr = await utf8.decodeStream(response.cast<List<int>>());
    Map<String, dynamic>? responseBody;
    if (responseStr.isNotEmpty) {
      responseBody = jsonDecode(responseStr) as Map<String, dynamic>;
    }
    return WebDriverResponse(
      statusCode: response.statusCode,
      reason: response.reasonPhrase,
      sessionId: responseBody?['sessionId'] as String? ?? '',
      status: responseBody?['status'] as int? ?? 99,
      value: responseBody?['value'] as T,
    );
  }
}
