import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/name_modifier.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Widget name', () {
    test('Single name', () {
      expectExpr(
        'widget "hello"',
        func(F.widgets, {
          pName: list([val('hello')]),
          pModifier: val(NameModifier.caseInsensitive.name),
        }),
      );
    });

    test('Multiple names', () {
      expectExpr(
        'widget "hello" or "test" or "test2"',
        func(F.widgets, {
          pName: list([val('hello'), val('test'), val('test2')]),
          pModifier: val(NameModifier.caseInsensitive.name),
        }),
      );
    });

    test('Name modifier', () {
      final caseSensitive = func(F.widgets, {
        pName: list([val('test123')]),
        pModifier: val(NameModifier.caseSensitive.name),
      });
      expectExpr('case sensitive "test123" widget', caseSensitive);
      expectExpr('case sensitive "test123"', caseSensitive);
      expectExpr('case-sensitive "test123" widget', caseSensitive);
      expectExpr('case-sensitive "test123"', caseSensitive);

      final caseInsensitive = func(F.widgets, {
        pName: list([val('test123')]),
        pModifier: val(NameModifier.caseInsensitive.name),
      });
      expectExpr('case insensitive "test123" widget', caseInsensitive);
      expectExpr('case insensitive "test123"', caseInsensitive);
      expectExpr('case-insensitive "test123" widget', caseInsensitive);
      expectExpr('case-insensitive "test123"', caseInsensitive);

      final exactly = func(F.widgets, {
        pName: list([val('test123')]),
        pModifier: val(NameModifier.exactly.name),
      });
      expectExpr('exactly "test123" widget', exactly);
      expectExpr('exactly "test123"', exactly);
    });
  });
}
