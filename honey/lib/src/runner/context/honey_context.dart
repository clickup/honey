import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:honey/src/consts/click_type.dart';
import 'package:honey/src/consts/direction.dart';
import 'package:honey/src/expression/expr.dart';
import 'package:honey/src/expression/widget_expr.dart';

/// This class presents a set of methods that can be used by Honey functions to
/// interact with the application under test. It also allows evaluating
/// expressions and accessing the values of variables.
abstract class HoneyContext {
  /// The current root semantics node of the accessibility tree.
  SemanticsNode get semanticsTree;

  /// The [TestTextInput] instance that can be used to interact text input.
  TestTextInput get testTextInput;

  /// All the outputs of this context. Resets after each step.
  String get stepOutput;

  /// Get a variable by name. If the variable does not exist, an empty value is
  /// returned.
  EvaluatedExpr getVariable(String name);

  /// Set the content of a variable.
  void setVariable(String name, EvaluatedExpr expression);

  /// Delete a variable.
  void deleteVariable(String name);

  /// Check if a variable exists.
  bool hasVariable(String name);

  /// Send a pointer event to Flutter.
  void dispatchPointerEvent(PointerEvent e);

  /// Perform the given [action] on the given [node]. If [args] is provided, it
  /// will be passed to the action.
  void dispatchSemanticAction(
    SemanticsNode node,
    SemanticsAction action, [
    Object? args,
  ]);

  /// Delay the execution of the current step by the given [duration].
  Future<void> delay(Duration duration);

  /// Click on the given [widget]. Optionally, a click [type] and [offset] can
  /// be provided.
  Future<void> click({
    WidgetExpr? widget,
    Offset? offset,
    ClickType type = ClickType.single,
  });

  /// Scroll the given [widget] in the given [direction] by the given
  /// [distance].
  Future<void> swipe({
    WidgetExpr? widget,
    Offset? offset,
    Direction direction = Direction.left,
    double distance = 0.0,
  });

  /// Add the given [line] to the step output buffer.
  void output(String line);

  /// Evaluate the given [expression] and return the result.
  Future<EvaluatedExpr> eval(Expr? expression);

  /// Clone this context. The step output buffer is not cloned.
  HoneyContext clone({WidgetExpr? referenceWidget});
}
