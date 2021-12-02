import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/src/honey_app.dart';
import 'package:honey/src/utils/honey_binary_messenger.dart';

class HoneyBinding extends WidgetsFlutterBinding {
  final _semanticTagProperties = <String, Map<String, dynamic>>{};
  var _widgetKey = GlobalKey(debugLabel: 'honeyKey');

  var debugMode = true;

  HoneyBinding() {
    pipelineOwner.ensureSemantics();
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    if (debugMode) {
      super.scheduleAttachRootWidget(HoneyDebugApp(
        child: KeyedSubtree(
          key: _widgetKey,
          child: rootWidget,
        ),
      ));
    } else {
      super.scheduleAttachRootWidget(rootWidget);
    }
  }

  void resetWidgetKey() {
    _widgetKey = GlobalKey(debugLabel: 'honeyKey');
  }

  Future waitUntilSettled(Duration timeout) async {
    final s = Stopwatch()..start();
    do {
      scheduleFrame();
      await endOfFrame;
    } while (hasScheduledFrame && s.elapsed < timeout);
  }

  void updateSemanticsProperties(
      SemanticsTag tag, Map<String, dynamic>? properties) {
    if (properties != null) {
      _semanticTagProperties[tag.name] = properties;
    } else {
      _semanticTagProperties.remove(tag.name);
    }
  }

  Map<String, dynamic>? getSemanticsProperties(SemanticsTag tag) {
    return _semanticTagProperties[tag];
  }

  static HoneyBinding get instance => WidgetsBinding.instance as HoneyBinding;

  @override
  HoneyBinaryMessenger get defaultBinaryMessenger =>
      super.defaultBinaryMessenger as HoneyBinaryMessenger;

  @override
  HoneyBinaryMessenger createBinaryMessenger() {
    return HoneyBinaryMessenger(super.createBinaryMessenger());
  }
}
