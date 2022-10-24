import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../utils.dart';

void main() {
  group('Expression', () {
    test('Parantheses', () {
      final noParantheses = func(F.plus, {
        pLeft: func(F.plus, {
          pLeft: val(1),
          pRight: func(F.multiply, {
            pLeft: val(2),
            pRight: val(3),
          }),
        }),
        pRight: val(4),
      });
      expectExpr('1 + 2 * 3 + 4', noParantheses);
      expectExpr('1 + (2 * 3) + 4', noParantheses);

      expectExpr(
        '(1 + 2) * 3 + 4',
        func(F.plus, {
          pLeft: func(F.multiply, {
            pLeft: func(F.plus, {
              pLeft: val(1),
              pRight: val(2),
            }),
            pRight: val(3),
          }),
          pRight: val(4),
        }),
      );

      expectExpr(
        '1 + 2 * (3 + 4)',
        func(F.plus, {
          pLeft: val(1),
          pRight: func(F.multiply, {
            pLeft: val(2),
            pRight: func(F.plus, {
              pLeft: val(3),
              pRight: val(4),
            }),
          }),
        }),
      );
    });

    test('Not', () {
      expectExpr('!true', func(F.not, {pValue: val(true)}));
      expectExpr('not true', func(F.not, {pValue: val(true)}));
      expectExpr('!(false)', func(F.not, {pValue: val(false)}));
      expectExpr('not (false)', func(F.not, {pValue: val(false)}));
    });

    test('Negate', () {
      expectExpr('-1', func(F.multiply, {pLeft: val(1), pRight: val(-1)}));
      expectExpr('-(1)', func(F.multiply, {pLeft: val(1), pRight: val(-1)}));
    });

    test('Pow', () {
      expectExpr('2^3', func(F.pow, {pLeft: val(2), pRight: val(3)}));
      expectExpr('2 ^ 3', func(F.pow, {pLeft: val(2), pRight: val(3)}));
      expectExpr('(2) ^ 3', func(F.pow, {pLeft: val(2), pRight: val(3)}));
      expectExpr('2 ^ (3)', func(F.pow, {pLeft: val(2), pRight: val(3)}));
    });

    test('Multiply', () {
      expectExpr('2 * 3', func(F.multiply, {pLeft: val(2), pRight: val(3)}));
      expectExpr(
        '2 * 3 * 4',
        func(F.multiply, {
          pLeft: func(F.multiply, {pLeft: val(2), pRight: val(3)}),
          pRight: val(4),
        }),
      );
      expectExpr(
        '2 * 3 * 4 * 5',
        func(F.multiply, {
          pLeft: func(F.multiply, {
            pLeft: func(F.multiply, {pLeft: val(2), pRight: val(3)}),
            pRight: val(4),
          }),
          pRight: val(5),
        }),
      );
    });

    test('Divide', () {
      expectExpr('2 / 3', func(F.divide, {pLeft: val(2), pRight: val(3)}));
      expectExpr(
        '2 / 3 / 4',
        func(F.divide, {
          pLeft: func(F.divide, {pLeft: val(2), pRight: val(3)}),
          pRight: val(4),
        }),
      );
      expectExpr(
        '2 / 3 / 4 / 5',
        func(F.divide, {
          pLeft: func(F.divide, {
            pLeft: func(F.divide, {pLeft: val(2), pRight: val(3)}),
            pRight: val(4),
          }),
          pRight: val(5),
        }),
      );
    });

    test('Plus', () {
      expectExpr('2 + 3', func(F.plus, {pLeft: val(2), pRight: val(3)}));
      expectExpr(
        '2 + 3 + 4',
        func(F.plus, {
          pLeft: func(F.plus, {pLeft: val(2), pRight: val(3)}),
          pRight: val(4),
        }),
      );
      expectExpr(
        '2 + 3 + 4 + 5',
        func(F.plus, {
          pLeft: func(F.plus, {
            pLeft: func(F.plus, {pLeft: val(2), pRight: val(3)}),
            pRight: val(4),
          }),
          pRight: val(5),
        }),
      );
    });

    test('Minus', () {
      expectExpr('2 - 3', func(F.minus, {pLeft: val(2), pRight: val(3)}));
      expectExpr(
        '2 - 3 - 4',
        func(F.minus, {
          pLeft: func(F.minus, {pLeft: val(2), pRight: val(3)}),
          pRight: val(4),
        }),
      );
      expectExpr(
        '2 - 3 - 4 - 5',
        func(F.minus, {
          pLeft: func(F.minus, {
            pLeft: func(F.minus, {pLeft: val(2), pRight: val(3)}),
            pRight: val(4),
          }),
          pRight: val(5),
        }),
      );
    });

    test('And', () {
      expectExpr(
        '1 and 2',
        func(F.and, {pLeft: val(1), pRight: val(2)}),
      );
      expectExpr(
        '1 and 2 and 3',
        func(F.and, {
          pLeft: func(F.and, {pLeft: val(1), pRight: val(2)}),
          pRight: val(3),
        }),
      );

      final threeAnd = func(F.and, {
        pLeft: func(F.and, {
          pLeft: func(F.and, {pLeft: val(1), pRight: val(2)}),
          pRight: val(3),
        }),
        pRight: val(4),
      });
      expectExpr('1 and 2 and 3 and 4', threeAnd);
      expectExpr('1 & 2 & 3 & 4', threeAnd);
      expectExpr('1 && 2 && 3 && 4', threeAnd);
    });

    test('Or', () {
      expectExpr(
        '1 or 2',
        func(F.or, {pLeft: val(1), pRight: val(2)}),
      );
      expectExpr(
        '1 or 2 or 3',
        func(F.or, {
          pLeft: func(F.or, {pLeft: val(1), pRight: val(2)}),
          pRight: val(3),
        }),
      );

      final threeOr = func(F.or, {
        pLeft: func(F.or, {
          pLeft: func(F.or, {pLeft: val(1), pRight: val(2)}),
          pRight: val(3),
        }),
        pRight: val(4),
      });
      expectExpr('1 or 2 or 3 or 4', threeOr);
      expectExpr('1 | 2 | 3 | 4', threeOr);
      expectExpr('1 || 2 || 3 || 4', threeOr);
    });

    test('And Or', () {
      expectExpr(
        '1 and 2 or 3',
        func(F.or, {
          pLeft: func(F.and, {pLeft: val(1), pRight: val(2)}),
          pRight: val(3),
        }),
      );
      expectExpr(
        '1 or 2 and 3',
        func(F.or, {
          pLeft: val(1),
          pRight: func(F.and, {pLeft: val(2), pRight: val(3)}),
        }),
      );
      expectExpr(
        '1 and 2 or 3 and 4',
        func(F.or, {
          pLeft: func(F.and, {pLeft: val(1), pRight: val(2)}),
          pRight: func(F.and, {pLeft: val(3), pRight: val(4)}),
        }),
      );
      expectExpr(
        '1 or 2 and 3 or 4',
        func(F.or, {
          pLeft: func(F.or, {
            pLeft: val(1),
            pRight: func(F.and, {pLeft: val(2), pRight: val(3)}),
          }),
          pRight: val(4),
        }),
      );
      expectExpr(
        '1 and 2 or 3 and 4 or 5',
        func(F.or, {
          pLeft: func(F.or, {
            pLeft: func(F.and, {pLeft: val(1), pRight: val(2)}),
            pRight: func(F.and, {pLeft: val(3), pRight: val(4)}),
          }),
          pRight: val(5),
        }),
      );
    });
  });
}
