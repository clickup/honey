import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/name_modifier.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Widget filter', () {
    test('Single condition', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {pName: val('name')}),
            pRight: val('test'),
          }),
        ]),
      });
      expectExpr('widget with name equal to "test"', result);
      expectExpr('widget where name == "test"', result);
      expectExpr('widget whose name equals "test"', result);
    });

    test('Multiple conditions', () {
      expectExpr(
        'widget where prop1 == true and prop2 == "hello" or prop3 == 5',
        func(F.widgets, {
          pFilter: list([
            func(F.or, {
              pLeft: func(F.and, {
                pLeft: func(F.equal, {
                  pLeft: func(F.variable, {pName: val('prop1')}),
                  pRight: val(true),
                }),
                pRight: func(F.equal, {
                  pLeft: func(F.variable, {pName: val('prop2')}),
                  pRight: val('hello'),
                }),
              }),
              pRight: func(F.equal, {
                pLeft: func(F.variable, {pName: val('prop3')}),
                pRight: val(5),
              }),
            }),
          ]),
        }),
      );
    });

    test('Widget type, attributes and conditions', () {
      expectExpr(
        'the clickable focused case sensitive "name1" or "name2" text field '
        'where label contains "hello" and the length of value is > 5',
        func(F.widgets, {
          pName: list([val('name1'), val('name2')]),
          pModifier: val(NameModifier.caseSensitive.name),
          pFilter: list([
            func(F.equal, {
              pLeft: func(F.variable, {pName: val(Property.textfield.name)}),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {pName: val(Property.clickable.name)}),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {pName: val(Property.focused.name)}),
              pRight: val(true),
            }),
            func(F.and, {
              pLeft: func(F.contains, {
                pValue: func(F.variable, {pName: val(Property.label.name)}),
                pInput: val('hello'),
              }),
              pRight: func(F.greater, {
                pLeft: func(F.property, {
                  pValue: func(F.variable, {pName: val('value')}),
                  pName: val(Property.length.name),
                }),
                pRight: val(5),
              }),
            }),
          ])
        }),
      );
    });
  });
}
