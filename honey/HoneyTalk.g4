grammar HoneyTalk;
import HoneyTalkSynonyms;

script: (statement '.'? NEWLINE)* (statement '.'?)? NEWLINE* EOF;

statement:
    ifStat                                      # statementIf
    | maybe? actionStatement ('if' expression)? # statementAction
    | maybe? expression                         # statementExpression;

maybe: 'maybe' | 'try' 'to'? | 'optional' | 'optionally';

actionStatement:
    verify 'that'? expression # actionVerify
    | see expression          # actionSee
    | clickType 'on'? target = expression (
        withOffset offset = expression
    )?                                                                      # actionClick
    | clickType ('on'? target = expression)? withOffset offset = expression # actionClick
    | enter value = expression                                              # actionEnter
    | set variable = ID ('to' | 'as') expression                            # actionSetVariable
    | store expression ('in' | 'into') variable = ID                        # actionSetVariable
    | wait 'for'? expression                                                # actionWait
    | print expression                                                      # actionPrint
    | swipeType 'on'? target = expression (
        withOffset offset = expression
    )? ('by')? pixels = expression # actionSwipe
    | swipeType ('on'? target = expression)? () offset = expression (
        'by'
    ) pixels = expression # actionSwipe;

withOffset: 'at' | 'with'? 'offset';

ifStat:
    IF expression THEN NEWLINE* (actionStatement NEWLINE)* (
        elseIfStat
    )*? END_IF;
elseIfStat:
    ELSE (IF expression THEN)? NEWLINE* (actionStatement NEWLINE)*;

clickType:
    ('left' | 'single')? click # clickTypeSingle
    | 'double' click           # clickTypeDouble
    | 'long' click             # clickTypeLong
    | 'right' click            # clickTypeRight;

swipeType: swipe singleDirection?;

expression:
    '(' expression ')'                              # expressionExpression
    | term                                          # expressionTerm
    | 'not' expression                              # expressionNot
    | '-' expression                                # expressionNegate
    | 'there' (isAreNot | isAre) expression         # expressionExists
    | expression (isAreNot | isAre)? exists         # expressionExists
    | expression '^' expression                     # expressionPow
    | expression op = ('/' | '*') expression        # expressionBinaryOp
    | expression op = ('+' | '-') expression        # expressionBinaryOp
    | expression op = ('&&' | '&') expression       # expressionBinaryOp
    | expression op = comparisonOp expression       # expressionComparison
    | expression isAre? starts 'with'? expression   # expressionStartsWith
    | expression isAre? ends 'with'? expression     # expressionEndsWith
    | expression isAre? contains 'with'? expression # expressionContains
    | expression isAre? matches expression          # expressionMatches
    | expression (isAre | isAreNot) property        # expressionIsAttr
    | expression 'and' expression                   # expressionAnd
    | expression 'or' expression                    # expressionOr;

comparisonOp:
    ('==' | '=' | isAre? 'eq' | isAre? 'equal' 'to'? | 'equals') # comparisonOpEq
    | (
        '!='
        | '<>'
        | isAre? 'neq'
        | (isAreNot | 'not') 'equal' 'to'?
    ) # comparisonOpNeq
    | (
        '>='
        | isAre? 'gte'
        | isAre? 'greater' 'than'? 'or' 'equal' 'to'?
    )                                                # comparisonOpGte
    | ('>' | isAre? 'gt' | isAre? 'greater' 'than'?) # comparisonOpGt
    | (
        '<='
        | isAre? 'lte'
        | isAre? 'less' 'than'? 'or' 'equal' 'to'?
    )                                             # comparisonOpLte
    | ('<' | isAre? 'lt' | isAre? 'less' 'than'?) # comparisonOpLt;

term:
    '(' term ')'       # termTerm
    | literal          # termLiteral
    | '-' term         # termNegate
    | function         # termFunction
    | ordinal term     # termOrdinal
    | widgetTerm       # termWidget
    | property of term # termProperty
    | ID               # termSymbol;

property:
    ('length' | 'number' | 'count' | 'size') # builtinPropLength
    | character                              # builtinPropChars
    | word                                   # builtinPropWords
    | line                                   # builtinPropLines
    | ID                                     # otherProperty;

function:
    'format' date = term ('from' sourceFormat = term)? (
        'as'
        | 'to'
    ) targetFormat = term # functionFormat
    | 'format' date = term 'from' sourceFormat = term (
        ('as' | 'to') targetFormat = term
    )?                                                            # functionFormat
    | 'now' ('(' ')')?                                            # functionNow
    | ID '(' (functionParam ((',' | 'and') functionParam)*)? ')'  # functionCustom
    | run? ID 'with' functionParam ((',' | 'and') functionParam)* # functionCustom
    | run ID                                                      # functionCustom;

functionParam: (ID ':'?)? term;

literal:
    cardinal         # literalCardinal
    | STRING_LITERAL # literalString
    | REGEX_LITERAL  # literalRegex
    | NUMBER_LITERAL # literalNumber
    | BOOL_LITERAL   # literalBool;

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
    (attr += ID)* widgetNameModifier name += literal (
        'or' name += literal
    )* widgetType?
    | (attr += ID)* name += literal ('or' name += literal)* widgetType
    | (attr += ID)* widgetNameModifier? widgetType (
        name += literal ('or' name += literal)*
    )?;

widgetNameModifier:
    'exactly'              # widgetNameExactly
    | 'case' 'sensitive'   # widgetNameCaseSensitive
    | 'case' 'insensitive' # widgetNameCaseInsensitive;

widgetReference:
    widgetReferencePosition '(' term ')'
    | widgetReferencePosition 'screen'
    | widgetReferencePosition term;

widgetReferencePosition:
    ('in' | 'on' | 'at') singleDirection 'edge'? 'of' isParent = 'parent'?     # widgetReferenceEdge
    | ('in' | 'on' | 'at') doubleDirection 'corner'? 'of' isParent = 'parent'? #
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
    ) 'of' isParent = 'parent'?                         # widgetReferencePercentage
    | ('within' | 'inside' | 'in') isParent = 'parent'? # widgetReferenceInside
    | (
        below = 'below'
        | above = 'above'
        | 'to' (singleDirection | doubleDirection)
    ) 'of'? # widgetReferenceTo;

widgetWhere:
    ('where' | 'with' | 'whose') '(' expression ')'
    | ('where' | 'with' | 'whose') expression;

widgetTerm:
    widgetIdent widgetReference 'and'? widgetReference 'and'? widgetReference 'and'? widgetWhere?
    | widgetIdent widgetReference 'and'? widgetReference 'and'? widgetWhere?
    | widgetIdent widgetReference 'and'? widgetWhere?
    | widgetIdent widgetWhere?;

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

singleDirection:
    'left'                          # singleDirectionLeft
    | 'right'                       # singleDirectionRight
    | ('top' | 'upper' | 'up')      # singleDirectionTop
    | ('bottom' | 'lower' | 'down') # singleDirectionBottom;

doubleDirection:
    ((('top' | 'upper') '-'? 'left') | 'left' 'top')           # doubleDirectionTopLeft
    | ((('top' | 'upper') '-'? 'right') | 'right' 'top')       # doubleDirectionTopRight
    | ((('bottom' | 'lower') '-'? 'left') | 'left' 'bottom')   # doubleDirectionBottomLeft
    | ((('bottom' | 'lower') '-'? 'right') | 'right' 'bottom') # doubleDirectionBottomRight;

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

REGEX_LITERAL:
    '/' ('\\/' | ~[/\n])* '/' ('a' .. 'z' | 'A' .. 'Z')*;

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