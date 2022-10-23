import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

import '../utils.dart';

void main() {
  group('See Action', () {
    test('Synonyms', () {
      final result = func(F.verify, [
        func(F.greater, [
          func(F.length, [
            func(F.widgets, [val('myWidget')])
          ]),
          val(0),
        ]),
      ]);

      expectExpr('see "myWidget"', result);
      expectExpr('seeing "myWidget"', result);
      expectExpr('look "myWidget"', result);
      expectExpr('looking "myWidget"', result);
      expectExpr('watch "myWidget"', result);
      expectExpr('watching "myWidget"', result);
    });

    test('Maybe', () {
      final result = func(F.verify, [
        func(F.greater, [
          func(F.length, [
            func(F.widgets, [val('myWidget')])
          ]),
          val(0),
        ]),
      ]);

      expectExpr('maybe see "myWidget"', result, optional: true);
      expectExpr('try seeing "myWidget"', result, optional: true);
      expectExpr('try to see "myWidget"', result, optional: true);
      expectExpr('optional see "myWidget"', result, optional: true);
      expectExpr('optionally see "myWidget"', result, optional: true);
    });
  });
}
