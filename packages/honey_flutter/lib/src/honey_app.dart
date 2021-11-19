import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/src/honey_binding.dart';
import 'package:honey/src/overlay/honey_overlay.dart';
import 'package:honey_core/honey_core.dart';

import 'runner/context/honey_context.dart';
import 'runner/function_params.dart';

typedef CustomFunction = Future<Expression> Function(
    HoneyContext ctx, FunctionParams params);
typedef DebugCodeBuilder = Positioned Function(BuildContext contex, int code);

const kHoneyMode = !kReleaseMode && !bool.hasEnvironment('NO_HONEY');

void honey({
  required Future Function() main,
  required Future Function() resetApp,
  Map<String, CustomFunction> customFunctions = const {},
}) {
  if (kHoneyMode) {
    print('honey mode');
    final binding = HoneyBinding(
      main: main,
      resetApp: resetApp,
      customFunctions: customFunctions,
    );
    binding.restartApp();
  } else {
    main();
  }
}

class HoneyApp extends StatefulWidget {
  final Widget child;

  const HoneyApp({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _HoneyAppState createState() => _HoneyAppState();
}

class _HoneyAppState extends State<HoneyApp> {
  late final StreamSubscription _subscription;
  SemanticsHandle? _semanticsHandle;

  @override
  void initState() {
    final binding = HoneyBinding.instance;
    _subscription = binding.stream.listen((_) {
      if (binding.connected) {
        if (_semanticsHandle == null) {
          _semanticsHandle = binding.pipelineOwner.ensureSemantics();
        }
      } else {
        _semanticsHandle?.dispose();
        _semanticsHandle = null;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final overlay = HoneyBinding.instance.overlayEnabled;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: overlay ? HoneyOverlay(child: widget.child) : widget.child,
    );
  }
}
