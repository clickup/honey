import 'dart:async';

import 'package:flutter/material.dart';
import 'package:honey/src/honey_widgets_binding.dart';
import 'package:honey/src/overlay/honey_overlay.dart';

class HoneyApp extends StatefulWidget {
  const HoneyApp({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<HoneyApp> createState() => _HoneyAppState();
}

class _HoneyAppState extends State<HoneyApp> {
  late final StreamSubscription<void> _subscription;
  bool overlay = false;

  @override
  void initState() {
    _subscription = HoneyWidgetsBinding.instance.statusStream.listen((status) {
      setState(() {
        overlay = status == HoneyStatus.overlay;
      });
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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: overlay ? HoneyOverlay(child: widget.child) : widget.child,
    );
  }
}
