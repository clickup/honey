import 'dart:ui';

import 'package:flutter/services.dart';

class HoneyBinaryMessenger extends BinaryMessenger {
  /// Creates a [TestDefaultBinaryMessenger] instance.
  ///
  /// The [delegate] instance must not be null.
  HoneyBinaryMessenger(this.delegate);

  /// The delegate [BinaryMessenger].
  final BinaryMessenger delegate;

  @override
  Future<void> handlePlatformMessage(String channel, ByteData? data,
      PlatformMessageResponseCallback? callback) {
    return delegate.handlePlatformMessage(channel, data, callback);
  }

  @override
  void setMessageHandler(String channel, MessageHandler? handler) {
    delegate.setMessageHandler(channel, handler);
  }

  // Handlers that intercept and respond to outgoing messages,
  // pretending to be the platform.
  final Map<String, MessageHandler> _outboundHandlers =
      <String, MessageHandler>{};

  @override
  Future<ByteData?>? send(String channel, ByteData? message) {
    final Future<ByteData?>? resultFuture;
    final MessageHandler? handler = _outboundHandlers[channel];
    if (handler != null) {
      resultFuture = handler(message);
    } else {
      resultFuture = delegate.send(channel, message);
    }
    if (resultFuture != null) {
      resultFuture.catchError((Object error) {
        /* errors are the responsibility of the caller */
      });
    }
    return resultFuture;
  }

  /// Set a callback for intercepting messages sent to the platform on
  /// the given channel, without decoding them.
  ///
  /// Intercepted messages are not forwarded to the platform.
  ///
  /// The given callback will replace the currently registered
  /// callback for that channel, if any. To stop intercepting messages
  /// at all, pass null as the handler.
  ///
  /// The handler's return value, if non-null, is used as a response,
  /// unencoded.
  void setMockMessageHandler(String channel, MessageHandler? handler,
      [Object? identity]) {
    if (handler == null) {
      _outboundHandlers.remove(channel);
    } else {
      identity ??= handler;
      _outboundHandlers[channel] = handler;
    }
  }

  /// Set a callback for intercepting method calls sent to the
  /// platform on the given channel.
  ///
  /// Intercepted method calls are not forwarded to the platform.
  ///
  /// The given callback will replace the currently registered
  /// callback for that channel, if any. To stop intercepting messages
  /// at all, pass null as the handler.
  ///
  /// Methods are decoded using the codec of the channel.
  ///
  /// The handler's return value, if non-null, is used as a response,
  /// after re-encoding it using the channel's codec.
  ///
  /// To send an error, throw a [PlatformException] in the handler.
  /// Other exceptions are not caught.
  void setMockMethodCallHandler(MethodChannel channel,
      Future<Object?>? Function(MethodCall message)? handler) {
    if (handler == null) {
      setMockMessageHandler(channel.name, null);
      return;
    }
    setMockMessageHandler(channel.name, (ByteData? message) async {
      final MethodCall call = channel.codec.decodeMethodCall(message);
      try {
        return channel.codec.encodeSuccessEnvelope(await handler(call));
      } on PlatformException catch (error) {
        return channel.codec.encodeErrorEnvelope(
          code: error.code,
          message: error.message,
          details: error.details,
        );
      } on MissingPluginException {
        return null;
      } catch (error) {
        return channel.codec
            .encodeErrorEnvelope(code: 'error', message: '$error');
      }
    }, handler);
  }
}
