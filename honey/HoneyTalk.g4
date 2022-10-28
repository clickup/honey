grammar HoneyTalk;
import HoneyTalkSynonyms;

script: (statement '.'? NEWLINE)* (statement '.'?)? NEWLINE* EOF;

statement:
	ifStatement					# statementIf
	| maybe? actionStatement	# statementAction
	| maybe? expr				# statementExpr;

maybe: 'maybe' | 'try' 'to'? | 'optional' | 'optionally';

actionStatement:
	verify 'that'? expr																	# actionVerify
	| see expr																			# actionSee
	| clickType 'on'? target = expr (withOffset offset = expr)?							# actionClick
	| clickType ('on'? target = expr)? withOffset offset = expr							# actionClick
	| enter value = expr																# actionEnter
	| set variable = ID ('to' | 'as') expr												# actionSetVariable
	| store expr ('in' | 'into') variable = ID											# actionSetVariable
	| wait 'for'? expr																	# actionWait
	| print expr																		# actionPrint
	| swipeType 'on'? (target = expr)? (withOffset offset = expr)? 'by'? pixels = expr	# actionSwipe;

withOffset: 'at' | 'with'? 'offset';

ifStatement:
	IF expr THEN NEWLINE* (actionStatement NEWLINE)* (
		elseIfStatement
	)*? END_IF;

elseIfStatement:
	ELSE (IF expr THEN)? NEWLINE* (actionStatement NEWLINE)*;

clickType:
	('left' | 'single')? click	# clickTypeSingle
	| 'double' click			# clickTypeDouble
	| 'long' click				# clickTypeLong
	| 'right' click				# clickTypeRight;

swipeType: swipe singleDirection?;

expr:
	'(' expr ')'									# exprExpr
	| term											# exprTerm
	| ('not' | '!') expr							# exprNot
	| '-' expr										# exprNegate
	| 'there' (isAreNot | isAre) expr				# exprExists
	| expr (isAreNot | isAre)? exists				# exprExists
	| expr '^' expr									# exprPow
	| expr op = ('/' | '*') expr					# exprBinaryOp
	| expr op = ('+' | '-') expr					# exprBinaryOp
	| expr (eq | neq | gte | gt | lte | lt) expr	# exprComparison
	| expr isAre? starts 'with'? expr				# exprStartsWith
	| expr isAre? ends 'with'? expr					# exprEndsWith
	| expr isAre? contains 'with'? expr				# exprContains
	| expr isAre? matches expr						# exprMatches
	| expr (isAre | isAreNot) property				# exprIsAttr
	| expr ('&&' | '&' | 'and') expr				# exprAnd
	| expr ('||' | '|' | 'or') expr					# exprOr;

term:
	'(' term ')'		# termTerm
	| literal			# termLiteral
	| '-' term			# termNegate
	| function			# termFunction
	| ordinal term		# termOrdinal
	| widgetTerm		# termWidget
	| property of term	# termProperty
	| ID				# termSymbol;

property: length | character | word | line | ID;

function:
	'format' date = term ('from' sourceFormat = term)? (
		'as'
		| 'to'
	) targetFormat = term # functionFormat
	| 'format' date = term 'from' sourceFormat = term (
		('as' | 'to') targetFormat = term
	)?																# functionFormat
	| 'now' ('(' ')')?												# functionNow
	| ID '(' (functionParam ((',' | 'and') functionParam)*)? ')'	# functionCustom
	| run? ID 'with' functionParam ((',' | 'and') functionParam)*	# functionCustom
	| run ID														# functionCustom;

functionParam: (ID ':'?)? term;

literal:
	cardinal			# literalCardinal
	| ordinal			# literalOrdinal
	| STRING_LITERAL	# literalString
	| NUMBER_LITERAL	# literalNumber
	| BOOL_LITERAL		# literalBool;

cardinal:
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
	(attr += ID)* (caseSensitive | caseInsensitive | exactly) name += literal (
		'or' name += literal
	)* widgetType?
	| (attr += ID)* name += literal ('or' name += literal)* widgetType
	| (attr += ID)* (caseSensitive | caseInsensitive | exactly)? widgetType (
		name += literal ('or' name += literal)*
	)?;

widgetType:
	widget
	| button
	| link
	| textfield
	| slider
	| image
	| checkbox
	| sswitch
	| header;

widgetReference:
	widgetReferencePosition '(' term ')'
	| widgetReferencePosition 'screen'
	| widgetReferencePosition term;

widgetReferencePosition:
	inOnAt singleDirection 'edge'? 'of' container?						# widgetReferenceEdge
	| inOnAt doubleDirection 'corner'? 'of' container?					# widgetReferenceCorner
	| inOnAt singleDirection fraction 'of' container?					# widgetReferenceFraction
	| inOnAt singleDirection literal ('%' | 'percent') 'of' container?	# widgetReferencePercentage
	| ('within' | 'inside' | 'in') container?							# widgetReferenceInside
	| (
		below = 'below'
		| above = 'above'
		| 'to' (singleDirection | doubleDirection) 'side'?
	) 'of'? # widgetReferenceTo;

fraction: 'half' | 'side' | 'third' | 'quarter' | 'eighth';

container: 'container' | 'parent';

inOnAt: 'in' | 'on' | 'at';

singleDirection: left | right | top | bottom;

doubleDirection: topLeft | topRight | bottomLeft | bottomRight;

widgetTerm:
	widgetIdent widgetReference 'and'? widgetReference 'and'? widgetReference 'and'? widgetWhere?
	| widgetIdent widgetReference 'and'? widgetReference 'and'? widgetWhere?
	| widgetIdent widgetReference 'and'? widgetWhere?
	| widgetIdent widgetWhere?;

widgetWhere:
	('where' | 'with' | 'whose') '(' expr ')'
	| ('where' | 'with' | 'whose') expr;

NUMBER_LITERAL:
	DIGIT+
	| '.' DIGIT+
	| DIGIT+ '.'
	| DIGIT+ '.' DIGIT+;

IF: 'if';
ELSE: 'else';
END_IF: 'endif';
THEN: 'then';

BOOL_LITERAL: 'true' | 'false';

STRING_LITERAL: '"' ( '\\"' | ~[\\"])* '"';

IGNORE: (
		'the'
		| 'a'
		| 'an'
		| 'actually'
		| 'just'
		| 'yet'
		| 'soon'
	) -> channel(HIDDEN);

ID: ( ALPHA (ALPHA | DIGIT)*);

ALPHA: ('a' .. 'z' | 'A' .. 'Z' | '_')+;

DIGIT: ('0' .. '9')+;

COMMENT: (('#' | '//') ~('\r' | '\n')*) -> channel(HIDDEN);

MULTILINE_COMMENT: '/*' .*? '*/' -> channel(HIDDEN);

NEWLINE: ('\n' | '\r')+;

WHITESPACE: (' ' | '\t')+ -> channel(HIDDEN);

UNLEXED_CHAR: .;