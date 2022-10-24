import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/consts/property.dart';

import '../utils.dart';

void main() {
  group('Widget name', () {
    test('Simple name', () {
      expectExpr(
        'widget "hello"',
        func(F.widgets, {
          pTarget: list([str('hello', regexFlags: 'i')]),
        }),
      );
    });
  });
}
