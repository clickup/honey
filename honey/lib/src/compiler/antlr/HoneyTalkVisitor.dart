// Generated from HoneyTalk.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [HoneyTalkParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class HoneyTalkVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [HoneyTalkParser.script].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitScript(ScriptContext ctx);

  /// Visit a parse tree produced by the {@code statementAction}
  /// labeled alternative in {@link HoneyTalkParser#statement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStatementAction(StatementActionContext ctx);

  /// Visit a parse tree produced by the {@code statementExpression}
  /// labeled alternative in {@link HoneyTalkParser#statement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStatementExpression(StatementExpressionContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.maybe].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMaybe(MaybeContext ctx);

  /// Visit a parse tree produced by the {@code actionVerify}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionVerify(ActionVerifyContext ctx);

  /// Visit a parse tree produced by the {@code actionSee}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionSee(ActionSeeContext ctx);

  /// Visit a parse tree produced by the {@code actionClick}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionClick(ActionClickContext ctx);

  /// Visit a parse tree produced by the {@code actionEnter}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionEnter(ActionEnterContext ctx);

  /// Visit a parse tree produced by the {@code actionSetVariable}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionSetVariable(ActionSetVariableContext ctx);

  /// Visit a parse tree produced by the {@code actionWait}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionWait(ActionWaitContext ctx);

  /// Visit a parse tree produced by the {@code actionPrint}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionPrint(ActionPrintContext ctx);

  /// Visit a parse tree produced by the {@code actionSwipe}
  /// labeled alternative in {@link HoneyTalkParser#actionStatement}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitActionSwipe(ActionSwipeContext ctx);

  /// Visit a parse tree produced by the {@code clickTypeSingle}
  /// labeled alternative in {@link HoneyTalkParser#clickType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClickTypeSingle(ClickTypeSingleContext ctx);

  /// Visit a parse tree produced by the {@code clickTypeDouble}
  /// labeled alternative in {@link HoneyTalkParser#clickType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClickTypeDouble(ClickTypeDoubleContext ctx);

  /// Visit a parse tree produced by the {@code clickTypeLong}
  /// labeled alternative in {@link HoneyTalkParser#clickType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClickTypeLong(ClickTypeLongContext ctx);

  /// Visit a parse tree produced by the {@code clickTypeRight}
  /// labeled alternative in {@link HoneyTalkParser#clickType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClickTypeRight(ClickTypeRightContext ctx);

  /// Visit a parse tree produced by the {@code swipeTypeLeft}
  /// labeled alternative in {@link HoneyTalkParser#swipeType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwipeTypeLeft(SwipeTypeLeftContext ctx);

  /// Visit a parse tree produced by the {@code swipeTypeRight}
  /// labeled alternative in {@link HoneyTalkParser#swipeType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwipeTypeRight(SwipeTypeRightContext ctx);

  /// Visit a parse tree produced by the {@code swipeTypeUp}
  /// labeled alternative in {@link HoneyTalkParser#swipeType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwipeTypeUp(SwipeTypeUpContext ctx);

  /// Visit a parse tree produced by the {@code swipeTypeDown}
  /// labeled alternative in {@link HoneyTalkParser#swipeType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwipeTypeDown(SwipeTypeDownContext ctx);

  /// Visit a parse tree produced by the {@code expressionContains}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionContains(ExpressionContainsContext ctx);

  /// Visit a parse tree produced by the {@code expressionNegate}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionNegate(ExpressionNegateContext ctx);

  /// Visit a parse tree produced by the {@code expressionPow}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionPow(ExpressionPowContext ctx);

  /// Visit a parse tree produced by the {@code expressionTerm}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionTerm(ExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code expressionIsAttr}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionIsAttr(ExpressionIsAttrContext ctx);

  /// Visit a parse tree produced by the {@code expressionExists}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionExists(ExpressionExistsContext ctx);

  /// Visit a parse tree produced by the {@code expressionNot}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionNot(ExpressionNotContext ctx);

  /// Visit a parse tree produced by the {@code expressionBinaryOp}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionBinaryOp(ExpressionBinaryOpContext ctx);

  /// Visit a parse tree produced by the {@code expressionComparison}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionComparison(ExpressionComparisonContext ctx);

  /// Visit a parse tree produced by the {@code expressionExpression}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionExpression(ExpressionExpressionContext ctx);

  /// Visit a parse tree produced by the {@code expressionAnd}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionAnd(ExpressionAndContext ctx);

  /// Visit a parse tree produced by the {@code expressionEndsWith}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionEndsWith(ExpressionEndsWithContext ctx);

  /// Visit a parse tree produced by the {@code expressionOr}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionOr(ExpressionOrContext ctx);

  /// Visit a parse tree produced by the {@code expressionStartsWith}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionStartsWith(ExpressionStartsWithContext ctx);

  /// Visit a parse tree produced by the {@code expressionMatches}
  /// labeled alternative in {@link HoneyTalkParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressionMatches(ExpressionMatchesContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpEq}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpEq(ComparisonOpEqContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpNeq}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpNeq(ComparisonOpNeqContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpGte}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpGte(ComparisonOpGteContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpGt}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpGt(ComparisonOpGtContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpLte}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpLte(ComparisonOpLteContext ctx);

  /// Visit a parse tree produced by the {@code comparisonOpLt}
  /// labeled alternative in {@link HoneyTalkParser#comparisonOp}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComparisonOpLt(ComparisonOpLtContext ctx);

  /// Visit a parse tree produced by the {@code termTerm}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermTerm(TermTermContext ctx);

  /// Visit a parse tree produced by the {@code termLiteral}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermLiteral(TermLiteralContext ctx);

  /// Visit a parse tree produced by the {@code termNegate}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermNegate(TermNegateContext ctx);

  /// Visit a parse tree produced by the {@code termFunction}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermFunction(TermFunctionContext ctx);

  /// Visit a parse tree produced by the {@code termOrdinal}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermOrdinal(TermOrdinalContext ctx);

  /// Visit a parse tree produced by the {@code termWidget}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermWidget(TermWidgetContext ctx);

  /// Visit a parse tree produced by the {@code termProperty}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermProperty(TermPropertyContext ctx);

  /// Visit a parse tree produced by the {@code termSymbol}
  /// labeled alternative in {@link HoneyTalkParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTermSymbol(TermSymbolContext ctx);

  /// Visit a parse tree produced by the {@code builtinPropLength}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBuiltinPropLength(BuiltinPropLengthContext ctx);

  /// Visit a parse tree produced by the {@code builtinPropChars}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBuiltinPropChars(BuiltinPropCharsContext ctx);

  /// Visit a parse tree produced by the {@code builtinPropItems}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBuiltinPropItems(BuiltinPropItemsContext ctx);

  /// Visit a parse tree produced by the {@code builtinPropWords}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBuiltinPropWords(BuiltinPropWordsContext ctx);

  /// Visit a parse tree produced by the {@code builtinPropLines}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBuiltinPropLines(BuiltinPropLinesContext ctx);

  /// Visit a parse tree produced by the {@code otherProperty}
  /// labeled alternative in {@link HoneyTalkParser#property}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitOtherProperty(OtherPropertyContext ctx);

  /// Visit a parse tree produced by the {@code functionFormat}
  /// labeled alternative in {@link HoneyTalkParser#function}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFunctionFormat(FunctionFormatContext ctx);

  /// Visit a parse tree produced by the {@code functionNow}
  /// labeled alternative in {@link HoneyTalkParser#function}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFunctionNow(FunctionNowContext ctx);

  /// Visit a parse tree produced by the {@code functionCustom}
  /// labeled alternative in {@link HoneyTalkParser#function}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFunctionCustom(FunctionCustomContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.handler].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitHandler(HandlerContext ctx);

  /// Visit a parse tree produced by the {@code literalCardinal}
  /// labeled alternative in {@link HoneyTalkParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteralCardinal(LiteralCardinalContext ctx);

  /// Visit a parse tree produced by the {@code literalString}
  /// labeled alternative in {@link HoneyTalkParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteralString(LiteralStringContext ctx);

  /// Visit a parse tree produced by the {@code literalRegex}
  /// labeled alternative in {@link HoneyTalkParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteralRegex(LiteralRegexContext ctx);

  /// Visit a parse tree produced by the {@code literalNumber}
  /// labeled alternative in {@link HoneyTalkParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteralNumber(LiteralNumberContext ctx);

  /// Visit a parse tree produced by the {@code literalBool}
  /// labeled alternative in {@link HoneyTalkParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteralBool(LiteralBoolContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.cardinalValue].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCardinalValue(CardinalValueContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.ordinal].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitOrdinal(OrdinalContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.widgetIdent].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetIdent(WidgetIdentContext ctx);

  /// Visit a parse tree produced by the {@code widgetNameExactly}
  /// labeled alternative in {@link HoneyTalkParser#widgetNameModifier}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetNameExactly(WidgetNameExactlyContext ctx);

  /// Visit a parse tree produced by the {@code widgetNameCaseSensitive}
  /// labeled alternative in {@link HoneyTalkParser#widgetNameModifier}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetNameCaseSensitive(WidgetNameCaseSensitiveContext ctx);

  /// Visit a parse tree produced by the {@code widgetNameCaseInsensitive}
  /// labeled alternative in {@link HoneyTalkParser#widgetNameModifier}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetNameCaseInsensitive(WidgetNameCaseInsensitiveContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.widgetReference].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReference(WidgetReferenceContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceEdge}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceEdge(WidgetReferenceEdgeContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceCorner}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceCorner(WidgetReferenceCornerContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceHalf}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceHalf(WidgetReferenceHalfContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceFraction}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceFraction(WidgetReferenceFractionContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferencePercentage}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferencePercentage(WidgetReferencePercentageContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceInside}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceInside(WidgetReferenceInsideContext ctx);

  /// Visit a parse tree produced by the {@code widgetReferenceTo}
  /// labeled alternative in {@link HoneyTalkParser#widgetReferencePosition}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetReferenceTo(WidgetReferenceToContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.widgetWhere].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetWhere(WidgetWhereContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.widget].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidget(WidgetContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeWidget}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeWidget(WidgetTypeWidgetContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeButton}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeButton(WidgetTypeButtonContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeLink}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeLink(WidgetTypeLinkContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeTextField}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeTextField(WidgetTypeTextFieldContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeSlider}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeSlider(WidgetTypeSliderContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeImage}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeImage(WidgetTypeImageContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeList}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeList(WidgetTypeListContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeCheckBox}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeCheckBox(WidgetTypeCheckBoxContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeSwitch}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeSwitch(WidgetTypeSwitchContext ctx);

  /// Visit a parse tree produced by the {@code widgetTypeHeader}
  /// labeled alternative in {@link HoneyTalkParser#widgetType}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWidgetTypeHeader(WidgetTypeHeaderContext ctx);

  /// Visit a parse tree produced by the {@code singleDirectionLeft}
  /// labeled alternative in {@link HoneyTalkParser#singleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSingleDirectionLeft(SingleDirectionLeftContext ctx);

  /// Visit a parse tree produced by the {@code singleDirectionRight}
  /// labeled alternative in {@link HoneyTalkParser#singleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSingleDirectionRight(SingleDirectionRightContext ctx);

  /// Visit a parse tree produced by the {@code singleDirectionTop}
  /// labeled alternative in {@link HoneyTalkParser#singleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSingleDirectionTop(SingleDirectionTopContext ctx);

  /// Visit a parse tree produced by the {@code singleDirectionBottom}
  /// labeled alternative in {@link HoneyTalkParser#singleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSingleDirectionBottom(SingleDirectionBottomContext ctx);

  /// Visit a parse tree produced by the {@code doubleDirectionTopLeft}
  /// labeled alternative in {@link HoneyTalkParser#doubleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDoubleDirectionTopLeft(DoubleDirectionTopLeftContext ctx);

  /// Visit a parse tree produced by the {@code doubleDirectionTopRight}
  /// labeled alternative in {@link HoneyTalkParser#doubleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDoubleDirectionTopRight(DoubleDirectionTopRightContext ctx);

  /// Visit a parse tree produced by the {@code doubleDirectionBottomLeft}
  /// labeled alternative in {@link HoneyTalkParser#doubleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDoubleDirectionBottomLeft(DoubleDirectionBottomLeftContext ctx);

  /// Visit a parse tree produced by the {@code doubleDirectionBottomRight}
  /// labeled alternative in {@link HoneyTalkParser#doubleDirection}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDoubleDirectionBottomRight(DoubleDirectionBottomRightContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.character].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCharacter(CharacterContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.word].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWord(WordContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.line].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLine(LineContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.item].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitItem(ItemContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.of].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitOf(OfContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.click].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClick(ClickContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.swipe].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwipe(SwipeContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.isAre].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIsAre(IsAreContext ctx);

  /// Visit a parse tree produced by [HoneyTalkParser.isAreNot].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIsAreNot(IsAreNotContext ctx);
}