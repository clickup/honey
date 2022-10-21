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

      expectExp('see "myWidget"', result);
      expectExp('seeing "myWidget"', result);
      expectExp('look "myWidget"', result);
      expectExp('looking "myWidget"', result);
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

      expectExp('maybe see "myWidget"', result, optional: true);
      expectExp('try seeing "myWidget"', result, optional: true);
      expectExp('try to see "myWidget"', result, optional: true);
      expectExp('optional see "myWidget"', result, optional: true);
      expectExp('optionally see "myWidget"', result, optional: true);
    });
  });
}
