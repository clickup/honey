grammar HoneyTalk;

script: (statement '.'? NEWLINE)* (statement '.'?)? NEWLINE* EOF;

statement:
	maybe? actionStatement ('if' expression)?	# statementAction
	| maybe? expression							# statementExpression;

maybe: 'maybe' | 'try' 'to'? | 'optional' | 'optionally';

actionStatement:
	'verify' 'that'? expression			# actionVerify
	| ('see' | 'look' 'at') expression	# actionSee
	| clickType 'on'? target = expression (
		('at' | 'with'? 'offset') offset = expression
	)? # actionClick
	| clickType ('on'? target = expression)? (
		'at'
		| 'with'? 'offset'
	) offset = expression											# actionClick
	| ('enter' | 'type') value = expression							# actionEnter
	| 'set' variable = ID ('to' | 'as') expression					# actionSetVariable
	| ('put' | 'store') expression ('in' | 'into') variable = ID	# actionSetVariable
	| 'restart' ( 'app')?											# actionRestart
	| 'reset' ( 'app')?												# actionReset
	| 'wait' 'for'? expression										# actionWait
	| ('print' | 'output' | 'message') expression					# actionPrint;

clickType:
	'left'? click		# clickTypeSingle
	| 'double' click	# clickTypeDouble
	| 'long' click		# clickTypeLong
	| 'right' click		# clickTypeRight;

expression:
	'(' expression ')'								# expressionExpression
	| term											# expressionTerm
	| 'not' expression								# expressionNot
	| '-' expression								# expressionNegate
	| (THERE_IS_A | not = THERE_IS_NO) expression	# expressionExists
	| expression (isAre | isAreNot) (
		'visible'
		| 'exist'
		| 'exists'
	)											# expressionExists
	| expression '^' expression					# expressionPow
	| expression op = ('/' | '*') expression	# expressionBinaryOp
	| expression op = ('+' | '-') expression	# expressionBinaryOp
	| expression op = ('&&' | '&') expression	# expressionBinaryOp
	| expression op = comparisonOp expression	# expressionComparison
	| expression (isAre | isAreNot) property	# expressionIsAttr
	| expression 'and' expression				# expressionAnd
	| expression 'or' expression				# expressionOr;

comparisonOp:
	('=' | isAre? 'eq' | isAre? 'equal' 'to'? | 'equals') # comparisonOpEq
	| (
		'!='
		| '<>'
		| isAre? 'neq'
		| (isAreNot | 'not') 'equal' 'to'?
	) # comparisonOpNeq
	| (
		'>='
		| isAre? 'gte'
		| isAre? 'greater' 'than' 'or'? 'equal' 'to'?
	)													# comparisonOpGte
	| ('<' | isAre? 'gte' | isAre? 'greater' 'than'?)	# comparisonOpGt
	| (
		'<='
		| isAre? 'lte'
		| isAre? 'less' 'than' 'or'? 'equal' 'to'?
	)												# comparisonOpLte
	| ('>' | isAre? 'lt' | isAre? 'less' 'than'?)	# comparisonOpLt;

term:
	'(' term ')'		# termTerm
	| literal			# termLiteral
	| '-' term			# termNegate
	| function			# termFunction
	| ordinal term		# termOrdinal
	| widget			# termWidget
	| property of term	# termProperty
	| ID				# termSymbol;

property:
	('length' | 'number' | 'count')	# builtinPropLength
	| character						# builtinPropChars
	| item							# builtinPropItems
	| word							# builtinPropWords
	| line							# builtinPropLines
	| widgetType					# builtinPropWidgetType
	| ID							# otherProperty;

function:
	'format' date = term ('from' sourceFormat = term)? (
		'as'
		| 'to'
	) targetFormat = term # functionFormat
	| 'format' date = term 'from' sourceFormat = term (
		('as' | 'to') targetFormat = term
	)?									# functionFormat
	| 'now' ('(' ')')?					# functionNow
	| ID '(' (term (','? term)*?)? ')'	# functionCustom
	| ID 'with' (term (','? term)*?)	# functionCustom;

literal:
	cardinalValue		# literalCardinal
	| STRING_LITERAL	# literalString
	| NUMBER_LITERAL	# literalNumber
	| BOOL_LITERAL		# literalBool;

cardinalValue:
	'zero'
	| 'one'
	| 'two'
	| 'three'
	| 'four'
	| 'five'
	| 'six'
	| 'seven'
	| 'eight'
	| 'nine'
	| 'ten';

ordinal:
	'first'
	| 'second'
	| 'third'
	| 'fourth'
	| 'fifth'
	| 'sixth'
	| 'seventh'
	| 'eighth'
	| 'ninth'
	| 'tenth'
	| 'last';

widgetIdent:
	(attr += ID)* widgetName widgetType
	| (attr += ID)* widgetType widgetName?;

widgetName:
	widgetNameModifier? name += literal ('or' name += literal)*;

widgetNameModifier:
	'exactly'																		# widgetNameExactly
	| ('starts' | 'starting' | 'begins' | 'beginning') 'with' exactly = 'exactly'?	#
		widgetNameStartingWith
	| ('ends' | 'ending') 'with' exactly = 'exactly'?	# widgetNameEndingWith
	| ('contains' | 'containing') exactly = 'exactly'?	# widgetNameContaining
	| ('matches' | 'matching')							# widgetNameMatching;

widgetReference:
	widgetReferencePosition '(' term ')'
	| widgetReferencePosition 'screen'
	| widgetReferencePosition term;

widgetReferencePosition:
	('in' | 'on' | 'at') singleDirection 'edge'? 'of' isParent = 'parent'?		# widgetReferenceEdge
	| ('in' | 'on' | 'at') doubleDirection 'corner'? 'of' isParent = 'parent'?	#
		widgetReferenceCorner
	| ('in' | 'on' | 'at') singleDirection ('half' | 'side') 'of' isParent = 'parent'? #
		widgetReferenceHalf
	| ('in' | 'on' | 'at') ordinal singleDirection (
		f = 'third'
		| f = 'quarter'
		| f = 'eighth'
	) 'of' isParent = 'parent'? # widgetReferenceFraction
	| ('in' | 'on' | 'at') singleDirection literal (
		'%'
		| 'percent'
	) 'of' isParent = 'parent'?							# widgetReferencePercentage
	| ('within' | 'inside' | 'in') isParent = 'parent'?	# widgetReferenceInside
	| (
		below = 'below'
		| above = 'above'
		| 'to' (singleDirection | doubleDirection)
	) 'of'? # widgetReferenceTo;

widgetWhere:
	('where' | 'with' | 'whose') '(' expression ')'
	| ('where' | 'with' | 'whose') expression;

widget:
	widgetIdent widgetReference 'and'? widgetReference 'and'? widgetReference 'and'? widgetWhere?
	| widgetIdent widgetReference 'and'? widgetReference 'and'? widgetWhere?
	| widgetIdent widgetReference 'and'? widgetWhere?
	| widgetIdent widgetWhere?;

widgetType:
	('widget' | 'widgets')						# widgetTypeWidget
	| ('button' | 'buttons' | 'btn' | 'btns')	# widgetTypeButton
	| ('link' | 'links')						# widgetTypeLink
	| (
		('text' | 'input') ( 'field' | 'fields')
		| 'edit' ('text' | 'texts')
		| 'textfield'
		| 'textfields'
		| 'inputfield'
		| 'inputfields'
		| 'edittext'
		| 'edittexts'
	)															# widgetTypeTextField
	| ('slider' | 'sliders')									# widgetTypeSlider
	| ('image' | 'images')										# widgetTypeImage
	| ( 'list' | 'lists')										# widgetTypeList
	| ('check' ('box' | 'boxes') | 'checkbox' | 'checkboxes')	# widgetTypeCheckBox
	| ('switch' | 'switches')									# widgetTypeSwitch
	| ( 'header' | 'headers')									# widgetTypeHeader;

singleDirection:
	'left'					# singleDirectionLeft
	| 'right'				# singleDirectionRight
	| ('top' | 'upper')		# singleDirectionTop
	| ('bottom' | 'lower')	# singleDirectionBottom;

doubleDirection:
	((('top' | 'upper') '-'? 'left') | 'left' 'top')			# doubleDirectionTopLeft
	| ((('top' | 'upper') '-'? 'right') | 'right' 'top')		# doubleDirectionTopRight
	| ((('bottom' | 'lower') '-'? 'left') | 'left' 'bottom')	# doubleDirectionBottomLeft
	| ((('bottom' | 'lower') '-'? 'right') | 'right' 'bottom')	# doubleDirectionBottomRight;

character: 'character' | 'characters' | 'char' | 'chars';

word: 'word' | 'words';

line: 'line' | 'lines';

item: 'item' | 'items';

of: 'of' | 'from' | 'in';

click: 'click' | 'tap' | 'press' | 'push' | 'hit' | 'slam';

isAre: 'is' | 'are' | 'does';
isAreNot:
	'is' 'not'
	| 'isn\'t'
	| 'are' 'not'
	| 'aren\'t'
	| 'does' 'not'
	| 'doesn\'t';

INTEGER_LITERAL: DIGIT+;

NUMBER_LITERAL:
	INTEGER_LITERAL
	| '.' INTEGER_LITERAL
	| INTEGER_LITERAL '.'
	| INTEGER_LITERAL '.' INTEGER_LITERAL;

BOOL_LITERAL: 'true' | 'false';

STRING_LITERAL: '"' ( '\\"' | ~[\\"])* '"';

THE: 'the' -> channel(HIDDEN);

A_AN: ('a' | 'an') -> channel(HIDDEN);

ID: (ALPHA (ALPHA | DIGIT)*);

ALPHA: ('a' .. 'z' | 'A' .. 'Z' | '_')+;

DIGIT: ('0' .. '9')+;

COMMENT: (('#' | '//') ~('\r' | '\n')*) -> channel(HIDDEN);

MULTILINE_COMMENT: '/*' .*? '*/' -> channel(HIDDEN);

NEWLINE: ('\n' | '\r')+;

WHITESPACE: (' ' | '\t')+ -> channel(HIDDEN);

THERE_IS_A:
	'there' WHITESPACE 'is'
	| 'there' WHITESPACE 'is' WHITESPACE 'a'
	| 'there' WHITESPACE 'is' WHITESPACE 'an';

THERE_IS_NO:
	'there' WHITESPACE 'is' WHITESPACE 'no'
	| 'there' WHITESPACE 'is' WHITESPACE 'not'
	| 'there' WHITESPACE 'is' WHITESPACE 'not' WHITESPACE 'a'
	| 'there' WHITESPACE 'is' WHITESPACE 'not' WHITESPACE 'an';

UNLEXED_CHAR: .;