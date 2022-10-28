import 'package:flutter_test/flutter_test.dart';
import 'package:honey/honey.dart';
import 'package:honey/src/consts/param_names.dart';

import '../../utils.dart';

void main() {
  group('logic functions: ', () {
    test('and', () async {
      final input = func(F.and, {pLeft: val(true), pRight: val(false)});
      await expectEval(input, val(false));
    });

    test('or', () async {
      final input = func(F.or, {pLeft: val(true), pRight: val(false)});
      await expectEval(input, val(true));
    });

    test('not', () async {
      final input = func(F.not, {pValue: val(true)});
      await expectEval(input, val(false));
    });
  });
}
