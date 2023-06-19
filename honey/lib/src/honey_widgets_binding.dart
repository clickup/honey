import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/controller/appium.dart';
import 'package:honey/src/controller/debug.dart';
import 'package:honey/src/honey_function.dart';
import 'package:honey/src/overlay/honey_overlay.dart';

/// The Honey test mode.
enum HoneyMode {
  /// Test debug mode. Tries to connect to the VSCode extension to execute
  /// tests.
  debug,

  /// Test appium mode. Tries to connect to the Appium server to execute tests.
  appium,
}

/// Flutter widgets binding for Honey tests. Only use this binding during tests.
class HoneyWidgetsBinding extends BindingBase
    with
        GestureBinding,
        SchedulerBinding,
        ServicesBinding,
        PaintingBinding,
        SemanticsBinding,
        RendererBinding,
        WidgetsBinding,
        TestDefaultBinaryMessengerBinding {
  static HoneyWidgetsBinding get instance =>
      BindingBase.checkInstance(_instance);
  static HoneyWidgetsBinding? _instance;

  final _semanticTagProperties = <String, Map<String, String>>{};

  final _key = GlobalKey(debugLabel: 'HoneyWidgetBindingKey');
  var _testing = false;
  Widget? _rootWidget;
  late TestTextInput _testTextInput;

  /// @nodoc
  @protected
  TestTextInput get testTextInput => _testTextInput;

  /// @nodoc
  @protected
  Size get screenSize => window.physicalSize / window.devicePixelRatio;

  @override
  void initInstances() {
    super.initInstances();
    _instance = this;
    _testTextInput = TestTextInput();
  }

  /// Initializes the Honey binding. Should be called before everything else.
  ///
  /// [HoneyMode.debug] allows running tests using the VSCode extension. Use
  /// [HoneyMode.appium] to run Appium tests in a CI environment.
  ///
  /// By providing [customFunctions] you can extend or alter the Honey language.
  static void ensureInitialized({
    HoneyMode mode = HoneyMode.debug,
    Map<String, HoneyFunction> customFunctions = const {},
  }) {
    if (_instance == null) {
      _instance = HoneyWidgetsBinding();
      instance.pipelineOwner.ensureSemantics();

      switch (mode) {
        case HoneyMode.debug:
          DebugController(customFunctions);
          break;
        case HoneyMode.appium:
          instance._testing = true;
          runFromClipboard(customFunctions);
          break;
      }
    }
  }

  @override
  void scheduleAttachRootWidget(Widget rootWidget) {
    /// In old flutter versions, when we passed MyApp to a 'runApp' method, it
    /// was being passed here. Then when we called runApp again in [reset] method,
    /// it was being passed here again constantly. Now after flutter upgrade to 3.10
    /// after calling runApp in [reset] method, the rootWidget is being passed wrapped with View widget
    /// so we need to unwrap it here. Otherwise it causes an error with accessing the inactive element.
    if (_rootWidget?.key != rootWidget.key) {
      _rootWidget = rootWidget;
    } else if (_rootWidget != rootWidget) {
      final view = rootWidget as View;
      _rootWidget = rootWidget.child;
    }

    Widget widget = KeyedSubtree(key: _key, child: _rootWidget!);
    if (!_testing) {
      widget = HoneyOverlay(child: widget);
    }

    super.scheduleAttachRootWidget(widget);
  }

  /// @nodoc
  @protected
  Future<void> waitUntilSettled(Duration timeout) async {
    final s = Stopwatch()..start();
    do {
      scheduleFrame();
      await endOfFrame;
    } while (hasScheduledFrame && s.elapsed < timeout);
  }

  /// @nodoc
  @protected
  void updateSemanticsProperties(
    SemanticsTag tag,
    Map<String, String>? properties,
  ) {
    if (properties != null) {
      _semanticTagProperties[tag.name] = properties;
    } else {
      _semanticTagProperties.remove(tag.name);
    }
  }

  /// @nodoc
  @protected
  Map<String, String>? getSemanticsProperties(SemanticsTag tag) {
    return _semanticTagProperties[tag];
  }

  /// @nodoc
  @protected
  void reset({required bool testing}) {
    _testing = testing;
    resetGestureBinding();
    _testTextInput.reset();
    if (testing) {
      _testTextInput.register();
    } else {
      _testTextInput.unregister();
    }

    if (_rootWidget != null) {
      runApp(_rootWidget!);
    }
  }
}
