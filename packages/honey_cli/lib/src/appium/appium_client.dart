import 'dart:convert';
import 'dart:io';

import 'package:synchronized/synchronized.dart';

class AppiumClient {
  final HttpClient client = HttpClient();
  final Uri _prefix;
  final Map<String, String> _headers;

  final Lock _lock = Lock();

  AppiumClient(Uri prefix, {Map<String, String> headers = const {}})
      : _prefix = prefix,
        _headers = headers;

  Uri resolve(String command) => _prefix.resolve(
      command.isEmpty ? _prefix.path.replaceFirst(RegExp('/\$'), '') : command);

  Future<WebDriverResponse> get(String command) {
    return _rawRequest('GET', command, null);
  }

  Future<WebDriverResponse> post(String command, [Map<String, dynamic>? body]) {
    return _rawRequest('POST', command, body);
  }

  Future<WebDriverResponse> delete(String command,
      [Map<String, dynamic>? body]) {
    return _rawRequest('DELETE', command, body);
  }

  Future<WebDriverResponse> _rawRequest(
      String method, String command, Map<String, dynamic>? body) async {
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
        httpRequest.contentLength = bodyBytes.length;
        httpRequest.add(bodyBytes);
      }

      final response = await httpRequest.close();
      final responseStr = await utf8.decodeStream(response.cast<List<int>>());
      Map<String, dynamic>? responseBody;
      if (responseStr.isNotEmpty) {
        responseBody = jsonDecode(responseStr);
      }
      return WebDriverResponse(
          response.statusCode, response.reasonPhrase, responseBody ?? {});
    });
  }
}

class WebDriverResponse {
  final int? statusCode;

  final String? reasonPhrase;
  final Map<String, dynamic> body;

  WebDriverResponse(this.statusCode, this.reasonPhrase, this.body);

  @override
  String toString() => '$reasonPhrase ($statusCode): $body';
}
