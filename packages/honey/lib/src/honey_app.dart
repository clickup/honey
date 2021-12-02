import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:honey/src/binding/honey_binding.dart';
import 'package:honey/src/overlay/honey_overlay.dart';

import 'binding/honey_debug.dart';

class HoneyDebugApp extends StatefulWidget {
  final Widget child;

  const HoneyDebugApp({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _HoneyAppState createState() => _HoneyAppState();
}

class _HoneyAppState extends State<HoneyDebugApp> {
  late final StreamSubscription _subscription;

  @override
  void initState() {
    _subscription = HoneyDebug.instance.stream.listen((_) {
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
    final overlay = HoneyDebug.instance.overlayEnabled;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: overlay ? HoneyOverlay(child: widget.child) : widget.child,
    );
  }
}
