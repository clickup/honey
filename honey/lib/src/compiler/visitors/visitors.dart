import 'package:honey/src/compiler/antlr.dart';
import 'package:honey/src/compiler/visitors/action_visitor.dart';
import 'package:honey/src/compiler/visitors/expression_visitor.dart';
import 'package:honey/src/compiler/visitors/function_visitor.dart';
import 'package:honey/src/compiler/visitors/literal_visitor.dart';
import 'package:honey/src/compiler/visitors/statement_visitor.dart';
import 'package:honey/src/compiler/visitors/widget_visitor.dart';
import 'package:honey/src/consts/direction.dart';

final clickTypeVisitor = ClickTypeVisitor();
final expressionVisitor = ExpressionVisitor();
final widgetVisitor = WidgetVisitor();
final literalVisitor = LiteralVisitor();
final functionVisitor = FunctionVisitor();
final statementVisitor = StatementVisitor();
final actionVisitor = ActionVisitor();
//final referenceVisitor = WidgetReferenceVisitor();

extension DirectionX on SingleDirectionContext {
  Direction get direction {
    if (top() != null) {
      return Direction.top;
    } else if (bottom() != null) {
      return Direction.bottom;
    } else if (left() != null) {
      return Direction.left;
    } else {
      return Direction.right;
    }
  }
}

extension DoubleDirectionX on DoubleDirectionContext {
  Direction get directionX {
    if (topLeft() != null || bottomLeft() != null) {
      return Direction.left;
    } else {
      return Direction.right;
    }
  }

  Direction get directionY {
    if (topLeft() != null || topRight() != null) {
      return Direction.top;
    } else {
      return Direction.bottom;
    }
  }
}
