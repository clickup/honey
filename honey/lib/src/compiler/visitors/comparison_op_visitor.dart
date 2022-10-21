import 'package:honey/src/compiler/antlr.dart';

class ComparisonOpVisitor extends HoneyTalkBaseVisitor<String> {
  @override
  String visitComparisonOpEq(ComparisonOpEqContext ctx) {
    return '=';
  }

  @override
  String visitComparisonOpLt(ComparisonOpLtContext ctx) {
    return '<';
  }

  @override
  String visitComparisonOpLte(ComparisonOpLteContext ctx) {
    return '<=';
  }

  @override
  String visitComparisonOpGt(ComparisonOpGtContext ctx) {
    return '>';
  }

  @override
  String visitComparisonOpGte(ComparisonOpGteContext ctx) {
    return '>=';
  }

  @override
  String visitComparisonOpNeq(ComparisonOpNeqContext ctx) {
    return '!=';
  }
}
