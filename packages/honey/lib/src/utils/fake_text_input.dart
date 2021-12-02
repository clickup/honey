import 'dart:async';

import 'package:flutter/services.dart';
import 'package:honey/src/binding/honey_binding.dart';

class FakeTextInput {
  /// Create a fake keyboard backend.
  ///
  /// The [onCleared] argument may be set to be notified of when the keyboard
  /// is dismissed.
  FakeTextInput() {
    final messenger = HoneyBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(
        SystemChannels.textInput, _handleTextInputCall);
  }

  void dispose() {
    final messenger = HoneyBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(SystemChannels.textInput, null);
  }

  /// The messenger which sends the bytes for this channel, not null.
  BinaryMessenger get _binaryMessenger =>
      ServicesBinding.instance!.defaultBinaryMessenger;

  /// Resets any internal state of this object and calls [register].
  ///
  /// This method is invoked by the testing framework between tests. It should
  /// not ordinarily be called by tests directly.
  void reset() {
    _client = 0;
    _isVisible = false;
  }

  int _client = 0;

  Future<dynamic> _handleTextInputCall(MethodCall methodCall) async {
    switch (methodCall.method) {
      case 'TextInput.setClient':
        _client = methodCall.arguments[0] as int;
        break;
      case 'TextInput.updateConfig':
        break;
      case 'TextInput.clearClient':
        _client = 0;
        _isVisible = false;
        break;
      case 'TextInput.setEditingState':
        break;
      case 'TextInput.show':
        _isVisible = true;
        break;
      case 'TextInput.hide':
        _isVisible = false;
        break;
    }
  }

  /// Whether the onscreen keyboard is visible to the user.
  bool get isVisible => _isVisible;

  bool _isVisible = false;

  bool get hasClient => _client != 0;

  void updateEditingValue(TextEditingValue value) {
    _binaryMessenger.handlePlatformMessage(
      SystemChannels.textInput.name,
      SystemChannels.textInput.codec.encodeMethodCall(
        MethodCall(
          'TextInputClient.updateEditingState',
          <dynamic>[_client, value.toJSON()],
        ),
      ),
      (ByteData? data) {/* response from framework is discarded */},
    );
  }

  /// Simulates the user closing the text input connection.
  ///
  /// For example:
  /// - User pressed the home button and sent the application to background.
  /// - User closed the virtual keyboard.
  void closeConnection() {
    _binaryMessenger.handlePlatformMessage(
      SystemChannels.textInput.name,
      SystemChannels.textInput.codec.encodeMethodCall(
        MethodCall('TextInputClient.onConnectionClosed', <dynamic>[
          _client,
        ]),
      ),
      (ByteData? data) {/* response from framework is discarded */},
    );
  }

  /// Simulates the user typing the given text.
  ///
  /// Calling this method replaces the content of the connected input field with
  /// `text`, and places the caret at the end of the text.
  void enterText(String text) {
    updateEditingValue(TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    ));
  }
}
