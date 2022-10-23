import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';

import '../utils.dart';

void main() {
  group('Conditional Statements', () {
    test('Empty if body', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          ConditionStatementItem(
            statements: [],
            condition: func(F.greater, [
              func(F.length, [
                func(F.widgets, [val('MyWidget')])
              ]),
              val(0),
            ]),
          )
        ],
      );

      expectCondition('if "MyWidget" is visible then\n \nendif', result);
    });

    test('If body', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          ConditionStatementItem(
            statements: [
              ExpressionStatement(
                optional: false,
                expression: func(
                  F.click,
                  [
                    val('single'),
                    val('MyWidget'),
                    val(''),
                  ],
                ),
                source: 'tap "MyWidget"',
                line: 1,
              )
            ],
            condition: func(F.greater, [
              func(F.length, [
                func(F.widgets, [val('MyWidget')])
              ]),
              val(0),
            ]),
          )
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n tap "MyWidget"\nendif',
        result,
      );
    });
  });
}
