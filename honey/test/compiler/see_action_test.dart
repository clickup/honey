import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('See Action', () {
    test('Synonyms', () {
      final result = func(HoneyFunction.verify, [
        func(HoneyFunction.greater, [
          func(HoneyFunction.length, [
            func(HoneyFunction.widgets, [val('myWidget')])
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
      final result = func(HoneyFunction.verify, [
        func(HoneyFunction.greater, [
          func(HoneyFunction.length, [
            func(HoneyFunction.widgets, [val('myWidget')])
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
