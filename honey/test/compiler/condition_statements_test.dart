import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/statement.dart';

import '../utils.dart';

void main() {
  group('Conditional Statements', () {
    test('Empty if body', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          ConditionStatementItem(
            statements: const [],
            condition: func(F.greater, {
              pLeft: func(F.length, {
                pValue: func(F.widgets, {pTarget: val('MyWidget')})
              }),
              pRight: val(0),
            }),
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
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget'),
                }),
                source: 'tap "MyWidget"',
                line: 1,
              )
            ],
            condition: func(F.greater, {
              pLeft: func(F.length, {
                pValue: func(F.widgets, {pTarget: val('MyWidget')})
              }),
              pRight: val(0),
            }),
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
