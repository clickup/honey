import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';
import 'package:honey/src/expression/statement.dart';

import '../utils.dart';

void main() {
  group('Conditional Statements', () {
    test('If Synonym', () {
      expectStatement(
        'if true \nendif',
        ConditionStatement(
          condition: val(true),
          statements: const [],
          elseStatements: const [],
          source: 'if true',
          line: 0,
        ),
      );
      expectStatement(
        'if true then\nendif',
        ConditionStatement(
          condition: val(true),
          statements: const [],
          elseStatements: const [],
          source: 'if true then',
          line: 0,
        ),
      );
      expectStatement(
        'if true do\nendif',
        ConditionStatement(
          condition: val(true),
          statements: const [],
          elseStatements: const [],
          source: 'if true do',
          line: 0,
        ),
      );
      expectStatement(
        'if true then do\nendif',
        ConditionStatement(
          condition: val(true),
          statements: const [],
          elseStatements: const [],
          source: 'if true then do',
          line: 0,
        ),
      );
      expectStatement(
        'if true \nend if',
        ConditionStatement(
          condition: val(true),
          statements: const [],
          elseStatements: const [],
          source: 'if true',
          line: 0,
        ),
      );
    });

    test('Empty if body', () {
      final result = ConditionStatement(
        condition: func(F.greater, {
          pLeft: func(F.property, {
            pName: val(Property.length.name),
            pValue: func(F.widgets, {pTarget: val('MyWidget')})
          }),
          pRight: val(0),
        }),
        statements: const [],
        elseStatements: const [],
        line: 0,
        source: 'if "MyWidget" is visible then',
      );

      expectStatement(
        '''
        if "MyWidget" is visible then
        endif
        ''',
        result,
      );
    });

    test('If body', () {
      final result = ConditionStatement(
        condition: val(true),
        statements: [
          ExpressionStatement(
            expression: func(F.output, {pValue: val('hello')}),
            optional: false,
            source: 'print "hello"',
            line: 1,
          ),
        ],
        elseStatements: const [],
        source: 'if true then',
        line: 0,
      );

      expectStatement('if true then\nprint "hello"\nendif', result);
    });

    test('Else body', () {
      final result = ConditionStatement(
        condition: val(true),
        statements: const [],
        elseStatements: [
          ExpressionStatement(
            expression: func(F.output, {pValue: val('hello')}),
            optional: false,
            source: 'print "hello"',
            line: 2,
          ),
        ],
        source: 'if true then',
        line: 0,
      );

      expectStatement(
        '''
        if true then
        else
          print "hello"
        endif
        ''',
        result,
      );
    });

    test('Else if', () {
      final result = ConditionStatement(
        condition: val(true),
        statements: [
          ExpressionStatement(
            expression: func(F.output, {pValue: val('hello')}),
            optional: false,
            source: 'print "hello"',
            line: 1,
          ),
        ],
        elseStatements: [
          ConditionStatement(
            condition: val(false),
            statements: [
              ExpressionStatement(
                expression: func(F.output, {pValue: val('abc')}),
                optional: false,
                source: 'print "abc"',
                line: 3,
              ),
            ],
            elseStatements: [
              ConditionStatement(
                condition: val(true),
                statements: [
                  ExpressionStatement(
                    expression: func(F.output, {pValue: val('world')}),
                    optional: false,
                    source: 'print "world"',
                    line: 5,
                  ),
                ],
                elseStatements: [
                  ExpressionStatement(
                    expression: func(F.output, {pValue: val('bye')}),
                    optional: false,
                    source: 'print "bye"',
                    line: 7,
                  ),
                ],
                source: 'else if true then',
                line: 4,
              ),
            ],
            source: 'else if false then',
            line: 2,
          ),
        ],
        source: 'if true then',
        line: 0,
      );

      expectStatement(
        '''
        if true then
          print "hello"
        else if false then
          print "abc"
        else if true then
          print "world"
        else
          print "bye"
        endif
        ''',
        result,
      );
    });

    test('Nested if', () {
      final result = ConditionStatement(
        condition: val(true),
        statements: [
          ConditionStatement(
            condition: val(false),
            statements: [
              ExpressionStatement(
                expression: func(F.output, {pValue: val('hello')}),
                optional: false,
                source: 'print "hello"',
                line: 2,
              ),
            ],
            elseStatements: [
              ExpressionStatement(
                expression: func(F.output, {pValue: val('world')}),
                optional: false,
                source: 'print "world"',
                line: 4,
              ),
            ],
            source: 'if false then',
            line: 1,
          ),
        ],
        elseStatements: [
          ConditionStatement(
            condition: val(false),
            statements: [
              ConditionStatement(
                condition: val(false),
                statements: [
                  ExpressionStatement(
                    expression: func(F.output, {pValue: val('HELLO')}),
                    optional: false,
                    source: 'print "HELLO"',
                    line: 8,
                  ),
                ],
                elseStatements: [
                  ExpressionStatement(
                    expression: func(F.output, {pValue: val('WORLD')}),
                    optional: false,
                    source: 'print "WORLD"',
                    line: 10,
                  ),
                ],
                source: 'if false then',
                line: 7,
              ),
            ],
            elseStatements: [
              ExpressionStatement(
                expression: func(F.output, {pValue: val('bye')}),
                optional: false,
                source: 'print "bye"',
                line: 13,
              ),
            ],
            source: 'else if false then',
            line: 6,
          ),
        ],
        source: 'if true then',
        line: 0,
      );

      expectStatement(
        '''
        if true then
          if false then
            print "hello"
          else
            print "world"
          endif
        else if false then
          if false then
            print "HELLO"
          else
            print "WORLD"
          endif
        else
          print "bye"
        endif
        ''',
        result,
      );
    });
  });
}
