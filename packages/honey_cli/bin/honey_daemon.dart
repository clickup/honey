// @dart = 2.8

import 'package:honey_cli/src/honey_daemon.dart';

Future main(List<String> args) async {
  await HoneyDaemon().start();
}
