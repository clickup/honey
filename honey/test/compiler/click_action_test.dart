import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/models/expression/expression.dart';

import '../utils.dart';

void main() {
  group('Click Action', () {
    test('Synonyms', () {
      final result = func(
        HoneyFunction.click,
        [val('single'), val('myWidget'), empty],
      );

      expectExp('click "myWidget"', result);
      expectExp('clicking "myWidget"', result);
      expectExp('tap "myWidget"', result);
      expectExp('tapping "myWidget"', result);
      expectExp('touch "myWidget"', result);
      expectExp('touching "myWidget"', result);
      expectExp('push "myWidget"', result);
      expectExp('pushing "myWidget"', result);
      expectExp('press "myWidget"', result);
      expectExp('pressing "myWidget"', result);
      expectExp('hit "myWidget"', result);
      expectExp('hitting "myWidget"', result);
      expectExp('slam "myWidget"', result);
      expectExp('slamming "myWidget"', result);
    });

    test('Maybe', () {
      final result = func(
        HoneyFunction.click,
        [val('single'), val('myWidget'), empty],
      );

      expectExp('maybe click "myWidget"', result, optional: true);
      expectExp('try clicking "myWidget"', result, optional: true);
      expectExp('try to click "myWidget"', result, optional: true);
      expectExp('optional click "myWidget"', result, optional: true);
      expectExp('optionally click "myWidget"', result, optional: true);
    });

    test('Left', () {
      final result = func(
        HoneyFunction.click,
        [val('single'), val('myWidget'), empty],
      );

      expectExp('click "myWidget"', result);
      expectExp('click the "myWidget"', result);
      expectExp('click on "myWidget"', result);
      expectExp('click on the "myWidget"', result);
      expectExp('left click "myWidget"', result);
      expectExp('left click on "myWidget"', result);
      expectExp('left click on the "myWidget"', result);
      expectExp('single click "myWidget"', result);
    });

    test('Right', () {
      final result = func(
        HoneyFunction.click,
        [val('right'), val('myWidget'), empty],
      );

      expectExp('right click "myWidget"', result);
      expectExp('right click on "myWidget"', result);
      expectExp('right click on the "myWidget"', result);
      expectExp('right click "myWidget"', result);
    });

    test('Double', () {
      final result = func(
        HoneyFunction.click,
        [val('double'), val('myWidget'), empty],
      );

      expectExp('double click "myWidget"', result);
      expectExp('double click on "myWidget"', result);
      expectExp('double click on the "myWidget"', result);
      expectExp('double click "myWidget"', result);
    });

    test('Long', () {
      final result = func(
        HoneyFunction.click,
        [val('long'), val('myWidget'), empty],
      );

      expectExp('long click "myWidget"', result);
      expectExp('long click on "myWidget"', result);
      expectExp('long click on the "myWidget"', result);
      expectExp('long click "myWidget"', result);
    });

    test('Widget Offset', () {
      final result = func(
        HoneyFunction.click,
        [val('single'), val('myWidget'), val('0.5,0.5')],
      );

      expectExp('click "myWidget" at "0.5,0.5"', result);
      expectExp('click "myWidget" offset "0.5,0.5"', result);
      expectExp('click "myWidget" with offset "0.5,0.5"', result);
    });

    test('Offset', () {
      final result = func(
        HoneyFunction.click,
        [val('single'), empty, val('0.5,0.5')],
      );

      expectExp('click at "0.5,0.5"', result);
      expectExp('click offset "0.5,0.5"', result);
      expectExp('click with offset "0.5,0.5"', result);
    });
  });
}
