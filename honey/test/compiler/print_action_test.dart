import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

import '../utils.dart';

void main() {
  group('Print Action', () {
    test('Synonyms', () {
      final result = func(F.print, [val('some TEXT')]);

      expectExpr('print "some TEXT"', result);
      expectExpr('printing "some TEXT"', result);
      expectExpr('output "some TEXT"', result);
      expectExpr('outputting "some TEXT"', result);
      expectExpr('input "some TEXT"', result);
      expectExpr('inputting "some TEXT"', result);
    });

    test('Maybe', () {
      final result = func(F.print, [val('test123')]);

      expectExpr('maybe print "test123"', result, optional: true);
      expectExpr('try printing "test123"', result, optional: true);
      expectExpr('try to print "test123"', result, optional: true);
      expectExpr('optional print "test123"', result, optional: true);
      expectExpr('optionally print "test123"', result, optional: true);
    });
  });
}
