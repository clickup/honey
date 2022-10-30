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
          _generateFakeItem(
            'MyWidget',
            sourceLine: 0,
            hasStatements: false,
          ),
        ],
      );

      expectCondition('if "MyWidget" is visible then\n \nendif', result);
    });

    test('If body', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          _generateFakeItem(
            'MyWidget',
            sourceLine: 1,
          ),
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n tap "MyWidget"\nendif',
        result,
      );
    });

    test('If body with else', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          _generateFakeItem(
            'MyWidget',
            sourceLine: 1,
          ),
          _generateFakeItem(
            'MyWidget2',
            sourceLine: 3,
            hasCondition: false,
          ),
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else\n'
        'tap "MyWidget2"\n'
        'endif',
        result,
      );
    });

    test('If body with else if', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          _generateFakeItem(
            'MyWidget',
            sourceLine: 1,
          ),
          _generateFakeItem(
            'MyWidget2',
            sourceLine: 3,
          ),
          _generateFakeItem(
            'MyWidget3',
            sourceLine: 5,
            hasCondition: false,
          ),
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else if "MyWidget2" is visible then\n'
        'tap "MyWidget2"\n'
        'else\n'
        'tap "MyWidget3"\n'
        'endif',
        result,
      );
    });

    test('Multiple else-if statements', () {
      final result = ConditionStatement(
        source: 'my',
        line: 0,
        conditionStatements: [
          _generateFakeItem(
            'MyWidget',
            sourceLine: 1,
          ),
          _generateFakeItem(
            'MyWidget2',
            sourceLine: 3,
          ),
          _generateFakeItem(
            'MyWidget3',
            sourceLine: 5,
          ),
          _generateFakeItem(
            'MyWidget4',
            sourceLine: 7,
            hasCondition: false,
          ),
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'else if "MyWidget2" is visible then\n'
        'tap "MyWidget2"\n'
        'else if "MyWidget3" is visible then\n'
        'tap "MyWidget3"\n'
        'else\n'
        'tap "MyWidget4"\n'
        'endif',
        result,
      );
    });

    test('Multiple statements within if block', () {
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
              ),
              ExpressionStatement(
                optional: false,
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget'),
                }),
                source: 'tap "MyWidget"',
                line: 2,
              ),
              ExpressionStatement(
                optional: false,
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget'),
                }),
                source: 'tap "MyWidget"',
                line: 3,
              )
            ],
            condition: func(F.greater, {
              pLeft: func(F.length, {
                pValue: func(F.widgets, {pTarget: val('MyWidget')})
              }),
              pRight: val(0),
            }),
          ),
          ConditionStatementItem(
            statements: [
              ExpressionStatement(
                optional: false,
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget2'),
                }),
                source: 'tap "MyWidget2"',
                line: 5,
              ),
              ExpressionStatement(
                optional: false,
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget2'),
                }),
                source: 'tap "MyWidget2"',
                line: 6,
              ),
              ExpressionStatement(
                optional: false,
                expression: func(F.click, {
                  pType: val('single'),
                  pTarget: val('MyWidget2'),
                }),
                source: 'tap "MyWidget2"',
                line: 7,
              )
            ],
          )
        ],
      );

      expectCondition(
        'if "MyWidget" is visible then\n'
        'tap "MyWidget"\n'
        'tap "MyWidget"\n'
        'tap "MyWidget"\n'
        'else\n'
        'tap "MyWidget2"\n'
        'tap "MyWidget2"\n'
        'tap "MyWidget2"\n'
        'endif',
        result,
      );
    });
  });
}

ConditionStatementItem _generateFakeItem(
  String name, {
  required int sourceLine,
  bool hasCondition = true,
  bool hasStatements = true,
}) {
  return ConditionStatementItem(
    statements: hasStatements
        ? [
            ExpressionStatement(
              optional: false,
              expression: func(F.click, {
                pType: val('single'),
                pTarget: val(name),
              }),
              source: 'tap "$name"',
              line: sourceLine,
            )
          ]
        : [],
    condition: hasCondition
        ? func(
            F.greater,
            {
              pLeft: func(F.length, {
                pValue: func(F.widgets, {pTarget: val(name)})
              }),
              pRight: val(0),
            },
          )
        : null,
  );
}
