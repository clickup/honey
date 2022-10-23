import 'package:honey/src/compiler/visitors/action_visitor.dart';
import 'package:honey/src/compiler/visitors/direction_visitor.dart';
import 'package:honey/src/compiler/visitors/expression_visitor.dart';
import 'package:honey/src/compiler/visitors/function_visitor.dart';
import 'package:honey/src/compiler/visitors/literal_visitor.dart';
import 'package:honey/src/compiler/visitors/statement_visitor.dart';
import 'package:honey/src/compiler/visitors/widget_visitor.dart';

final clickTypeVisitor = ClickTypeVisitor();
final expressionVisitor = ExpressionVisitor();
final widgetVisitor = WidgetVisitor();
final literalVisitor = LiteralVisitor();
final functionVisitor = FunctionVisitor();
final statementVisitor = StatementVisitor();
final actionVisitor = ActionVisitor();
final singleDirectionVisitor = SingleDirectionVisitor();
final doubleDirectionVisitor = DoubleDirectionVisitor();
//final referenceVisitor = WidgetReferenceVisitor();
