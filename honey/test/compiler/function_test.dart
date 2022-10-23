import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Function', () {
    test('call without params', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([]),
      });

      expectExpr('myFunction()', result);
      expectExpr('do myFunction', result);
      expectExpr('run myFunction', result);
      expectExpr('call myFunction', result);
      expectExpr('invoke myFunction', result);
      expectExpr('perform myFunction', result);
      expectExpr('trigger myFunction', result);
      expectExpr('exe myFunction', result);
      expectExpr('exec myFunction', result);
      expectExpr('execute myFunction', result);
      expectExpr('eval myFunction', result);
    });

    test('call with single positional param', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([val(0), val('param1')]),
      });

      expectExpr('myFunction("param1")', result);
      expectExpr('myFunction with "param1"', result);
      expectExpr('run myFunction with "param1"', result);
    });

    test('call with multiple positional params', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([
          val(0),
          val('param1'),
          val(1),
          val('param2'),
          val(2),
          val('param3')
        ]),
      });

      expectExpr('myFunction("param1", "param2", "param3")', result);
      expectExpr('myFunction("param1" and "param2" and "param3")', result);
      expectExpr('myFunction("param1" and "param2", "param3")', result);

      expectExpr('myFunction with "param1", "param2", "param3"', result);
      expectExpr('myFunction with "param1" and "param2" and "param3"', result);
      expectExpr('myFunction with "param1" and "param2", "param3"', result);

      expectExpr('run myFunction with "param1", "param2", "param3"', result);
      expectExpr(
        'run myFunction with "param1" and "param2" and "param3"',
        result,
      );
      expectExpr('run myFunction with "param1" and "param2", "param3"', result);
    });

    test('call with single named param', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([val('myp1'), val('param1')]),
      });

      expectExpr('myFunction(myP1: "param1")', result);
      expectExpr('myFunction(myP1 "param1")', result);
      expectExpr('myFunction with myP1: "param1"', result);
      expectExpr('myFunction with myP1 "param1"', result);
      expectExpr('run myFunction with myP1: "param1"', result);
      expectExpr('run myFunction with myP1 "param1"', result);
    });

    test('call with multiple named params', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([
          val('myp1'),
          val('param1'),
          val('myp2'),
          val('param2'),
          val('myp3'),
          val('param3')
        ]),
      });

      expectExpr(
        'myFunction(myP1: "param1", myP2 "param2", myP3: "param3")',
        result,
      );
      expectExpr(
        'myFunction(myP1: "param1" and myP2 "param2" and myP3: "param3")',
        result,
      );
      expectExpr(
        'myFunction(myP1: "param1" and myP2 "param2", myP3 "param3")',
        result,
      );

      expectExpr(
        'myFunction with myP1: "param1", myP2 "param2", myP3: "param3"',
        result,
      );
      expectExpr(
        'myFunction with myP1: "param1" and myP2 "param2" and myP3: "param3"',
        result,
      );
      expectExpr(
        'myFunction with myP1: "param1" and myP2 "param2", myP3 "param3"',
        result,
      );

      expectExpr(
        'run myFunction with myP1: "param1", myP2 "param2", myP3: "param3"',
        result,
      );
      expectExpr(
        'run myFunction with myP1: "param1" and myP2 '
        '"param2" and myP3: "param3"',
        result,
      );
      expectExpr(
        'run myFunction with myP1: "param1" and myP2 "param2", myP3 "param3"',
        result,
      );
    });

    test('call with mixed params', () {
      final result = func(F.function, {
        pName: val('myfunction'),
        pValue: list([
          val(0),
          val('param1'),
          val('myp2'),
          val('param2'),
          val(1),
          val('param3'),
          val('myp4'),
          val('param4'),
        ]),
      });

      expectExpr(
        'myFunction("param1", myP2: "param2", "param3", myP4 "param4")',
        result,
      );
      expectExpr(
        'myFunction("param1" and myP2 "param2" and "param3" and myP4 "param4")',
        result,
      );
      expectExpr(
        'myFunction("param1" and myP2 "param2", "param3" and myP4 "param4")',
        result,
      );

      expectExpr(
        'myFunction with "param1", myP2: "param2", "param3", myP4 "param4"',
        result,
      );
      expectExpr(
        'myFunction with "param1" and myP2 "param2" '
        'and "param3" and myP4 "param4"',
        result,
      );
      expectExpr(
        'myFunction with "param1" and myP2 "param2", '
        '"param3" and myP4 "param4"',
        result,
      );

      expectExpr(
        'run myFunction with "param1", myP2: "param2", '
        '"param3", myP4 "param4"',
        result,
      );
      expectExpr(
        'run myFunction with "param1" and myP2 "param2" '
        'and "param3" and myP4 "param4"',
        result,
      );
      expectExpr(
        'run myFunction with "param1" and myP2 "param2", '
        '"param3" and myP4 "param4"',
        result,
      );
    });
  });
}
