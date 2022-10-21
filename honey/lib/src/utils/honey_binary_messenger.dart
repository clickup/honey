import 'package:flutter/services.dart';

class HoneyBinaryMessenger extends BinaryMessenger {
  HoneyBinaryMessenger(this.delegate);

  final BinaryMessenger delegate;

  @override
  Future<void> handlePlatformMessage(
    String channel,
    ByteData? data,
    PlatformMessageResponseCallback? callback,
  ) {
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
    final handler = _outboundHandlers[channel];
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

  void setMockMessageHandler(
    String channel,
    MessageHandler? handler, [
    Object? identity,
  ]) {
    if (handler == null) {
      _outboundHandlers.remove(channel);
    } else {
      identity ??= handler;
      _outboundHandlers[channel] = handler;
    }
  }

  void setMockMethodCallHandler(
    MethodChannel channel,
    Future<Object?>? Function(MethodCall message)? handler,
  ) {
    if (handler == null) {
      setMockMessageHandler(channel.name, null);
      return;
    }
    setMockMessageHandler(
      channel.name,
      (ByteData? message) async {
        final call = channel.codec.decodeMethodCall(message);
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
      },
      handler,
    );
  }
}
