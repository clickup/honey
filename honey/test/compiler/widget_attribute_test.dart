import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Widget attribute', () {
    test('Widget', () {
      final result = func(F.widgets, {});

      expectExpr('widget', result);
      expectExpr('widgets', result);
    });

    test('Button', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.button.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('button', result);
      expectExpr('buttons', result);
      expectExpr('btn', result);
      expectExpr('btns', result);
    });

    test('Link', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.link.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('link', result);
      expectExpr('links', result);
      expectExpr('hyperlink', result);
      expectExpr('hyperlinks', result);
    });

    test('Textfield', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.textfield.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('text field', result);
      expectExpr('text fields', result);
      expectExpr('input field', result);
      expectExpr('input fields', result);
      expectExpr('textfield', result);
      expectExpr('textfields', result);
      expectExpr('inputfield', result);
      expectExpr('inputfields', result);
      expectExpr('edittext', result);
      expectExpr('edittexts', result);
    });

    test('Slider', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.slider.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('slider', result);
      expectExpr('sliders', result);
    });

    test('Image', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.image.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('image', result);
      expectExpr('images', result);
      expectExpr('picture', result);
      expectExpr('pictures', result);
      expectExpr('photo', result);
      expectExpr('photos', result);
    });

    test('Checkbox', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.checkbox.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('checkbox', result);
      expectExpr('checkboxes', result);
      expectExpr('check box', result);
      expectExpr('check boxes', result);
    });

    test('Switch', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.sswitch.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('switch', result);
      expectExpr('switches', result);
    });

    test('Header', () {
      final result = func(F.widgets, {
        pFilter: list([
          func(F.equal, {
            pLeft: func(F.variable, {
              pName: val(Property.header.name),
            }),
            pRight: val(true),
          }),
        ]),
      });

      expectExpr('header', result);
      expectExpr('headers', result);
    });

    test('Attributes', () {
      expectExpr(
        'clickable widget',
        func(F.widgets, {
          pFilter: list([
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.clickable.name),
              }),
              pRight: val(true),
            }),
          ]),
        }),
      );

      expectExpr(
        'focused text field',
        func(F.widgets, {
          pFilter: list([
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.textfield.name),
              }),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.focused.name),
              }),
              pRight: val(true),
            }),
          ]),
        }),
      );

      expectExpr(
        'clickable blue checked check box',
        func(F.widgets, {
          pFilter: list([
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.checkbox.name),
              }),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.clickable.name),
              }),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val('blue'),
              }),
              pRight: val(true),
            }),
            func(F.equal, {
              pLeft: func(F.variable, {
                pName: val(Property.checked.name),
              }),
              pRight: val(true),
            }),
          ]),
        }),
      );
    });
  });
}
