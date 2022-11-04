grammar HoneyTalk;
import HoneyTalkSynonyms;

script: (statement NEWLINE)* statement? NEWLINE? EOF;

statement:
    ifStatement                   # statementIf
    | maybe? actionStatement '.'? # statementAction
    | maybe? expr '.'?            # statementExpr;

ifStatement:
    iff expr then? NEWLINE (statement NEWLINE)* elseIfStatement* elseStatement? endIf;

elseIfStatement: elseIf expr then? NEWLINE ( statement NEWLINE)*;

elseStatement: elsee NEWLINE (statement NEWLINE)*;

actionStatement:
    verify 'that'? expr                                                                # actionVerify
    | see expr                                                                         # actionSee
    | clickType 'on'? target = expr (withOffset offset = expr)?                        # actionClick
    | clickType ('on'? target = expr)? withOffset offset = expr                        # actionClick
    | enter expr                                                                       # actionEnter
    | set (ID | VARIABLE) ('to' | 'as') expr                                           # actionSetVariable
    | store expr ('in' | 'into') (ID | VARIABLE)                                       # actionSetVariable
    | wait 'for'? expr                                                                 # actionWait
    | output expr                                                                      # actionPrint
    | swipeType 'on'? (target = expr)? (withOffset offset = expr)? 'by'? pixels = expr # actionSwipe
    | error expr                                                                       # actionError;

withOffset: 'at' | 'with'? 'offset';

clickType:
    ('left' | 'single')? click # clickTypeSingle
    | 'double' click           # clickTypeDouble
    | 'long' click             # clickTypeLong
    | 'right' click            # clickTypeRight;

swipeType: swipe singleDirection?;

expr:
    '(' expr ')'                                        # exprExpr
    | term                                              # exprTerm
    | not expr                                          # exprNot
    | minus expr                                        # exprNegate
    | 'there' (isAreNot | isAre) expr                   # exprExists
    | expr (isAreNot | isAre)? exists                   # exprExists
    | expr pow expr                                     # exprPow
    | expr (divide | times) expr                        # exprBinaryOp
    | expr (plus | minus) expr                          # exprBinaryOp
    | expr isAreNot? (eq | gte | gt | lte | lt) expr    # exprComparison
    | expr isAre? (eq | neq | gte | gt | lte | lt) expr # exprComparison
    | expr (isAreNot | isAre)? starts 'with'? expr      # exprStartsWith
    | expr (isAreNot | isAre)? ends 'with'? expr        # exprEndsWith
    | expr (isAreNot | isAre)? contains 'with'? expr    # exprContains
    | expr (isAreNot | isAre)? matches expr             # exprMatches
    | expr (isAre | isAreNot) property                  # exprIsAttr
    | expr and expr                                     # exprAnd
    | expr or expr                                      # exprOr;

term:
    '(' term ')'       # termTerm
    | literal          # termLiteral
    | minus term       # termNegate
    | function         # termFunction
    | ordinal term     # termOrdinal
    | widgetTerm       # termWidget
    | property of term # termProperty
    | (ID | VARIABLE)  # termSymbol;

property: length | character | word | line | ID;

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
    cardinal                         # literalCardinal
    | ordinal                        # literalOrdinal
    | STRING_LITERAL                 # literalString
    | NUMBER_LITERAL                 # literalNumber
    | (TRUE_LITERAL | FALSE_LITERAL) # literalBool;

contains:
    'contain'
    | 'contains'
    | 'containing'
    | 'include'
    | 'includes'
    | 'including';

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
    inOnAt singleDirection 'edge'? 'of' container?                     # widgetReferenceEdge
    | inOnAt doubleDirection 'corner'? 'of' container?                 # widgetReferenceCorner
    | inOnAt singleDirection fraction 'of' container?                  # widgetReferenceFraction
    | inOnAt singleDirection literal ('%' | 'percent') 'of' container? # widgetReferencePercentage
    | ('within' | 'inside' | 'in') container?                          # widgetReferenceInside
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

TRUE_LITERAL: 'true' | 'yes';

FALSE_LITERAL: 'false' | 'no';

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

VARIABLE: '$' ID;

ID: ( ALPHA (ALPHA | DIGIT)*);

ALPHA: ('a' .. 'z' | 'A' .. 'Z' | '_')+;

DIGIT: ('0' .. '9')+;

COMMENT: (('#' | '//') ~('\r' | '\n')*) -> channel(HIDDEN);

MULTILINE_COMMENT: '/*' .*? '*/' -> channel(HIDDEN);

NEWLINE: ('\n' | '\r')+;

WHITESPACE: (' ' | '\t')+ -> channel(HIDDEN);

UNLEXED_CHAR: .;