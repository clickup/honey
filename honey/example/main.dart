import 'package:flutter/material.dart';
import 'package:honey/honey.dart';

const kIsHoney = bool.fromEnvironment('HONEY');

void main() {
  if (kIsHoney) {
    HoneyWidgetsBinding.ensureInitialized();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
