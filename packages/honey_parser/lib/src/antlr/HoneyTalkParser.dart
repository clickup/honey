// Generated from HoneyTalk.g4 by ANTLR 4.9.3
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkVisitor.dart';
import 'HoneyTalkBaseVisitor.dart';

const int RULE_script = 0,
    RULE_statement = 1,
    RULE_actionStatement = 2,
    RULE_clickType = 3,
    RULE_expression = 4,
    RULE_comparisonOp = 5,
    RULE_term = 6,
    RULE_property = 7,
    RULE_function = 8,
    RULE_literal = 9,
    RULE_cardinalValue = 10,
    RULE_ordinal = 11,
    RULE_widgetIdent = 12,
    RULE_widgetName = 13,
    RULE_widgetNameModifier = 14,
    RULE_widgetReference = 15,
    RULE_widgetReferencePosition = 16,
    RULE_widgetWhere = 17,
    RULE_widget = 18,
    RULE_widgetType = 19,
    RULE_singleDirection = 20,
    RULE_doubleDirection = 21,
    RULE_character = 22,
    RULE_word = 23,
    RULE_line = 24,
    RULE_item = 25,
    RULE_of = 26,
    RULE_click = 27,
    RULE_isAre = 28,
    RULE_isAreNot = 29;

class HoneyTalkParser extends Parser {
  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.9.3', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();
  static const int TOKEN_T__0 = 1,
      TOKEN_T__1 = 2,
      TOKEN_T__2 = 3,
      TOKEN_T__3 = 4,
      TOKEN_T__4 = 5,
      TOKEN_T__5 = 6,
      TOKEN_T__6 = 7,
      TOKEN_T__7 = 8,
      TOKEN_T__8 = 9,
      TOKEN_T__9 = 10,
      TOKEN_T__10 = 11,
      TOKEN_T__11 = 12,
      TOKEN_T__12 = 13,
      TOKEN_T__13 = 14,
      TOKEN_T__14 = 15,
      TOKEN_T__15 = 16,
      TOKEN_T__16 = 17,
      TOKEN_T__17 = 18,
      TOKEN_T__18 = 19,
      TOKEN_T__19 = 20,
      TOKEN_T__20 = 21,
      TOKEN_T__21 = 22,
      TOKEN_T__22 = 23,
      TOKEN_T__23 = 24,
      TOKEN_T__24 = 25,
      TOKEN_T__25 = 26,
      TOKEN_T__26 = 27,
      TOKEN_T__27 = 28,
      TOKEN_T__28 = 29,
      TOKEN_T__29 = 30,
      TOKEN_T__30 = 31,
      TOKEN_T__31 = 32,
      TOKEN_T__32 = 33,
      TOKEN_T__33 = 34,
      TOKEN_T__34 = 35,
      TOKEN_T__35 = 36,
      TOKEN_T__36 = 37,
      TOKEN_T__37 = 38,
      TOKEN_T__38 = 39,
      TOKEN_T__39 = 40,
      TOKEN_T__40 = 41,
      TOKEN_T__41 = 42,
      TOKEN_T__42 = 43,
      TOKEN_T__43 = 44,
      TOKEN_T__44 = 45,
      TOKEN_T__45 = 46,
      TOKEN_T__46 = 47,
      TOKEN_T__47 = 48,
      TOKEN_T__48 = 49,
      TOKEN_T__49 = 50,
      TOKEN_T__50 = 51,
      TOKEN_T__51 = 52,
      TOKEN_T__52 = 53,
      TOKEN_T__53 = 54,
      TOKEN_T__54 = 55,
      TOKEN_T__55 = 56,
      TOKEN_T__56 = 57,
      TOKEN_T__57 = 58,
      TOKEN_T__58 = 59,
      TOKEN_T__59 = 60,
      TOKEN_T__60 = 61,
      TOKEN_T__61 = 62,
      TOKEN_T__62 = 63,
      TOKEN_T__63 = 64,
      TOKEN_T__64 = 65,
      TOKEN_T__65 = 66,
      TOKEN_T__66 = 67,
      TOKEN_T__67 = 68,
      TOKEN_T__68 = 69,
      TOKEN_T__69 = 70,
      TOKEN_T__70 = 71,
      TOKEN_T__71 = 72,
      TOKEN_T__72 = 73,
      TOKEN_T__73 = 74,
      TOKEN_T__74 = 75,
      TOKEN_T__75 = 76,
      TOKEN_T__76 = 77,
      TOKEN_T__77 = 78,
      TOKEN_T__78 = 79,
      TOKEN_T__79 = 80,
      TOKEN_T__80 = 81,
      TOKEN_T__81 = 82,
      TOKEN_T__82 = 83,
      TOKEN_T__83 = 84,
      TOKEN_T__84 = 85,
      TOKEN_T__85 = 86,
      TOKEN_T__86 = 87,
      TOKEN_T__87 = 88,
      TOKEN_T__88 = 89,
      TOKEN_T__89 = 90,
      TOKEN_T__90 = 91,
      TOKEN_T__91 = 92,
      TOKEN_T__92 = 93,
      TOKEN_T__93 = 94,
      TOKEN_T__94 = 95,
      TOKEN_T__95 = 96,
      TOKEN_T__96 = 97,
      TOKEN_T__97 = 98,
      TOKEN_T__98 = 99,
      TOKEN_T__99 = 100,
      TOKEN_T__100 = 101,
      TOKEN_T__101 = 102,
      TOKEN_T__102 = 103,
      TOKEN_T__103 = 104,
      TOKEN_T__104 = 105,
      TOKEN_T__105 = 106,
      TOKEN_T__106 = 107,
      TOKEN_T__107 = 108,
      TOKEN_T__108 = 109,
      TOKEN_T__109 = 110,
      TOKEN_T__110 = 111,
      TOKEN_T__111 = 112,
      TOKEN_T__112 = 113,
      TOKEN_T__113 = 114,
      TOKEN_T__114 = 115,
      TOKEN_T__115 = 116,
      TOKEN_T__116 = 117,
      TOKEN_T__117 = 118,
      TOKEN_T__118 = 119,
      TOKEN_T__119 = 120,
      TOKEN_T__120 = 121,
      TOKEN_T__121 = 122,
      TOKEN_T__122 = 123,
      TOKEN_T__123 = 124,
      TOKEN_T__124 = 125,
      TOKEN_T__125 = 126,
      TOKEN_T__126 = 127,
      TOKEN_T__127 = 128,
      TOKEN_T__128 = 129,
      TOKEN_T__129 = 130,
      TOKEN_T__130 = 131,
      TOKEN_T__131 = 132,
      TOKEN_T__132 = 133,
      TOKEN_T__133 = 134,
      TOKEN_T__134 = 135,
      TOKEN_T__135 = 136,
      TOKEN_T__136 = 137,
      TOKEN_T__137 = 138,
      TOKEN_T__138 = 139,
      TOKEN_T__139 = 140,
      TOKEN_T__140 = 141,
      TOKEN_T__141 = 142,
      TOKEN_T__142 = 143,
      TOKEN_T__143 = 144,
      TOKEN_T__144 = 145,
      TOKEN_T__145 = 146,
      TOKEN_T__146 = 147,
      TOKEN_T__147 = 148,
      TOKEN_T__148 = 149,
      TOKEN_T__149 = 150,
      TOKEN_T__150 = 151,
      TOKEN_T__151 = 152,
      TOKEN_T__152 = 153,
      TOKEN_T__153 = 154,
      TOKEN_T__154 = 155,
      TOKEN_T__155 = 156,
      TOKEN_T__156 = 157,
      TOKEN_T__157 = 158,
      TOKEN_T__158 = 159,
      TOKEN_T__159 = 160,
      TOKEN_T__160 = 161,
      TOKEN_T__161 = 162,
      TOKEN_T__162 = 163,
      TOKEN_T__163 = 164,
      TOKEN_T__164 = 165,
      TOKEN_T__165 = 166,
      TOKEN_T__166 = 167,
      TOKEN_T__167 = 168,
      TOKEN_T__168 = 169,
      TOKEN_T__169 = 170,
      TOKEN_T__170 = 171,
      TOKEN_T__171 = 172,
      TOKEN_T__172 = 173,
      TOKEN_T__173 = 174,
      TOKEN_T__174 = 175,
      TOKEN_T__175 = 176,
      TOKEN_T__176 = 177,
      TOKEN_T__177 = 178,
      TOKEN_T__178 = 179,
      TOKEN_BREAK = 180,
      TOKEN_INTEGER_LITERAL = 181,
      TOKEN_NUMBER_LITERAL = 182,
      TOKEN_BOOL_LITERAL = 183,
      TOKEN_STRING_LITERAL = 184,
      TOKEN_THE = 185,
      TOKEN_A_AN = 186,
      TOKEN_ID = 187,
      TOKEN_ALPHA = 188,
      TOKEN_DIGIT = 189,
      TOKEN_COMMENT = 190,
      TOKEN_NEWLINE = 191,
      TOKEN_WHITESPACE = 192,
      TOKEN_THERE_IS_A = 193,
      TOKEN_THERE_IS_NO = 194,
      TOKEN_UNLEXED_CHAR = 195;

  @override
  final List<String> ruleNames = [
    'script',
    'statement',
    'actionStatement',
    'clickType',
    'expression',
    'comparisonOp',
    'term',
    'property',
    'function',
    'literal',
    'cardinalValue',
    'ordinal',
    'widgetIdent',
    'widgetName',
    'widgetNameModifier',
    'widgetReference',
    'widgetReferencePosition',
    'widgetWhere',
    'widget',
    'widgetType',
    'singleDirection',
    'doubleDirection',
    'character',
    'word',
    'line',
    'item',
    'of',
    'click',
    'isAre',
    'isAreNot'
  ];

  static final List<String?> _LITERAL_NAMES = [
    null,
    "'.'",
    "'if'",
    "'verify'",
    "'that'",
    "'see'",
    "'look'",
    "'at'",
    "'on'",
    "'with'",
    "'offset'",
    "'enter'",
    "'type'",
    "'set'",
    "'to'",
    "'as'",
    "'put'",
    "'store'",
    "'in'",
    "'into'",
    "'restart'",
    "'app'",
    "'reset'",
    "'wait'",
    "'for'",
    "'print'",
    "'output'",
    "'message'",
    "'left'",
    "'double'",
    "'long'",
    "'right'",
    "'('",
    "')'",
    "'not'",
    "'-'",
    "'visible'",
    "'exist'",
    "'exists'",
    "'^'",
    "'/'",
    "'*'",
    "'+'",
    "'&&'",
    "'&'",
    "'and'",
    "'or'",
    "'='",
    "'eq'",
    "'equal'",
    "'equals'",
    "'!='",
    "'<>'",
    "'neq'",
    "'>='",
    "'gte'",
    "'greater'",
    "'than'",
    "'>'",
    "'lt'",
    "'less'",
    "'<='",
    "'lte'",
    "'<'",
    "'length'",
    "'number'",
    "'count'",
    "'format'",
    "'from'",
    "'now'",
    "','",
    "'zero'",
    "'one'",
    "'two'",
    "'three'",
    "'four'",
    "'five'",
    "'six'",
    "'seven'",
    "'eight'",
    "'nine'",
    "'ten'",
    "'first'",
    "'second'",
    "'third'",
    "'fourth'",
    "'fifth'",
    "'sixth'",
    "'seventh'",
    "'eighth'",
    "'ninth'",
    "'tenth'",
    "'last'",
    "'exactly'",
    "'starts'",
    "'starting'",
    "'begins'",
    "'beginning'",
    "'ends'",
    "'ending'",
    "'contains'",
    "'containing'",
    "'matches'",
    "'matching'",
    "'screen'",
    "'edge'",
    "'of'",
    "'parent'",
    "'corner'",
    "'half'",
    "'side'",
    "'quarter'",
    "'%'",
    "'percent'",
    "'within'",
    "'inside'",
    "'below'",
    "'above'",
    "'where'",
    "'whose'",
    "'widget'",
    "'widgets'",
    "'button'",
    "'buttons'",
    "'btn'",
    "'btns'",
    "'link'",
    "'links'",
    "'text'",
    "'input'",
    "'field'",
    "'fields'",
    "'edit'",
    "'texts'",
    "'textfield'",
    "'textfields'",
    "'inputfield'",
    "'inputfields'",
    "'edittext'",
    "'rdittexts'",
    "'slider'",
    "'sliders'",
    "'image'",
    "'images'",
    "'list'",
    "'lists'",
    "'check'",
    "'box'",
    "'boxes'",
    "'checkbox'",
    "'checkboxes'",
    "'switch'",
    "'switches'",
    "'header'",
    "'headers'",
    "'top'",
    "'upper'",
    "'bottom'",
    "'lower'",
    "'character'",
    "'characters'",
    "'char'",
    "'chars'",
    "'word'",
    "'words'",
    "'line'",
    "'lines'",
    "'item'",
    "'items'",
    "'click'",
    "'tap'",
    "'press'",
    "'hit'",
    "'slam'",
    "'is'",
    "'are'",
    "'does'",
    "'isn't'",
    "'aren't'",
    "'doesn't'",
    null,
    null,
    null,
    null,
    null,
    "'the'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    "BREAK",
    "INTEGER_LITERAL",
    "NUMBER_LITERAL",
    "BOOL_LITERAL",
    "STRING_LITERAL",
    "THE",
    "A_AN",
    "ID",
    "ALPHA",
    "DIGIT",
    "COMMENT",
    "NEWLINE",
    "WHITESPACE",
    "THERE_IS_A",
    "THERE_IS_NO",
    "UNLEXED_CHAR"
  ];
  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'HoneyTalk.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
    return _ATN;
  }

  HoneyTalkParser(TokenStream input) : super(input) {
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ScriptContext script() {
    dynamic _localctx = ScriptContext(context, state);
    enterRule(_localctx, 0, RULE_script);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 68;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 60;
          statement();
          state = 62;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__0) {
            state = 61;
            match(TOKEN_T__0);
          }

          state = 64;
          match(TOKEN_NEWLINE);
        }
        state = 70;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      }
      state = 75;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 3)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 3)) &
                      ((BigInt.one << (TOKEN_T__2 - 3)) |
                          (BigInt.one << (TOKEN_T__4 - 3)) |
                          (BigInt.one << (TOKEN_T__5 - 3)) |
                          (BigInt.one << (TOKEN_T__10 - 3)) |
                          (BigInt.one << (TOKEN_T__11 - 3)) |
                          (BigInt.one << (TOKEN_T__12 - 3)) |
                          (BigInt.one << (TOKEN_T__15 - 3)) |
                          (BigInt.one << (TOKEN_T__16 - 3)) |
                          (BigInt.one << (TOKEN_T__19 - 3)) |
                          (BigInt.one << (TOKEN_T__21 - 3)) |
                          (BigInt.one << (TOKEN_T__22 - 3)) |
                          (BigInt.one << (TOKEN_T__24 - 3)) |
                          (BigInt.one << (TOKEN_T__25 - 3)) |
                          (BigInt.one << (TOKEN_T__26 - 3)) |
                          (BigInt.one << (TOKEN_T__27 - 3)) |
                          (BigInt.one << (TOKEN_T__28 - 3)) |
                          (BigInt.one << (TOKEN_T__29 - 3)) |
                          (BigInt.one << (TOKEN_T__30 - 3)) |
                          (BigInt.one << (TOKEN_T__31 - 3)) |
                          (BigInt.one << (TOKEN_T__33 - 3)) |
                          (BigInt.one << (TOKEN_T__34 - 3)) |
                          (BigInt.one << (TOKEN_T__63 - 3)) |
                          (BigInt.one << (TOKEN_T__64 - 3)) |
                          (BigInt.one << (TOKEN_T__65 - 3)))) !=
                  BigInt.zero) ||
          ((((_la - 67)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 67)) &
                      ((BigInt.one << (TOKEN_T__66 - 67)) |
                          (BigInt.one << (TOKEN_T__68 - 67)) |
                          (BigInt.one << (TOKEN_T__70 - 67)) |
                          (BigInt.one << (TOKEN_T__71 - 67)) |
                          (BigInt.one << (TOKEN_T__72 - 67)) |
                          (BigInt.one << (TOKEN_T__73 - 67)) |
                          (BigInt.one << (TOKEN_T__74 - 67)) |
                          (BigInt.one << (TOKEN_T__75 - 67)) |
                          (BigInt.one << (TOKEN_T__76 - 67)) |
                          (BigInt.one << (TOKEN_T__77 - 67)) |
                          (BigInt.one << (TOKEN_T__78 - 67)) |
                          (BigInt.one << (TOKEN_T__79 - 67)) |
                          (BigInt.one << (TOKEN_T__80 - 67)) |
                          (BigInt.one << (TOKEN_T__81 - 67)) |
                          (BigInt.one << (TOKEN_T__82 - 67)) |
                          (BigInt.one << (TOKEN_T__83 - 67)) |
                          (BigInt.one << (TOKEN_T__84 - 67)) |
                          (BigInt.one << (TOKEN_T__85 - 67)) |
                          (BigInt.one << (TOKEN_T__86 - 67)) |
                          (BigInt.one << (TOKEN_T__87 - 67)) |
                          (BigInt.one << (TOKEN_T__88 - 67)) |
                          (BigInt.one << (TOKEN_T__89 - 67)) |
                          (BigInt.one << (TOKEN_T__90 - 67)) |
                          (BigInt.one << (TOKEN_T__91 - 67)) |
                          (BigInt.one << (TOKEN_T__92 - 67)) |
                          (BigInt.one << (TOKEN_T__93 - 67)) |
                          (BigInt.one << (TOKEN_T__94 - 67)) |
                          (BigInt.one << (TOKEN_T__95 - 67)) |
                          (BigInt.one << (TOKEN_T__96 - 67)) |
                          (BigInt.one << (TOKEN_T__97 - 67)) |
                          (BigInt.one << (TOKEN_T__98 - 67)) |
                          (BigInt.one << (TOKEN_T__99 - 67)) |
                          (BigInt.one << (TOKEN_T__100 - 67)) |
                          (BigInt.one << (TOKEN_T__101 - 67)) |
                          (BigInt.one << (TOKEN_T__102 - 67)) |
                          (BigInt.one << (TOKEN_T__119 - 67)) |
                          (BigInt.one << (TOKEN_T__120 - 67)) |
                          (BigInt.one << (TOKEN_T__121 - 67)) |
                          (BigInt.one << (TOKEN_T__122 - 67)) |
                          (BigInt.one << (TOKEN_T__123 - 67)) |
                          (BigInt.one << (TOKEN_T__124 - 67)) |
                          (BigInt.one << (TOKEN_T__125 - 67)) |
                          (BigInt.one << (TOKEN_T__126 - 67)) |
                          (BigInt.one << (TOKEN_T__127 - 67)) |
                          (BigInt.one << (TOKEN_T__128 - 67)))) !=
                  BigInt.zero) ||
          ((((_la - 132)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 132)) &
                      ((BigInt.one << (TOKEN_T__131 - 132)) |
                          (BigInt.one << (TOKEN_T__133 - 132)) |
                          (BigInt.one << (TOKEN_T__134 - 132)) |
                          (BigInt.one << (TOKEN_T__135 - 132)) |
                          (BigInt.one << (TOKEN_T__136 - 132)) |
                          (BigInt.one << (TOKEN_T__137 - 132)) |
                          (BigInt.one << (TOKEN_T__138 - 132)) |
                          (BigInt.one << (TOKEN_T__139 - 132)) |
                          (BigInt.one << (TOKEN_T__140 - 132)) |
                          (BigInt.one << (TOKEN_T__141 - 132)) |
                          (BigInt.one << (TOKEN_T__142 - 132)) |
                          (BigInt.one << (TOKEN_T__143 - 132)) |
                          (BigInt.one << (TOKEN_T__144 - 132)) |
                          (BigInt.one << (TOKEN_T__145 - 132)) |
                          (BigInt.one << (TOKEN_T__148 - 132)) |
                          (BigInt.one << (TOKEN_T__149 - 132)) |
                          (BigInt.one << (TOKEN_T__150 - 132)) |
                          (BigInt.one << (TOKEN_T__151 - 132)) |
                          (BigInt.one << (TOKEN_T__152 - 132)) |
                          (BigInt.one << (TOKEN_T__153 - 132)) |
                          (BigInt.one << (TOKEN_T__158 - 132)) |
                          (BigInt.one << (TOKEN_T__159 - 132)) |
                          (BigInt.one << (TOKEN_T__160 - 132)) |
                          (BigInt.one << (TOKEN_T__161 - 132)) |
                          (BigInt.one << (TOKEN_T__162 - 132)) |
                          (BigInt.one << (TOKEN_T__163 - 132)) |
                          (BigInt.one << (TOKEN_T__164 - 132)) |
                          (BigInt.one << (TOKEN_T__165 - 132)) |
                          (BigInt.one << (TOKEN_T__166 - 132)) |
                          (BigInt.one << (TOKEN_T__167 - 132)) |
                          (BigInt.one << (TOKEN_T__168 - 132)) |
                          (BigInt.one << (TOKEN_T__169 - 132)) |
                          (BigInt.one << (TOKEN_T__170 - 132)) |
                          (BigInt.one << (TOKEN_T__171 - 132)) |
                          (BigInt.one << (TOKEN_T__172 - 132)) |
                          (BigInt.one << (TOKEN_NUMBER_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_BOOL_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_STRING_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_ID - 132)) |
                          (BigInt.one << (TOKEN_THERE_IS_A - 132)) |
                          (BigInt.one << (TOKEN_THERE_IS_NO - 132)))) !=
                  BigInt.zero)) {
        state = 71;
        statement();
        state = 73;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__0) {
          state = 72;
          match(TOKEN_T__0);
        }
      }

      state = 80;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 77;
        match(TOKEN_NEWLINE);
        state = 82;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 83;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 2, RULE_statement);
    int _la;
    try {
      state = 91;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__2:
        case TOKEN_T__4:
        case TOKEN_T__5:
        case TOKEN_T__10:
        case TOKEN_T__11:
        case TOKEN_T__12:
        case TOKEN_T__15:
        case TOKEN_T__16:
        case TOKEN_T__19:
        case TOKEN_T__21:
        case TOKEN_T__22:
        case TOKEN_T__24:
        case TOKEN_T__25:
        case TOKEN_T__26:
        case TOKEN_T__27:
        case TOKEN_T__28:
        case TOKEN_T__29:
        case TOKEN_T__30:
        case TOKEN_T__168:
        case TOKEN_T__169:
        case TOKEN_T__170:
        case TOKEN_T__171:
        case TOKEN_T__172:
          _localctx = StatementActionContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 85;
          actionStatement();
          state = 88;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__1) {
            state = 86;
            match(TOKEN_T__1);
            state = 87;
            expression(0);
          }

          break;
        case TOKEN_T__31:
        case TOKEN_T__33:
        case TOKEN_T__34:
        case TOKEN_T__63:
        case TOKEN_T__64:
        case TOKEN_T__65:
        case TOKEN_T__66:
        case TOKEN_T__68:
        case TOKEN_T__70:
        case TOKEN_T__71:
        case TOKEN_T__72:
        case TOKEN_T__73:
        case TOKEN_T__74:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__77:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
        case TOKEN_T__81:
        case TOKEN_T__82:
        case TOKEN_T__83:
        case TOKEN_T__84:
        case TOKEN_T__85:
        case TOKEN_T__86:
        case TOKEN_T__87:
        case TOKEN_T__88:
        case TOKEN_T__89:
        case TOKEN_T__90:
        case TOKEN_T__91:
        case TOKEN_T__92:
        case TOKEN_T__93:
        case TOKEN_T__94:
        case TOKEN_T__95:
        case TOKEN_T__96:
        case TOKEN_T__97:
        case TOKEN_T__98:
        case TOKEN_T__99:
        case TOKEN_T__100:
        case TOKEN_T__101:
        case TOKEN_T__102:
        case TOKEN_T__119:
        case TOKEN_T__120:
        case TOKEN_T__121:
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__131:
        case TOKEN_T__133:
        case TOKEN_T__134:
        case TOKEN_T__135:
        case TOKEN_T__136:
        case TOKEN_T__137:
        case TOKEN_T__138:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__141:
        case TOKEN_T__142:
        case TOKEN_T__143:
        case TOKEN_T__144:
        case TOKEN_T__145:
        case TOKEN_T__148:
        case TOKEN_T__149:
        case TOKEN_T__150:
        case TOKEN_T__151:
        case TOKEN_T__152:
        case TOKEN_T__153:
        case TOKEN_T__158:
        case TOKEN_T__159:
        case TOKEN_T__160:
        case TOKEN_T__161:
        case TOKEN_T__162:
        case TOKEN_T__163:
        case TOKEN_T__164:
        case TOKEN_T__165:
        case TOKEN_T__166:
        case TOKEN_T__167:
        case TOKEN_NUMBER_LITERAL:
        case TOKEN_BOOL_LITERAL:
        case TOKEN_STRING_LITERAL:
        case TOKEN_ID:
        case TOKEN_THERE_IS_A:
        case TOKEN_THERE_IS_NO:
          _localctx = StatementExpressionContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 90;
          expression(0);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ActionStatementContext actionStatement() {
    dynamic _localctx = ActionStatementContext(context, state);
    enterRule(_localctx, 4, RULE_actionStatement);
    int _la;
    try {
      state = 161;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 20, context)) {
        case 1:
          _localctx = ActionVerifyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 93;
          match(TOKEN_T__2);
          state = 95;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__3) {
            state = 94;
            match(TOKEN_T__3);
          }

          state = 97;
          expression(0);
          break;
        case 2:
          _localctx = ActionSeeContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 101;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__4:
              state = 98;
              match(TOKEN_T__4);
              break;
            case TOKEN_T__5:
              state = 99;
              match(TOKEN_T__5);
              state = 100;
              match(TOKEN_T__6);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 103;
          expression(0);
          break;
        case 3:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 104;
          clickType();
          state = 106;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__7) {
            state = 105;
            match(TOKEN_T__7);
          }

          state = 108;
          _localctx.target = expression(0);
          state = 117;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__8) |
                          (BigInt.one << TOKEN_T__9))) !=
                  BigInt.zero)) {
            state = 114;
            errorHandler.sync(this);
            switch (tokenStream.LA(1)!) {
              case TOKEN_T__6:
                state = 109;
                match(TOKEN_T__6);
                break;
              case TOKEN_T__8:
              case TOKEN_T__9:
                state = 111;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__8) {
                  state = 110;
                  match(TOKEN_T__8);
                }

                state = 113;
                match(TOKEN_T__9);
                break;
              default:
                throw NoViableAltException(this);
            }
            state = 116;
            _localctx.offset = expression(0);
          }

          break;
        case 4:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 119;
          clickType();
          state = 124;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (((((_la - 8)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 8)) &
                          ((BigInt.one << (TOKEN_T__7 - 8)) |
                              (BigInt.one << (TOKEN_T__31 - 8)) |
                              (BigInt.one << (TOKEN_T__33 - 8)) |
                              (BigInt.one << (TOKEN_T__34 - 8)) |
                              (BigInt.one << (TOKEN_T__63 - 8)) |
                              (BigInt.one << (TOKEN_T__64 - 8)) |
                              (BigInt.one << (TOKEN_T__65 - 8)) |
                              (BigInt.one << (TOKEN_T__66 - 8)) |
                              (BigInt.one << (TOKEN_T__68 - 8)) |
                              (BigInt.one << (TOKEN_T__70 - 8)))) !=
                      BigInt.zero) ||
              ((((_la - 72)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 72)) &
                          ((BigInt.one << (TOKEN_T__71 - 72)) |
                              (BigInt.one << (TOKEN_T__72 - 72)) |
                              (BigInt.one << (TOKEN_T__73 - 72)) |
                              (BigInt.one << (TOKEN_T__74 - 72)) |
                              (BigInt.one << (TOKEN_T__75 - 72)) |
                              (BigInt.one << (TOKEN_T__76 - 72)) |
                              (BigInt.one << (TOKEN_T__77 - 72)) |
                              (BigInt.one << (TOKEN_T__78 - 72)) |
                              (BigInt.one << (TOKEN_T__79 - 72)) |
                              (BigInt.one << (TOKEN_T__80 - 72)) |
                              (BigInt.one << (TOKEN_T__81 - 72)) |
                              (BigInt.one << (TOKEN_T__82 - 72)) |
                              (BigInt.one << (TOKEN_T__83 - 72)) |
                              (BigInt.one << (TOKEN_T__84 - 72)) |
                              (BigInt.one << (TOKEN_T__85 - 72)) |
                              (BigInt.one << (TOKEN_T__86 - 72)) |
                              (BigInt.one << (TOKEN_T__87 - 72)) |
                              (BigInt.one << (TOKEN_T__88 - 72)) |
                              (BigInt.one << (TOKEN_T__89 - 72)) |
                              (BigInt.one << (TOKEN_T__90 - 72)) |
                              (BigInt.one << (TOKEN_T__91 - 72)) |
                              (BigInt.one << (TOKEN_T__92 - 72)) |
                              (BigInt.one << (TOKEN_T__93 - 72)) |
                              (BigInt.one << (TOKEN_T__94 - 72)) |
                              (BigInt.one << (TOKEN_T__95 - 72)) |
                              (BigInt.one << (TOKEN_T__96 - 72)) |
                              (BigInt.one << (TOKEN_T__97 - 72)) |
                              (BigInt.one << (TOKEN_T__98 - 72)) |
                              (BigInt.one << (TOKEN_T__99 - 72)) |
                              (BigInt.one << (TOKEN_T__100 - 72)) |
                              (BigInt.one << (TOKEN_T__101 - 72)) |
                              (BigInt.one << (TOKEN_T__102 - 72)) |
                              (BigInt.one << (TOKEN_T__119 - 72)) |
                              (BigInt.one << (TOKEN_T__120 - 72)) |
                              (BigInt.one << (TOKEN_T__121 - 72)) |
                              (BigInt.one << (TOKEN_T__122 - 72)) |
                              (BigInt.one << (TOKEN_T__123 - 72)) |
                              (BigInt.one << (TOKEN_T__124 - 72)) |
                              (BigInt.one << (TOKEN_T__125 - 72)) |
                              (BigInt.one << (TOKEN_T__126 - 72)) |
                              (BigInt.one << (TOKEN_T__127 - 72)) |
                              (BigInt.one << (TOKEN_T__128 - 72)) |
                              (BigInt.one << (TOKEN_T__131 - 72)) |
                              (BigInt.one << (TOKEN_T__133 - 72)) |
                              (BigInt.one << (TOKEN_T__134 - 72)))) !=
                      BigInt.zero) ||
              ((((_la - 136)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 136)) &
                          ((BigInt.one << (TOKEN_T__135 - 136)) |
                              (BigInt.one << (TOKEN_T__136 - 136)) |
                              (BigInt.one << (TOKEN_T__137 - 136)) |
                              (BigInt.one << (TOKEN_T__138 - 136)) |
                              (BigInt.one << (TOKEN_T__139 - 136)) |
                              (BigInt.one << (TOKEN_T__140 - 136)) |
                              (BigInt.one << (TOKEN_T__141 - 136)) |
                              (BigInt.one << (TOKEN_T__142 - 136)) |
                              (BigInt.one << (TOKEN_T__143 - 136)) |
                              (BigInt.one << (TOKEN_T__144 - 136)) |
                              (BigInt.one << (TOKEN_T__145 - 136)) |
                              (BigInt.one << (TOKEN_T__148 - 136)) |
                              (BigInt.one << (TOKEN_T__149 - 136)) |
                              (BigInt.one << (TOKEN_T__150 - 136)) |
                              (BigInt.one << (TOKEN_T__151 - 136)) |
                              (BigInt.one << (TOKEN_T__152 - 136)) |
                              (BigInt.one << (TOKEN_T__153 - 136)) |
                              (BigInt.one << (TOKEN_T__158 - 136)) |
                              (BigInt.one << (TOKEN_T__159 - 136)) |
                              (BigInt.one << (TOKEN_T__160 - 136)) |
                              (BigInt.one << (TOKEN_T__161 - 136)) |
                              (BigInt.one << (TOKEN_T__162 - 136)) |
                              (BigInt.one << (TOKEN_T__163 - 136)) |
                              (BigInt.one << (TOKEN_T__164 - 136)) |
                              (BigInt.one << (TOKEN_T__165 - 136)) |
                              (BigInt.one << (TOKEN_T__166 - 136)) |
                              (BigInt.one << (TOKEN_T__167 - 136)) |
                              (BigInt.one << (TOKEN_NUMBER_LITERAL - 136)) |
                              (BigInt.one << (TOKEN_BOOL_LITERAL - 136)) |
                              (BigInt.one << (TOKEN_STRING_LITERAL - 136)) |
                              (BigInt.one << (TOKEN_ID - 136)) |
                              (BigInt.one << (TOKEN_THERE_IS_A - 136)) |
                              (BigInt.one << (TOKEN_THERE_IS_NO - 136)))) !=
                      BigInt.zero)) {
            state = 121;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__7) {
              state = 120;
              match(TOKEN_T__7);
            }

            state = 123;
            _localctx.target = expression(0);
          }

          state = 131;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__6:
              state = 126;
              match(TOKEN_T__6);
              break;
            case TOKEN_T__8:
            case TOKEN_T__9:
              state = 128;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__8) {
                state = 127;
                match(TOKEN_T__8);
              }

              state = 130;
              match(TOKEN_T__9);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 133;
          _localctx.offset = expression(0);
          break;
        case 5:
          _localctx = ActionEnterContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 135;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__10 || _la == TOKEN_T__11)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 136;
          _localctx.value = expression(0);
          break;
        case 6:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 137;
          match(TOKEN_T__12);
          state = 138;
          _localctx.variable = match(TOKEN_ID);
          state = 139;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__13 || _la == TOKEN_T__14)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 140;
          expression(0);
          break;
        case 7:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 141;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__15 || _la == TOKEN_T__16)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 142;
          expression(0);
          state = 143;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__17 || _la == TOKEN_T__18)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 144;
          _localctx.variable = match(TOKEN_ID);
          break;
        case 8:
          _localctx = ActionRestartContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 146;
          match(TOKEN_T__19);
          state = 148;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__20) {
            state = 147;
            match(TOKEN_T__20);
          }

          break;
        case 9:
          _localctx = ActionResetContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 150;
          match(TOKEN_T__21);
          state = 152;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__20) {
            state = 151;
            match(TOKEN_T__20);
          }

          break;
        case 10:
          _localctx = ActionWaitContext(_localctx);
          enterOuterAlt(_localctx, 10);
          state = 154;
          match(TOKEN_T__22);
          state = 156;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__23) {
            state = 155;
            match(TOKEN_T__23);
          }

          state = 158;
          expression(0);
          break;
        case 11:
          _localctx = ActionPrintContext(_localctx);
          enterOuterAlt(_localctx, 11);
          state = 159;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__24) |
                          (BigInt.one << TOKEN_T__25) |
                          (BigInt.one << TOKEN_T__26))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 160;
          expression(0);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClickTypeContext clickType() {
    dynamic _localctx = ClickTypeContext(context, state);
    enterRule(_localctx, 6, RULE_clickType);
    int _la;
    try {
      state = 173;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__27:
        case TOKEN_T__168:
        case TOKEN_T__169:
        case TOKEN_T__170:
        case TOKEN_T__171:
        case TOKEN_T__172:
          _localctx = ClickTypeSingleContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 164;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__27) {
            state = 163;
            match(TOKEN_T__27);
          }

          state = 166;
          click();
          break;
        case TOKEN_T__28:
          _localctx = ClickTypeDoubleContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 167;
          match(TOKEN_T__28);
          state = 168;
          click();
          break;
        case TOKEN_T__29:
          _localctx = ClickTypeLongContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 169;
          match(TOKEN_T__29);
          state = 170;
          click();
          break;
        case TOKEN_T__30:
          _localctx = ClickTypeRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 171;
          match(TOKEN_T__30);
          state = 172;
          click();
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 8;
    enterRecursionRule(_localctx, 8, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 190;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 24, context)) {
        case 1:
          _localctx = ExpressionExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 176;
          match(TOKEN_T__31);
          state = 177;
          expression(0);
          state = 178;
          match(TOKEN_T__32);
          break;
        case 2:
          _localctx = ExpressionTermContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 180;
          term();
          break;
        case 3:
          _localctx = ExpressionNotContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 181;
          match(TOKEN_T__33);
          state = 182;
          expression(12);
          break;
        case 4:
          _localctx = ExpressionNegateContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 183;
          match(TOKEN_T__34);
          state = 184;
          expression(11);
          break;
        case 5:
          _localctx = ExpressionExistsContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 187;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_THERE_IS_A:
              state = 185;
              match(TOKEN_THERE_IS_A);
              break;
            case TOKEN_THERE_IS_NO:
              state = 186;
              _localctx.not = match(TOKEN_THERE_IS_NO);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 189;
          expression(10);
          break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 230;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 228;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 27, context)) {
            case 1:
              _localctx = ExpressionPowContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 192;
              if (!(precpred(context, 8))) {
                throw FailedPredicateException(this, "precpred(context, 8)");
              }
              state = 193;
              match(TOKEN_T__38);
              state = 194;
              expression(9);
              break;
            case 2:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 195;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }
              state = 196;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__39 || _la == TOKEN_T__40)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 197;
              expression(8);
              break;
            case 3:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 198;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }
              state = 199;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__34 || _la == TOKEN_T__41)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 200;
              expression(7);
              break;
            case 4:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 201;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 202;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__42 || _la == TOKEN_T__43)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 203;
              expression(6);
              break;
            case 5:
              _localctx = ExpressionComparisonContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 204;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 205;
              _localctx.op = comparisonOp();
              state = 206;
              expression(5);
              break;
            case 6:
              _localctx = ExpressionAndContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 208;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 209;
              match(TOKEN_T__44);
              state = 210;
              expression(3);
              break;
            case 7:
              _localctx = ExpressionOrContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 211;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 212;
              match(TOKEN_T__45);
              state = 213;
              expression(2);
              break;
            case 8:
              _localctx = ExpressionExistsContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 214;
              if (!(precpred(context, 9))) {
                throw FailedPredicateException(this, "precpred(context, 9)");
              }
              state = 217;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 25, context)) {
                case 1:
                  state = 215;
                  isAre();
                  break;
                case 2:
                  state = 216;
                  isAreNot();
                  break;
              }
              state = 219;
              _la = tokenStream.LA(1)!;
              if (!((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_T__35) |
                              (BigInt.one << TOKEN_T__36) |
                              (BigInt.one << TOKEN_T__37))) !=
                      BigInt.zero))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case 9:
              _localctx = ExpressionIsAttrContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 221;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 224;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 26, context)) {
                case 1:
                  state = 222;
                  isAre();
                  break;
                case 2:
                  state = 223;
                  isAreNot();
                  break;
              }
              state = 226;
              property();
              break;
          }
        }
        state = 232;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  ComparisonOpContext comparisonOp() {
    dynamic _localctx = ComparisonOpContext(context, state);
    enterRule(_localctx, 10, RULE_comparisonOp);
    int _la;
    try {
      state = 330;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 55, context)) {
        case 1:
          _localctx = ComparisonOpEqContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 246;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 32, context)) {
            case 1:
              state = 233;
              match(TOKEN_T__46);
              break;
            case 2:
              state = 235;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 234;
                isAre();
              }

              state = 237;
              match(TOKEN_T__47);
              break;
            case 3:
              state = 239;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 238;
                isAre();
              }

              state = 241;
              match(TOKEN_T__48);
              state = 243;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__13) {
                state = 242;
                match(TOKEN_T__13);
              }

              break;
            case 4:
              state = 245;
              match(TOKEN_T__49);
              break;
          }
          break;
        case 2:
          _localctx = ComparisonOpNeqContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 262;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
            case 1:
              state = 248;
              match(TOKEN_T__50);
              break;
            case 2:
              state = 249;
              match(TOKEN_T__51);
              break;
            case 3:
              state = 251;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 250;
                isAre();
              }

              state = 253;
              match(TOKEN_T__52);
              break;
            case 4:
              state = 256;
              errorHandler.sync(this);
              switch (tokenStream.LA(1)!) {
                case TOKEN_T__173:
                case TOKEN_T__174:
                case TOKEN_T__175:
                case TOKEN_T__176:
                case TOKEN_T__177:
                case TOKEN_T__178:
                  state = 254;
                  isAreNot();
                  break;
                case TOKEN_T__33:
                  state = 255;
                  match(TOKEN_T__33);
                  break;
                default:
                  throw NoViableAltException(this);
              }
              state = 258;
              match(TOKEN_T__48);
              state = 260;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__13) {
                state = 259;
                match(TOKEN_T__13);
              }

              break;
          }
          break;
        case 3:
          _localctx = ComparisonOpGteContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 281;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 41, context)) {
            case 1:
              state = 264;
              match(TOKEN_T__53);
              break;
            case 2:
              state = 266;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 265;
                isAre();
              }

              state = 268;
              match(TOKEN_T__54);
              break;
            case 3:
              state = 270;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 269;
                isAre();
              }

              state = 272;
              match(TOKEN_T__55);
              state = 273;
              match(TOKEN_T__56);
              state = 275;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__45) {
                state = 274;
                match(TOKEN_T__45);
              }

              state = 277;
              match(TOKEN_T__48);
              state = 279;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__13) {
                state = 278;
                match(TOKEN_T__13);
              }

              break;
          }
          break;
        case 4:
          _localctx = ComparisonOpGtContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 295;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 45, context)) {
            case 1:
              state = 283;
              match(TOKEN_T__57);
              break;
            case 2:
              state = 285;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 284;
                isAre();
              }

              state = 287;
              match(TOKEN_T__58);
              break;
            case 3:
              state = 289;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 288;
                isAre();
              }

              state = 291;
              match(TOKEN_T__59);
              state = 293;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__56) {
                state = 292;
                match(TOKEN_T__56);
              }

              break;
          }
          break;
        case 5:
          _localctx = ComparisonOpLteContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 314;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 50, context)) {
            case 1:
              state = 297;
              match(TOKEN_T__60);
              break;
            case 2:
              state = 299;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 298;
                isAre();
              }

              state = 301;
              match(TOKEN_T__61);
              break;
            case 3:
              state = 303;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 302;
                isAre();
              }

              state = 305;
              match(TOKEN_T__59);
              state = 306;
              match(TOKEN_T__56);
              state = 308;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__45) {
                state = 307;
                match(TOKEN_T__45);
              }

              state = 310;
              match(TOKEN_T__48);
              state = 312;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__13) {
                state = 311;
                match(TOKEN_T__13);
              }

              break;
          }
          break;
        case 6:
          _localctx = ComparisonOpLtContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 328;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 54, context)) {
            case 1:
              state = 316;
              match(TOKEN_T__62);
              break;
            case 2:
              state = 318;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 317;
                isAre();
              }

              state = 320;
              match(TOKEN_T__54);
              break;
            case 3:
              state = 322;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 174)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 174)) &
                          ((BigInt.one << (TOKEN_T__173 - 174)) |
                              (BigInt.one << (TOKEN_T__174 - 174)) |
                              (BigInt.one << (TOKEN_T__175 - 174)))) !=
                      BigInt.zero)) {
                state = 321;
                isAre();
              }

              state = 324;
              match(TOKEN_T__55);
              state = 326;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__56) {
                state = 325;
                match(TOKEN_T__56);
              }

              break;
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TermContext term() {
    dynamic _localctx = TermContext(context, state);
    enterRule(_localctx, 12, RULE_term);
    try {
      state = 349;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 56, context)) {
        case 1:
          _localctx = TermTermContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 332;
          match(TOKEN_T__31);
          state = 333;
          term();
          state = 334;
          match(TOKEN_T__32);
          break;
        case 2:
          _localctx = TermLiteralContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 336;
          literal();
          break;
        case 3:
          _localctx = TermNegateContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 337;
          match(TOKEN_T__34);
          state = 338;
          term();
          break;
        case 4:
          _localctx = TermFunctionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 339;
          function();
          break;
        case 5:
          _localctx = TermOrdinalContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 340;
          ordinal();
          state = 341;
          term();
          break;
        case 6:
          _localctx = TermWidgetContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 343;
          widget();
          break;
        case 7:
          _localctx = TermPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 344;
          property();
          state = 345;
          of();
          state = 346;
          term();
          break;
        case 8:
          _localctx = TermSymbolContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 348;
          match(TOKEN_ID);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyContext property() {
    dynamic _localctx = PropertyContext(context, state);
    enterRule(_localctx, 14, RULE_property);
    int _la;
    try {
      state = 358;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__63:
        case TOKEN_T__64:
        case TOKEN_T__65:
          _localctx = BuiltinPropLengthContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 351;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_T__63 - 64)) |
                          (BigInt.one << (TOKEN_T__64 - 64)) |
                          (BigInt.one << (TOKEN_T__65 - 64)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__158:
        case TOKEN_T__159:
        case TOKEN_T__160:
        case TOKEN_T__161:
          _localctx = BuiltinPropCharsContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 352;
          character();
          break;
        case TOKEN_T__166:
        case TOKEN_T__167:
          _localctx = BuiltinPropItemsContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 353;
          item();
          break;
        case TOKEN_T__162:
        case TOKEN_T__163:
          _localctx = BuiltinPropWordsContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 354;
          word();
          break;
        case TOKEN_T__164:
        case TOKEN_T__165:
          _localctx = BuiltinPropLinesContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 355;
          line();
          break;
        case TOKEN_T__119:
        case TOKEN_T__120:
        case TOKEN_T__121:
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__131:
        case TOKEN_T__133:
        case TOKEN_T__134:
        case TOKEN_T__135:
        case TOKEN_T__136:
        case TOKEN_T__137:
        case TOKEN_T__138:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__141:
        case TOKEN_T__142:
        case TOKEN_T__143:
        case TOKEN_T__144:
        case TOKEN_T__145:
        case TOKEN_T__148:
        case TOKEN_T__149:
        case TOKEN_T__150:
        case TOKEN_T__151:
        case TOKEN_T__152:
        case TOKEN_T__153:
          _localctx = BuiltinPropWidgetTypeContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 356;
          widgetType();
          break;
        case TOKEN_ID:
          _localctx = OtherPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 357;
          match(TOKEN_ID);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionContext function() {
    dynamic _localctx = FunctionContext(context, state);
    enterRule(_localctx, 16, RULE_function);
    int _la;
    try {
      int _alt;
      state = 409;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 360;
          match(TOKEN_T__66);
          state = 361;
          _localctx.date = term();
          state = 364;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__67) {
            state = 362;
            match(TOKEN_T__67);
            state = 363;
            _localctx.sourceFormat = term();
          }

          state = 366;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__13 || _la == TOKEN_T__14)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 367;
          _localctx.targetFormat = term();
          break;
        case 2:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 369;
          match(TOKEN_T__66);
          state = 370;
          _localctx.date = term();
          state = 371;
          match(TOKEN_T__67);
          state = 372;
          _localctx.sourceFormat = term();
          state = 375;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 59, context)) {
            case 1:
              state = 373;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__13 || _la == TOKEN_T__14)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 374;
              _localctx.targetFormat = term();
              break;
          }
          break;
        case 3:
          _localctx = FunctionNowContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 377;
          match(TOKEN_T__68);
          state = 380;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 60, context)) {
            case 1:
              state = 378;
              match(TOKEN_T__31);
              state = 379;
              match(TOKEN_T__32);
              break;
          }
          break;
        case 4:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 382;
          match(TOKEN_ID);
          state = 383;
          match(TOKEN_T__31);
          state = 394;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__31 ||
              _la == TOKEN_T__34 ||
              ((((_la - 64)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 64)) &
                          ((BigInt.one << (TOKEN_T__63 - 64)) |
                              (BigInt.one << (TOKEN_T__64 - 64)) |
                              (BigInt.one << (TOKEN_T__65 - 64)) |
                              (BigInt.one << (TOKEN_T__66 - 64)) |
                              (BigInt.one << (TOKEN_T__68 - 64)) |
                              (BigInt.one << (TOKEN_T__70 - 64)) |
                              (BigInt.one << (TOKEN_T__71 - 64)) |
                              (BigInt.one << (TOKEN_T__72 - 64)) |
                              (BigInt.one << (TOKEN_T__73 - 64)) |
                              (BigInt.one << (TOKEN_T__74 - 64)) |
                              (BigInt.one << (TOKEN_T__75 - 64)) |
                              (BigInt.one << (TOKEN_T__76 - 64)) |
                              (BigInt.one << (TOKEN_T__77 - 64)) |
                              (BigInt.one << (TOKEN_T__78 - 64)) |
                              (BigInt.one << (TOKEN_T__79 - 64)) |
                              (BigInt.one << (TOKEN_T__80 - 64)) |
                              (BigInt.one << (TOKEN_T__81 - 64)) |
                              (BigInt.one << (TOKEN_T__82 - 64)) |
                              (BigInt.one << (TOKEN_T__83 - 64)) |
                              (BigInt.one << (TOKEN_T__84 - 64)) |
                              (BigInt.one << (TOKEN_T__85 - 64)) |
                              (BigInt.one << (TOKEN_T__86 - 64)) |
                              (BigInt.one << (TOKEN_T__87 - 64)) |
                              (BigInt.one << (TOKEN_T__88 - 64)) |
                              (BigInt.one << (TOKEN_T__89 - 64)) |
                              (BigInt.one << (TOKEN_T__90 - 64)) |
                              (BigInt.one << (TOKEN_T__91 - 64)) |
                              (BigInt.one << (TOKEN_T__92 - 64)) |
                              (BigInt.one << (TOKEN_T__93 - 64)) |
                              (BigInt.one << (TOKEN_T__94 - 64)) |
                              (BigInt.one << (TOKEN_T__95 - 64)) |
                              (BigInt.one << (TOKEN_T__96 - 64)) |
                              (BigInt.one << (TOKEN_T__97 - 64)) |
                              (BigInt.one << (TOKEN_T__98 - 64)) |
                              (BigInt.one << (TOKEN_T__99 - 64)) |
                              (BigInt.one << (TOKEN_T__100 - 64)) |
                              (BigInt.one << (TOKEN_T__101 - 64)) |
                              (BigInt.one << (TOKEN_T__102 - 64)) |
                              (BigInt.one << (TOKEN_T__119 - 64)) |
                              (BigInt.one << (TOKEN_T__120 - 64)) |
                              (BigInt.one << (TOKEN_T__121 - 64)) |
                              (BigInt.one << (TOKEN_T__122 - 64)) |
                              (BigInt.one << (TOKEN_T__123 - 64)) |
                              (BigInt.one << (TOKEN_T__124 - 64)) |
                              (BigInt.one << (TOKEN_T__125 - 64)) |
                              (BigInt.one << (TOKEN_T__126 - 64)))) !=
                      BigInt.zero) ||
              ((((_la - 128)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 128)) &
                          ((BigInt.one << (TOKEN_T__127 - 128)) |
                              (BigInt.one << (TOKEN_T__128 - 128)) |
                              (BigInt.one << (TOKEN_T__131 - 128)) |
                              (BigInt.one << (TOKEN_T__133 - 128)) |
                              (BigInt.one << (TOKEN_T__134 - 128)) |
                              (BigInt.one << (TOKEN_T__135 - 128)) |
                              (BigInt.one << (TOKEN_T__136 - 128)) |
                              (BigInt.one << (TOKEN_T__137 - 128)) |
                              (BigInt.one << (TOKEN_T__138 - 128)) |
                              (BigInt.one << (TOKEN_T__139 - 128)) |
                              (BigInt.one << (TOKEN_T__140 - 128)) |
                              (BigInt.one << (TOKEN_T__141 - 128)) |
                              (BigInt.one << (TOKEN_T__142 - 128)) |
                              (BigInt.one << (TOKEN_T__143 - 128)) |
                              (BigInt.one << (TOKEN_T__144 - 128)) |
                              (BigInt.one << (TOKEN_T__145 - 128)) |
                              (BigInt.one << (TOKEN_T__148 - 128)) |
                              (BigInt.one << (TOKEN_T__149 - 128)) |
                              (BigInt.one << (TOKEN_T__150 - 128)) |
                              (BigInt.one << (TOKEN_T__151 - 128)) |
                              (BigInt.one << (TOKEN_T__152 - 128)) |
                              (BigInt.one << (TOKEN_T__153 - 128)) |
                              (BigInt.one << (TOKEN_T__158 - 128)) |
                              (BigInt.one << (TOKEN_T__159 - 128)) |
                              (BigInt.one << (TOKEN_T__160 - 128)) |
                              (BigInt.one << (TOKEN_T__161 - 128)) |
                              (BigInt.one << (TOKEN_T__162 - 128)) |
                              (BigInt.one << (TOKEN_T__163 - 128)) |
                              (BigInt.one << (TOKEN_T__164 - 128)) |
                              (BigInt.one << (TOKEN_T__165 - 128)) |
                              (BigInt.one << (TOKEN_T__166 - 128)) |
                              (BigInt.one << (TOKEN_T__167 - 128)) |
                              (BigInt.one << (TOKEN_NUMBER_LITERAL - 128)) |
                              (BigInt.one << (TOKEN_BOOL_LITERAL - 128)) |
                              (BigInt.one << (TOKEN_STRING_LITERAL - 128)) |
                              (BigInt.one << (TOKEN_ID - 128)))) !=
                      BigInt.zero)) {
            state = 384;
            term();
            state = 391;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 62, context);
            while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
              if (_alt == 1 + 1) {
                state = 386;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__69) {
                  state = 385;
                  match(TOKEN_T__69);
                }

                state = 388;
                term();
              }
              state = 393;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 62, context);
            }
          }

          state = 396;
          match(TOKEN_T__32);
          break;
        case 5:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 397;
          match(TOKEN_ID);
          state = 398;
          match(TOKEN_T__8);

          state = 399;
          term();
          state = 406;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 65, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 401;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__69) {
                state = 400;
                match(TOKEN_T__69);
              }

              state = 403;
              term();
            }
            state = 408;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 65, context);
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 18, RULE_literal);
    try {
      state = 415;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__70:
        case TOKEN_T__71:
        case TOKEN_T__72:
        case TOKEN_T__73:
        case TOKEN_T__74:
        case TOKEN_T__75:
        case TOKEN_T__76:
        case TOKEN_T__77:
        case TOKEN_T__78:
        case TOKEN_T__79:
        case TOKEN_T__80:
          _localctx = LiteralCardinalContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 411;
          cardinalValue();
          break;
        case TOKEN_STRING_LITERAL:
          _localctx = LiteralStringContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 412;
          match(TOKEN_STRING_LITERAL);
          break;
        case TOKEN_NUMBER_LITERAL:
          _localctx = LiteralNumberContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 413;
          match(TOKEN_NUMBER_LITERAL);
          break;
        case TOKEN_BOOL_LITERAL:
          _localctx = LiteralBoolContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 414;
          match(TOKEN_BOOL_LITERAL);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CardinalValueContext cardinalValue() {
    dynamic _localctx = CardinalValueContext(context, state);
    enterRule(_localctx, 20, RULE_cardinalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 417;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 71)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 71)) &
                  ((BigInt.one << (TOKEN_T__70 - 71)) |
                      (BigInt.one << (TOKEN_T__71 - 71)) |
                      (BigInt.one << (TOKEN_T__72 - 71)) |
                      (BigInt.one << (TOKEN_T__73 - 71)) |
                      (BigInt.one << (TOKEN_T__74 - 71)) |
                      (BigInt.one << (TOKEN_T__75 - 71)) |
                      (BigInt.one << (TOKEN_T__76 - 71)) |
                      (BigInt.one << (TOKEN_T__77 - 71)) |
                      (BigInt.one << (TOKEN_T__78 - 71)) |
                      (BigInt.one << (TOKEN_T__79 - 71)) |
                      (BigInt.one << (TOKEN_T__80 - 71)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OrdinalContext ordinal() {
    dynamic _localctx = OrdinalContext(context, state);
    enterRule(_localctx, 22, RULE_ordinal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 419;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 82)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 82)) &
                  ((BigInt.one << (TOKEN_T__81 - 82)) |
                      (BigInt.one << (TOKEN_T__82 - 82)) |
                      (BigInt.one << (TOKEN_T__83 - 82)) |
                      (BigInt.one << (TOKEN_T__84 - 82)) |
                      (BigInt.one << (TOKEN_T__85 - 82)) |
                      (BigInt.one << (TOKEN_T__86 - 82)) |
                      (BigInt.one << (TOKEN_T__87 - 82)) |
                      (BigInt.one << (TOKEN_T__88 - 82)) |
                      (BigInt.one << (TOKEN_T__89 - 82)) |
                      (BigInt.one << (TOKEN_T__90 - 82)) |
                      (BigInt.one << (TOKEN_T__91 - 82)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetIdentContext widgetIdent() {
    dynamic _localctx = WidgetIdentContext(context, state);
    enterRule(_localctx, 24, RULE_widgetIdent);
    int _la;
    try {
      state = 440;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 71, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 424;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 421;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 426;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 427;
          widgetName();
          state = 428;
          widgetType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 433;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 430;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 435;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 436;
          widgetType();
          state = 438;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 70, context)) {
            case 1:
              state = 437;
              widgetName();
              break;
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetNameContext widgetName() {
    dynamic _localctx = WidgetNameContext(context, state);
    enterRule(_localctx, 26, RULE_widgetName);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 443;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 93)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 93)) &
                  ((BigInt.one << (TOKEN_T__92 - 93)) |
                      (BigInt.one << (TOKEN_T__93 - 93)) |
                      (BigInt.one << (TOKEN_T__94 - 93)) |
                      (BigInt.one << (TOKEN_T__95 - 93)) |
                      (BigInt.one << (TOKEN_T__96 - 93)) |
                      (BigInt.one << (TOKEN_T__97 - 93)) |
                      (BigInt.one << (TOKEN_T__98 - 93)) |
                      (BigInt.one << (TOKEN_T__99 - 93)) |
                      (BigInt.one << (TOKEN_T__100 - 93)) |
                      (BigInt.one << (TOKEN_T__101 - 93)) |
                      (BigInt.one << (TOKEN_T__102 - 93)))) !=
              BigInt.zero)) {
        state = 442;
        widgetNameModifier();
      }

      state = 445;
      _localctx._literal = literal();
      _localctx.name.add(_localctx._literal);
      state = 450;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 73, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 446;
          match(TOKEN_T__45);
          state = 447;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
        }
        state = 452;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 73, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetNameModifierContext widgetNameModifier() {
    dynamic _localctx = WidgetNameModifierContext(context, state);
    enterRule(_localctx, 28, RULE_widgetNameModifier);
    int _la;
    try {
      state = 469;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__92:
          _localctx = WidgetNameExactlyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 453;
          match(TOKEN_T__92);
          break;
        case TOKEN_T__93:
        case TOKEN_T__94:
        case TOKEN_T__95:
        case TOKEN_T__96:
          _localctx = WidgetNameStartingWithContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 454;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 94)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 94)) &
                      ((BigInt.one << (TOKEN_T__93 - 94)) |
                          (BigInt.one << (TOKEN_T__94 - 94)) |
                          (BigInt.one << (TOKEN_T__95 - 94)) |
                          (BigInt.one << (TOKEN_T__96 - 94)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 455;
          match(TOKEN_T__8);
          state = 457;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__92) {
            state = 456;
            _localctx.exactly = match(TOKEN_T__92);
          }

          break;
        case TOKEN_T__97:
        case TOKEN_T__98:
          _localctx = WidgetNameEndingWithContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 459;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__97 || _la == TOKEN_T__98)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 460;
          match(TOKEN_T__8);
          state = 462;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__92) {
            state = 461;
            _localctx.exactly = match(TOKEN_T__92);
          }

          break;
        case TOKEN_T__99:
        case TOKEN_T__100:
          _localctx = WidgetNameContainingContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 464;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__99 || _la == TOKEN_T__100)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 466;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__92) {
            state = 465;
            _localctx.exactly = match(TOKEN_T__92);
          }

          break;
        case TOKEN_T__101:
        case TOKEN_T__102:
          _localctx = WidgetNameMatchingContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 468;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__101 || _la == TOKEN_T__102)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetReferenceContext widgetReference() {
    dynamic _localctx = WidgetReferenceContext(context, state);
    enterRule(_localctx, 30, RULE_widgetReference);
    try {
      state = 482;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 78, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 471;
          widgetReferencePosition();
          state = 472;
          match(TOKEN_T__31);
          state = 473;
          term();
          state = 474;
          match(TOKEN_T__32);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 476;
          widgetReferencePosition();
          state = 477;
          match(TOKEN_T__103);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 479;
          widgetReferencePosition();
          state = 480;
          term();
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetReferencePositionContext widgetReferencePosition() {
    dynamic _localctx = WidgetReferencePositionContext(context, state);
    enterRule(_localctx, 32, RULE_widgetReferencePosition);
    int _la;
    try {
      state = 545;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 91, context)) {
        case 1:
          _localctx = WidgetReferenceEdgeContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 484;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 485;
          singleDirection();
          state = 487;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__104) {
            state = 486;
            match(TOKEN_T__104);
          }

          state = 489;
          match(TOKEN_T__105);
          state = 491;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 490;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 2:
          _localctx = WidgetReferenceCornerContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 493;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 494;
          doubleDirection();
          state = 496;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 495;
            match(TOKEN_T__107);
          }

          state = 498;
          match(TOKEN_T__105);
          state = 500;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 499;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 3:
          _localctx = WidgetReferenceHalfContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 502;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 503;
          singleDirection();
          state = 504;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__108 || _la == TOKEN_T__109)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 505;
          match(TOKEN_T__105);
          state = 507;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 506;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 4:
          _localctx = WidgetReferenceFractionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 509;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 510;
          ordinal();
          state = 511;
          singleDirection();
          state = 515;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__83:
              state = 512;
              _localctx.f = match(TOKEN_T__83);
              break;
            case TOKEN_T__110:
              state = 513;
              _localctx.f = match(TOKEN_T__110);
              break;
            case TOKEN_T__88:
              state = 514;
              _localctx.f = match(TOKEN_T__88);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 517;
          match(TOKEN_T__105);
          state = 519;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 518;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 5:
          _localctx = WidgetReferencePercentageContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 521;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 522;
          singleDirection();
          state = 523;
          literal();
          state = 524;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__111 || _la == TOKEN_T__112)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 525;
          match(TOKEN_T__105);
          state = 527;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 526;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 6:
          _localctx = WidgetReferenceInsideContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 529;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__17 ||
              _la == TOKEN_T__113 ||
              _la == TOKEN_T__114)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 531;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 530;
            _localctx.isParent = match(TOKEN_T__106);
          }

          break;
        case 7:
          _localctx = WidgetReferenceToContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 540;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__115:
              state = 533;
              _localctx.below = match(TOKEN_T__115);
              break;
            case TOKEN_T__116:
              state = 534;
              _localctx.above = match(TOKEN_T__116);
              break;
            case TOKEN_T__13:
              state = 535;
              match(TOKEN_T__13);
              state = 538;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 88, context)) {
                case 1:
                  state = 536;
                  singleDirection();
                  break;
                case 2:
                  state = 537;
                  doubleDirection();
                  break;
              }
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 543;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__105) {
            state = 542;
            match(TOKEN_T__105);
          }

          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetWhereContext widgetWhere() {
    dynamic _localctx = WidgetWhereContext(context, state);
    enterRule(_localctx, 34, RULE_widgetWhere);
    int _la;
    try {
      state = 554;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 547;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__8 ||
              _la == TOKEN_T__117 ||
              _la == TOKEN_T__118)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 548;
          match(TOKEN_T__31);
          state = 549;
          expression(0);
          state = 550;
          match(TOKEN_T__32);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 552;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__8 ||
              _la == TOKEN_T__117 ||
              _la == TOKEN_T__118)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 553;
          expression(0);
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetContext widget() {
    dynamic _localctx = WidgetContext(context, state);
    enterRule(_localctx, 36, RULE_widget);
    int _la;
    try {
      state = 596;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 103, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 556;
          widgetIdent();
          state = 557;
          widgetReference();
          state = 559;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 558;
            match(TOKEN_T__44);
          }

          state = 561;
          widgetReference();
          state = 563;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 562;
            match(TOKEN_T__44);
          }

          state = 565;
          widgetReference();
          state = 567;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
            case 1:
              state = 566;
              match(TOKEN_T__44);
              break;
          }
          state = 570;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
            case 1:
              state = 569;
              widgetWhere();
              break;
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 572;
          widgetIdent();
          state = 573;
          widgetReference();
          state = 575;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 574;
            match(TOKEN_T__44);
          }

          state = 577;
          widgetReference();
          state = 579;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 98, context)) {
            case 1:
              state = 578;
              match(TOKEN_T__44);
              break;
          }
          state = 582;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 99, context)) {
            case 1:
              state = 581;
              widgetWhere();
              break;
          }
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 584;
          widgetIdent();
          state = 585;
          widgetReference();
          state = 587;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
            case 1:
              state = 586;
              match(TOKEN_T__44);
              break;
          }
          state = 590;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 101, context)) {
            case 1:
              state = 589;
              widgetWhere();
              break;
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 592;
          widgetIdent();
          state = 594;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
            case 1:
              state = 593;
              widgetWhere();
              break;
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WidgetTypeContext widgetType() {
    dynamic _localctx = WidgetTypeContext(context, state);
    enterRule(_localctx, 38, RULE_widgetType);
    int _la;
    try {
      state = 624;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__119:
        case TOKEN_T__120:
          _localctx = WidgetTypeWidgetContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 598;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__119 || _la == TOKEN_T__120)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__121:
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
          _localctx = WidgetTypeButtonContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 599;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 122)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 122)) &
                      ((BigInt.one << (TOKEN_T__121 - 122)) |
                          (BigInt.one << (TOKEN_T__122 - 122)) |
                          (BigInt.one << (TOKEN_T__123 - 122)) |
                          (BigInt.one << (TOKEN_T__124 - 122)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__125:
        case TOKEN_T__126:
          _localctx = WidgetTypeLinkContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 600;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__125 || _la == TOKEN_T__126)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__131:
        case TOKEN_T__133:
        case TOKEN_T__134:
        case TOKEN_T__135:
        case TOKEN_T__136:
        case TOKEN_T__137:
        case TOKEN_T__138:
          _localctx = WidgetTypeTextFieldContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 611;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__127:
            case TOKEN_T__128:
              state = 601;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__127 || _la == TOKEN_T__128)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 602;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__129 || _la == TOKEN_T__130)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__131:
              state = 603;
              match(TOKEN_T__131);
              state = 604;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__127 || _la == TOKEN_T__132)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__133:
              state = 605;
              match(TOKEN_T__133);
              break;
            case TOKEN_T__134:
              state = 606;
              match(TOKEN_T__134);
              break;
            case TOKEN_T__135:
              state = 607;
              match(TOKEN_T__135);
              break;
            case TOKEN_T__136:
              state = 608;
              match(TOKEN_T__136);
              break;
            case TOKEN_T__137:
              state = 609;
              match(TOKEN_T__137);
              break;
            case TOKEN_T__138:
              state = 610;
              match(TOKEN_T__138);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case TOKEN_T__139:
        case TOKEN_T__140:
          _localctx = WidgetTypeSliderContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 613;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__139 || _la == TOKEN_T__140)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__141:
        case TOKEN_T__142:
          _localctx = WidgetTypeImageContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 614;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__141 || _la == TOKEN_T__142)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__143:
        case TOKEN_T__144:
          _localctx = WidgetTypeListContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 615;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__143 || _la == TOKEN_T__144)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__145:
        case TOKEN_T__148:
        case TOKEN_T__149:
          _localctx = WidgetTypeCheckBoxContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 620;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__145:
              state = 616;
              match(TOKEN_T__145);
              state = 617;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__146 || _la == TOKEN_T__147)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__148:
              state = 618;
              match(TOKEN_T__148);
              break;
            case TOKEN_T__149:
              state = 619;
              match(TOKEN_T__149);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case TOKEN_T__150:
        case TOKEN_T__151:
          _localctx = WidgetTypeSwitchContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 622;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__150 || _la == TOKEN_T__151)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__152:
        case TOKEN_T__153:
          _localctx = WidgetTypeHeaderContext(_localctx);
          enterOuterAlt(_localctx, 10);
          state = 623;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__152 || _la == TOKEN_T__153)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SingleDirectionContext singleDirection() {
    dynamic _localctx = SingleDirectionContext(context, state);
    enterRule(_localctx, 40, RULE_singleDirection);
    int _la;
    try {
      state = 630;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__27:
          _localctx = SingleDirectionLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 626;
          match(TOKEN_T__27);
          break;
        case TOKEN_T__30:
          _localctx = SingleDirectionRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 627;
          match(TOKEN_T__30);
          break;
        case TOKEN_T__154:
        case TOKEN_T__155:
          _localctx = SingleDirectionTopContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 628;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__154 || _la == TOKEN_T__155)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__156:
        case TOKEN_T__157:
          _localctx = SingleDirectionBottomContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 629;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DoubleDirectionContext doubleDirection() {
    dynamic _localctx = DoubleDirectionContext(context, state);
    enterRule(_localctx, 42, RULE_doubleDirection);
    int _la;
    try {
      state = 668;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 116, context)) {
        case 1:
          _localctx = DoubleDirectionTopLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 639;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__154:
            case TOKEN_T__155:
              state = 632;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__154 || _la == TOKEN_T__155)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 634;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__34) {
                state = 633;
                match(TOKEN_T__34);
              }

              state = 636;
              match(TOKEN_T__27);
              break;
            case TOKEN_T__27:
              state = 637;
              match(TOKEN_T__27);
              state = 638;
              match(TOKEN_T__154);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 2:
          _localctx = DoubleDirectionTopRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 648;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__154:
            case TOKEN_T__155:
              state = 641;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__154 || _la == TOKEN_T__155)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 643;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__34) {
                state = 642;
                match(TOKEN_T__34);
              }

              state = 645;
              match(TOKEN_T__30);
              break;
            case TOKEN_T__30:
              state = 646;
              match(TOKEN_T__30);
              state = 647;
              match(TOKEN_T__154);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 3:
          _localctx = DoubleDirectionBottomLeftContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 657;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__156:
            case TOKEN_T__157:
              state = 650;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 652;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__34) {
                state = 651;
                match(TOKEN_T__34);
              }

              state = 654;
              match(TOKEN_T__27);
              break;
            case TOKEN_T__27:
              state = 655;
              match(TOKEN_T__27);
              state = 656;
              match(TOKEN_T__156);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 4:
          _localctx = DoubleDirectionBottomRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 666;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__156:
            case TOKEN_T__157:
              state = 659;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 661;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__34) {
                state = 660;
                match(TOKEN_T__34);
              }

              state = 663;
              match(TOKEN_T__30);
              break;
            case TOKEN_T__30:
              state = 664;
              match(TOKEN_T__30);
              state = 665;
              match(TOKEN_T__156);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CharacterContext character() {
    dynamic _localctx = CharacterContext(context, state);
    enterRule(_localctx, 44, RULE_character);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 670;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 159)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 159)) &
                  ((BigInt.one << (TOKEN_T__158 - 159)) |
                      (BigInt.one << (TOKEN_T__159 - 159)) |
                      (BigInt.one << (TOKEN_T__160 - 159)) |
                      (BigInt.one << (TOKEN_T__161 - 159)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WordContext word() {
    dynamic _localctx = WordContext(context, state);
    enterRule(_localctx, 46, RULE_word);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 672;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__162 || _la == TOKEN_T__163)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LineContext line() {
    dynamic _localctx = LineContext(context, state);
    enterRule(_localctx, 48, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 674;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__164 || _la == TOKEN_T__165)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ItemContext item() {
    dynamic _localctx = ItemContext(context, state);
    enterRule(_localctx, 50, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 676;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__166 || _la == TOKEN_T__167)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  OfContext of() {
    dynamic _localctx = OfContext(context, state);
    enterRule(_localctx, 52, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 678;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__17 || _la == TOKEN_T__67 || _la == TOKEN_T__105)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClickContext click() {
    dynamic _localctx = ClickContext(context, state);
    enterRule(_localctx, 54, RULE_click);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 680;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 169)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 169)) &
                  ((BigInt.one << (TOKEN_T__168 - 169)) |
                      (BigInt.one << (TOKEN_T__169 - 169)) |
                      (BigInt.one << (TOKEN_T__170 - 169)) |
                      (BigInt.one << (TOKEN_T__171 - 169)) |
                      (BigInt.one << (TOKEN_T__172 - 169)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IsAreContext isAre() {
    dynamic _localctx = IsAreContext(context, state);
    enterRule(_localctx, 56, RULE_isAre);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 682;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 174)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 174)) &
                  ((BigInt.one << (TOKEN_T__173 - 174)) |
                      (BigInt.one << (TOKEN_T__174 - 174)) |
                      (BigInt.one << (TOKEN_T__175 - 174)))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IsAreNotContext isAreNot() {
    dynamic _localctx = IsAreNotContext(context, state);
    enterRule(_localctx, 58, RULE_isAreNot);
    try {
      state = 693;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__173:
          enterOuterAlt(_localctx, 1);
          state = 684;
          match(TOKEN_T__173);
          state = 685;
          match(TOKEN_T__33);
          break;
        case TOKEN_T__176:
          enterOuterAlt(_localctx, 2);
          state = 686;
          match(TOKEN_T__176);
          break;
        case TOKEN_T__174:
          enterOuterAlt(_localctx, 3);
          state = 687;
          match(TOKEN_T__174);
          state = 688;
          match(TOKEN_T__33);
          break;
        case TOKEN_T__177:
          enterOuterAlt(_localctx, 4);
          state = 689;
          match(TOKEN_T__177);
          break;
        case TOKEN_T__175:
          enterOuterAlt(_localctx, 5);
          state = 690;
          match(TOKEN_T__175);
          state = 691;
          match(TOKEN_T__33);
          break;
        case TOKEN_T__178:
          enterOuterAlt(_localctx, 6);
          state = 692;
          match(TOKEN_T__178);
          break;
        default:
          throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 4:
        return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }

  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return precpred(context, 8);
      case 1:
        return precpred(context, 7);
      case 2:
        return precpred(context, 6);
      case 3:
        return precpred(context, 5);
      case 4:
        return precpred(context, 4);
      case 5:
        return precpred(context, 2);
      case 6:
        return precpred(context, 1);
      case 7:
        return precpred(context, 9);
      case 8:
        return precpred(context, 3);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{C5}\u{2BA}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
      '\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
      '\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
      '\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
      '\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
      '\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
      '\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{4}\u{1A}\u{9}'
      '\u{1A}\u{4}\u{1B}\u{9}\u{1B}\u{4}\u{1C}\u{9}\u{1C}\u{4}\u{1D}\u{9}\u{1D}'
      '\u{4}\u{1E}\u{9}\u{1E}\u{4}\u{1F}\u{9}\u{1F}\u{3}\u{2}\u{3}\u{2}\u{5}'
      '\u{2}\u{41}\u{A}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}\u{45}\u{A}\u{2}\u{C}'
      '\u{2}\u{E}\u{2}\u{48}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{5}\u{2}\u{4C}\u{A}'
      '\u{2}\u{5}\u{2}\u{4E}\u{A}\u{2}\u{3}\u{2}\u{7}\u{2}\u{51}\u{A}\u{2}\u{C}'
      '\u{2}\u{E}\u{2}\u{54}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}'
      '\u{3}\u{3}\u{5}\u{3}\u{5B}\u{A}\u{3}\u{3}\u{3}\u{5}\u{3}\u{5E}\u{A}\u{3}'
      '\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{62}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{5}\u{4}\u{68}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}'
      '\u{5}\u{4}\u{6D}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{72}'
      '\u{A}\u{4}\u{3}\u{4}\u{5}\u{4}\u{75}\u{A}\u{4}\u{3}\u{4}\u{5}\u{4}\u{78}'
      '\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{7C}\u{A}\u{4}\u{3}\u{4}\u{5}'
      '\u{4}\u{7F}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{83}\u{A}\u{4}\u{3}'
      '\u{4}\u{5}\u{4}\u{86}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}'
      '\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}'
      '\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{97}\u{A}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{5}\u{4}\u{9B}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}'
      '\u{9F}\u{A}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{A4}\u{A}\u{4}'
      '\u{3}\u{5}\u{5}\u{5}\u{A7}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}'
      '\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{B0}\u{A}\u{5}\u{3}\u{6}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{BE}\u{A}\u{6}\u{3}'
      '\u{6}\u{5}\u{6}\u{C1}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
      '\u{5}\u{6}\u{DC}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}'
      '\u{6}\u{5}\u{6}\u{E3}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{7}\u{6}\u{E7}\u{A}'
      '\u{6}\u{C}\u{6}\u{E}\u{6}\u{EA}\u{B}\u{6}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}'
      '\u{EE}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{F2}\u{A}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{5}\u{7}\u{F6}\u{A}\u{7}\u{3}\u{7}\u{5}\u{7}\u{F9}\u{A}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{FE}\u{A}\u{7}\u{3}\u{7}\u{3}'
      '\u{7}\u{3}\u{7}\u{5}\u{7}\u{103}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}'
      '\u{107}\u{A}\u{7}\u{5}\u{7}\u{109}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}'
      '\u{7}\u{10D}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{111}\u{A}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{116}\u{A}\u{7}\u{3}\u{7}\u{3}'
      '\u{7}\u{5}\u{7}\u{11A}\u{A}\u{7}\u{5}\u{7}\u{11C}\u{A}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{5}\u{7}\u{120}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{124}'
      '\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{128}\u{A}\u{7}\u{5}\u{7}\u{12A}'
      '\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{12E}\u{A}\u{7}\u{3}\u{7}\u{3}'
      '\u{7}\u{5}\u{7}\u{132}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}'
      '\u{137}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{13B}\u{A}\u{7}\u{5}'
      '\u{7}\u{13D}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{141}\u{A}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{145}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}'
      '\u{7}\u{149}\u{A}\u{7}\u{5}\u{7}\u{14B}\u{A}\u{7}\u{5}\u{7}\u{14D}\u{A}'
      '\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{160}\u{A}\u{8}\u{3}\u{9}'
      '\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{5}\u{9}'
      '\u{169}\u{A}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}\u{A}\u{16F}'
      '\u{A}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}'
      '\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}\u{A}\u{17A}\u{A}\u{A}\u{3}\u{A}\u{3}'
      '\u{A}\u{3}\u{A}\u{5}\u{A}\u{17F}\u{A}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}'
      '\u{3}\u{A}\u{5}\u{A}\u{185}\u{A}\u{A}\u{3}\u{A}\u{7}\u{A}\u{188}\u{A}'
      '\u{A}\u{C}\u{A}\u{E}\u{A}\u{18B}\u{B}\u{A}\u{5}\u{A}\u{18D}\u{A}\u{A}'
      '\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}\u{A}\u{194}\u{A}'
      '\u{A}\u{3}\u{A}\u{7}\u{A}\u{197}\u{A}\u{A}\u{C}\u{A}\u{E}\u{A}\u{19A}'
      '\u{B}\u{A}\u{5}\u{A}\u{19C}\u{A}\u{A}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}'
      '\u{B}\u{5}\u{B}\u{1A2}\u{A}\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{D}\u{3}\u{D}'
      '\u{3}\u{E}\u{7}\u{E}\u{1A9}\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}\u{1AC}\u{B}'
      '\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{7}\u{E}\u{1B2}\u{A}\u{E}'
      '\u{C}\u{E}\u{E}\u{E}\u{1B5}\u{B}\u{E}\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{1B9}'
      '\u{A}\u{E}\u{5}\u{E}\u{1BB}\u{A}\u{E}\u{3}\u{F}\u{5}\u{F}\u{1BE}\u{A}'
      '\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{1C3}\u{A}\u{F}\u{C}\u{F}'
      '\u{E}\u{F}\u{1C6}\u{B}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
      '\u{5}\u{10}\u{1CC}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}'
      '\u{1D1}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{1D5}\u{A}\u{10}'
      '\u{3}\u{10}\u{5}\u{10}\u{1D8}\u{A}\u{10}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}'
      '\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}'
      '\u{11}\u{3}\u{11}\u{5}\u{11}\u{1E5}\u{A}\u{11}\u{3}\u{12}\u{3}\u{12}'
      '\u{3}\u{12}\u{5}\u{12}\u{1EA}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}'
      '\u{1EE}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{1F3}'
      '\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{1F7}\u{A}\u{12}\u{3}\u{12}'
      '\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{1FE}\u{A}\u{12}'
      '\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}'
      '\u{12}\u{206}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{20A}\u{A}'
      '\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
      '\u{5}\u{12}\u{212}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{216}'
      '\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}'
      '\u{12}\u{21D}\u{A}\u{12}\u{5}\u{12}\u{21F}\u{A}\u{12}\u{3}\u{12}\u{5}'
      '\u{12}\u{222}\u{A}\u{12}\u{5}\u{12}\u{224}\u{A}\u{12}\u{3}\u{13}\u{3}'
      '\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}'
      '\u{22D}\u{A}\u{13}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{232}'
      '\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{236}\u{A}\u{14}\u{3}\u{14}'
      '\u{3}\u{14}\u{5}\u{14}\u{23A}\u{A}\u{14}\u{3}\u{14}\u{5}\u{14}\u{23D}'
      '\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{242}\u{A}\u{14}'
      '\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{246}\u{A}\u{14}\u{3}\u{14}\u{5}\u{14}'
      '\u{249}\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{24E}'
      '\u{A}\u{14}\u{3}\u{14}\u{5}\u{14}\u{251}\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}'
      '\u{5}\u{14}\u{255}\u{A}\u{14}\u{5}\u{14}\u{257}\u{A}\u{14}\u{3}\u{15}'
      '\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}'
      '\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}'
      '\u{266}\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{26F}\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{5}\u{15}\u{273}\u{A}\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{5}\u{16}\u{279}\u{A}\u{16}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{27D}'
      '\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{282}\u{A}\u{17}'
      '\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{286}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}'
      '\u{3}\u{17}\u{5}\u{17}\u{28B}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}'
      '\u{28F}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{294}'
      '\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{298}\u{A}\u{17}\u{3}\u{17}'
      '\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{29D}\u{A}\u{17}\u{5}\u{17}\u{29F}'
      '\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{1A}\u{3}'
      '\u{1A}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}\u{3}\u{1D}'
      '\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}'
      '\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{5}\u{1F}\u{2B8}'
      '\u{A}\u{1F}\u{3}\u{1F}\u{4}\u{189}\u{198}\u{3}\u{A}\u{20}\u{2}\u{4}\u{6}'
      '\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}'
      '\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}'
      '\u{38}\u{3A}\u{3C}\u{2}\u{2C}\u{3}\u{2}\u{D}\u{E}\u{3}\u{2}\u{10}\u{11}'
      '\u{3}\u{2}\u{12}\u{13}\u{3}\u{2}\u{14}\u{15}\u{3}\u{2}\u{1B}\u{1D}\u{3}'
      '\u{2}\u{2A}\u{2B}\u{4}\u{2}\u{25}\u{25}\u{2C}\u{2C}\u{3}\u{2}\u{2D}\u{2E}'
      '\u{3}\u{2}\u{26}\u{28}\u{3}\u{2}\u{42}\u{44}\u{3}\u{2}\u{49}\u{53}\u{3}'
      '\u{2}\u{54}\u{5E}\u{3}\u{2}\u{60}\u{63}\u{3}\u{2}\u{64}\u{65}\u{3}\u{2}'
      '\u{66}\u{67}\u{3}\u{2}\u{68}\u{69}\u{4}\u{2}\u{9}\u{A}\u{14}\u{14}\u{3}'
      '\u{2}\u{6F}\u{70}\u{3}\u{2}\u{72}\u{73}\u{4}\u{2}\u{14}\u{14}\u{74}\u{75}'
      '\u{4}\u{2}\u{B}\u{B}\u{78}\u{79}\u{3}\u{2}\u{7A}\u{7B}\u{3}\u{2}\u{7C}'
      '\u{7F}\u{3}\u{2}\u{80}\u{81}\u{3}\u{2}\u{82}\u{83}\u{3}\u{2}\u{84}\u{85}'
      '\u{4}\u{2}\u{82}\u{82}\u{87}\u{87}\u{3}\u{2}\u{8E}\u{8F}\u{3}\u{2}\u{90}'
      '\u{91}\u{3}\u{2}\u{92}\u{93}\u{3}\u{2}\u{95}\u{96}\u{3}\u{2}\u{99}\u{9A}'
      '\u{3}\u{2}\u{9B}\u{9C}\u{3}\u{2}\u{9D}\u{9E}\u{3}\u{2}\u{9F}\u{A0}\u{3}'
      '\u{2}\u{A1}\u{A4}\u{3}\u{2}\u{A5}\u{A6}\u{3}\u{2}\u{A7}\u{A8}\u{3}\u{2}'
      '\u{A9}\u{AA}\u{5}\u{2}\u{14}\u{14}\u{46}\u{46}\u{6C}\u{6C}\u{3}\u{2}'
      '\u{AB}\u{AF}\u{3}\u{2}\u{B0}\u{B2}\u{2}\u{366}\u{2}\u{46}\u{3}\u{2}\u{2}'
      '\u{2}\u{4}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{6}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{8}'
      '\u{AF}\u{3}\u{2}\u{2}\u{2}\u{A}\u{C0}\u{3}\u{2}\u{2}\u{2}\u{C}\u{14C}'
      '\u{3}\u{2}\u{2}\u{2}\u{E}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{10}\u{168}\u{3}'
      '\u{2}\u{2}\u{2}\u{12}\u{19B}\u{3}\u{2}\u{2}\u{2}\u{14}\u{1A1}\u{3}\u{2}'
      '\u{2}\u{2}\u{16}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{18}\u{1A5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1A}\u{1BA}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{1BD}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E}\u{1D7}\u{3}\u{2}\u{2}\u{2}\u{20}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{22}'
      '\u{223}\u{3}\u{2}\u{2}\u{2}\u{24}\u{22C}\u{3}\u{2}\u{2}\u{2}\u{26}\u{256}'
      '\u{3}\u{2}\u{2}\u{2}\u{28}\u{272}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{278}\u{3}'
      '\u{2}\u{2}\u{2}\u{2C}\u{29E}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{2A0}\u{3}\u{2}'
      '\u{2}\u{2}\u{30}\u{2A2}\u{3}\u{2}\u{2}\u{2}\u{32}\u{2A4}\u{3}\u{2}\u{2}'
      '\u{2}\u{34}\u{2A6}\u{3}\u{2}\u{2}\u{2}\u{36}\u{2A8}\u{3}\u{2}\u{2}\u{2}'
      '\u{38}\u{2AA}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{2AC}\u{3}\u{2}\u{2}\u{2}\u{3C}'
      '\u{2B7}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{40}\u{5}\u{4}\u{3}\u{2}\u{3F}\u{41}'
      '\u{7}\u{3}\u{2}\u{2}\u{40}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{40}\u{41}\u{3}'
      '\u{2}\u{2}\u{2}\u{41}\u{42}\u{3}\u{2}\u{2}\u{2}\u{42}\u{43}\u{7}\u{C1}'
      '\u{2}\u{2}\u{43}\u{45}\u{3}\u{2}\u{2}\u{2}\u{44}\u{3E}\u{3}\u{2}\u{2}'
      '\u{2}\u{45}\u{48}\u{3}\u{2}\u{2}\u{2}\u{46}\u{44}\u{3}\u{2}\u{2}\u{2}'
      '\u{46}\u{47}\u{3}\u{2}\u{2}\u{2}\u{47}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{48}'
      '\u{46}\u{3}\u{2}\u{2}\u{2}\u{49}\u{4B}\u{5}\u{4}\u{3}\u{2}\u{4A}\u{4C}'
      '\u{7}\u{3}\u{2}\u{2}\u{4B}\u{4A}\u{3}\u{2}\u{2}\u{2}\u{4B}\u{4C}\u{3}'
      '\u{2}\u{2}\u{2}\u{4C}\u{4E}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{49}\u{3}\u{2}'
      '\u{2}\u{2}\u{4D}\u{4E}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{52}\u{3}\u{2}\u{2}'
      '\u{2}\u{4F}\u{51}\u{7}\u{C1}\u{2}\u{2}\u{50}\u{4F}\u{3}\u{2}\u{2}\u{2}'
      '\u{51}\u{54}\u{3}\u{2}\u{2}\u{2}\u{52}\u{50}\u{3}\u{2}\u{2}\u{2}\u{52}'
      '\u{53}\u{3}\u{2}\u{2}\u{2}\u{53}\u{55}\u{3}\u{2}\u{2}\u{2}\u{54}\u{52}'
      '\u{3}\u{2}\u{2}\u{2}\u{55}\u{56}\u{7}\u{2}\u{2}\u{3}\u{56}\u{3}\u{3}'
      '\u{2}\u{2}\u{2}\u{57}\u{5A}\u{5}\u{6}\u{4}\u{2}\u{58}\u{59}\u{7}\u{4}'
      '\u{2}\u{2}\u{59}\u{5B}\u{5}\u{A}\u{6}\u{2}\u{5A}\u{58}\u{3}\u{2}\u{2}'
      '\u{2}\u{5A}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{5E}\u{3}\u{2}\u{2}\u{2}'
      '\u{5C}\u{5E}\u{5}\u{A}\u{6}\u{2}\u{5D}\u{57}\u{3}\u{2}\u{2}\u{2}\u{5D}'
      '\u{5C}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{5}\u{3}\u{2}\u{2}\u{2}\u{5F}\u{61}'
      '\u{7}\u{5}\u{2}\u{2}\u{60}\u{62}\u{7}\u{6}\u{2}\u{2}\u{61}\u{60}\u{3}'
      '\u{2}\u{2}\u{2}\u{61}\u{62}\u{3}\u{2}\u{2}\u{2}\u{62}\u{63}\u{3}\u{2}'
      '\u{2}\u{2}\u{63}\u{A4}\u{5}\u{A}\u{6}\u{2}\u{64}\u{68}\u{7}\u{7}\u{2}'
      '\u{2}\u{65}\u{66}\u{7}\u{8}\u{2}\u{2}\u{66}\u{68}\u{7}\u{9}\u{2}\u{2}'
      '\u{67}\u{64}\u{3}\u{2}\u{2}\u{2}\u{67}\u{65}\u{3}\u{2}\u{2}\u{2}\u{68}'
      '\u{69}\u{3}\u{2}\u{2}\u{2}\u{69}\u{A4}\u{5}\u{A}\u{6}\u{2}\u{6A}\u{6C}'
      '\u{5}\u{8}\u{5}\u{2}\u{6B}\u{6D}\u{7}\u{A}\u{2}\u{2}\u{6C}\u{6B}\u{3}'
      '\u{2}\u{2}\u{2}\u{6C}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{6D}\u{6E}\u{3}\u{2}'
      '\u{2}\u{2}\u{6E}\u{77}\u{5}\u{A}\u{6}\u{2}\u{6F}\u{75}\u{7}\u{9}\u{2}'
      '\u{2}\u{70}\u{72}\u{7}\u{B}\u{2}\u{2}\u{71}\u{70}\u{3}\u{2}\u{2}\u{2}'
      '\u{71}\u{72}\u{3}\u{2}\u{2}\u{2}\u{72}\u{73}\u{3}\u{2}\u{2}\u{2}\u{73}'
      '\u{75}\u{7}\u{C}\u{2}\u{2}\u{74}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{74}\u{71}'
      '\u{3}\u{2}\u{2}\u{2}\u{75}\u{76}\u{3}\u{2}\u{2}\u{2}\u{76}\u{78}\u{5}'
      '\u{A}\u{6}\u{2}\u{77}\u{74}\u{3}\u{2}\u{2}\u{2}\u{77}\u{78}\u{3}\u{2}'
      '\u{2}\u{2}\u{78}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{79}\u{7E}\u{5}\u{8}\u{5}'
      '\u{2}\u{7A}\u{7C}\u{7}\u{A}\u{2}\u{2}\u{7B}\u{7A}\u{3}\u{2}\u{2}\u{2}'
      '\u{7B}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{7D}'
      '\u{7F}\u{5}\u{A}\u{6}\u{2}\u{7E}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{7F}'
      '\u{3}\u{2}\u{2}\u{2}\u{7F}\u{85}\u{3}\u{2}\u{2}\u{2}\u{80}\u{86}\u{7}'
      '\u{9}\u{2}\u{2}\u{81}\u{83}\u{7}\u{B}\u{2}\u{2}\u{82}\u{81}\u{3}\u{2}'
      '\u{2}\u{2}\u{82}\u{83}\u{3}\u{2}\u{2}\u{2}\u{83}\u{84}\u{3}\u{2}\u{2}'
      '\u{2}\u{84}\u{86}\u{7}\u{C}\u{2}\u{2}\u{85}\u{80}\u{3}\u{2}\u{2}\u{2}'
      '\u{85}\u{82}\u{3}\u{2}\u{2}\u{2}\u{86}\u{87}\u{3}\u{2}\u{2}\u{2}\u{87}'
      '\u{88}\u{5}\u{A}\u{6}\u{2}\u{88}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{89}\u{8A}'
      '\u{9}\u{2}\u{2}\u{2}\u{8A}\u{A4}\u{5}\u{A}\u{6}\u{2}\u{8B}\u{8C}\u{7}'
      '\u{F}\u{2}\u{2}\u{8C}\u{8D}\u{7}\u{BD}\u{2}\u{2}\u{8D}\u{8E}\u{9}\u{3}'
      '\u{2}\u{2}\u{8E}\u{A4}\u{5}\u{A}\u{6}\u{2}\u{8F}\u{90}\u{9}\u{4}\u{2}'
      '\u{2}\u{90}\u{91}\u{5}\u{A}\u{6}\u{2}\u{91}\u{92}\u{9}\u{5}\u{2}\u{2}'
      '\u{92}\u{93}\u{7}\u{BD}\u{2}\u{2}\u{93}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{94}'
      '\u{96}\u{7}\u{16}\u{2}\u{2}\u{95}\u{97}\u{7}\u{17}\u{2}\u{2}\u{96}\u{95}'
      '\u{3}\u{2}\u{2}\u{2}\u{96}\u{97}\u{3}\u{2}\u{2}\u{2}\u{97}\u{A4}\u{3}'
      '\u{2}\u{2}\u{2}\u{98}\u{9A}\u{7}\u{18}\u{2}\u{2}\u{99}\u{9B}\u{7}\u{17}'
      '\u{2}\u{2}\u{9A}\u{99}\u{3}\u{2}\u{2}\u{2}\u{9A}\u{9B}\u{3}\u{2}\u{2}'
      '\u{2}\u{9B}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{9C}\u{9E}\u{7}\u{19}\u{2}\u{2}'
      '\u{9D}\u{9F}\u{7}\u{1A}\u{2}\u{2}\u{9E}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{9E}'
      '\u{9F}\u{3}\u{2}\u{2}\u{2}\u{9F}\u{A0}\u{3}\u{2}\u{2}\u{2}\u{A0}\u{A4}'
      '\u{5}\u{A}\u{6}\u{2}\u{A1}\u{A2}\u{9}\u{6}\u{2}\u{2}\u{A2}\u{A4}\u{5}'
      '\u{A}\u{6}\u{2}\u{A3}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{67}\u{3}\u{2}'
      '\u{2}\u{2}\u{A3}\u{6A}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{79}\u{3}\u{2}\u{2}'
      '\u{2}\u{A3}\u{89}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{8B}\u{3}\u{2}\u{2}\u{2}'
      '\u{A3}\u{8F}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{94}\u{3}\u{2}\u{2}\u{2}\u{A3}'
      '\u{98}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{9C}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{A1}'
      '\u{3}\u{2}\u{2}\u{2}\u{A4}\u{7}\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A7}\u{7}'
      '\u{1E}\u{2}\u{2}\u{A6}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{A7}\u{3}\u{2}'
      '\u{2}\u{2}\u{A7}\u{A8}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{B0}\u{5}\u{38}\u{1D}'
      '\u{2}\u{A9}\u{AA}\u{7}\u{1F}\u{2}\u{2}\u{AA}\u{B0}\u{5}\u{38}\u{1D}\u{2}'
      '\u{AB}\u{AC}\u{7}\u{20}\u{2}\u{2}\u{AC}\u{B0}\u{5}\u{38}\u{1D}\u{2}\u{AD}'
      '\u{AE}\u{7}\u{21}\u{2}\u{2}\u{AE}\u{B0}\u{5}\u{38}\u{1D}\u{2}\u{AF}\u{A6}'
      '\u{3}\u{2}\u{2}\u{2}\u{AF}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{AF}\u{AB}\u{3}'
      '\u{2}\u{2}\u{2}\u{AF}\u{AD}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{9}\u{3}\u{2}'
      '\u{2}\u{2}\u{B1}\u{B2}\u{8}\u{6}\u{1}\u{2}\u{B2}\u{B3}\u{7}\u{22}\u{2}'
      '\u{2}\u{B3}\u{B4}\u{5}\u{A}\u{6}\u{2}\u{B4}\u{B5}\u{7}\u{23}\u{2}\u{2}'
      '\u{B5}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{C1}\u{5}\u{E}\u{8}\u{2}\u{B7}'
      '\u{B8}\u{7}\u{24}\u{2}\u{2}\u{B8}\u{C1}\u{5}\u{A}\u{6}\u{E}\u{B9}\u{BA}'
      '\u{7}\u{25}\u{2}\u{2}\u{BA}\u{C1}\u{5}\u{A}\u{6}\u{D}\u{BB}\u{BE}\u{7}'
      '\u{C3}\u{2}\u{2}\u{BC}\u{BE}\u{7}\u{C4}\u{2}\u{2}\u{BD}\u{BB}\u{3}\u{2}'
      '\u{2}\u{2}\u{BD}\u{BC}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{BF}\u{3}\u{2}\u{2}'
      '\u{2}\u{BF}\u{C1}\u{5}\u{A}\u{6}\u{C}\u{C0}\u{B1}\u{3}\u{2}\u{2}\u{2}'
      '\u{C0}\u{B6}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{C0}'
      '\u{B9}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{C1}\u{E8}'
      '\u{3}\u{2}\u{2}\u{2}\u{C2}\u{C3}\u{C}\u{A}\u{2}\u{2}\u{C3}\u{C4}\u{7}'
      '\u{29}\u{2}\u{2}\u{C4}\u{E7}\u{5}\u{A}\u{6}\u{B}\u{C5}\u{C6}\u{C}\u{9}'
      '\u{2}\u{2}\u{C6}\u{C7}\u{9}\u{7}\u{2}\u{2}\u{C7}\u{E7}\u{5}\u{A}\u{6}'
      '\u{A}\u{C8}\u{C9}\u{C}\u{8}\u{2}\u{2}\u{C9}\u{CA}\u{9}\u{8}\u{2}\u{2}'
      '\u{CA}\u{E7}\u{5}\u{A}\u{6}\u{9}\u{CB}\u{CC}\u{C}\u{7}\u{2}\u{2}\u{CC}'
      '\u{CD}\u{9}\u{9}\u{2}\u{2}\u{CD}\u{E7}\u{5}\u{A}\u{6}\u{8}\u{CE}\u{CF}'
      '\u{C}\u{6}\u{2}\u{2}\u{CF}\u{D0}\u{5}\u{C}\u{7}\u{2}\u{D0}\u{D1}\u{5}'
      '\u{A}\u{6}\u{7}\u{D1}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{D3}\u{C}\u{4}'
      '\u{2}\u{2}\u{D3}\u{D4}\u{7}\u{2F}\u{2}\u{2}\u{D4}\u{E7}\u{5}\u{A}\u{6}'
      '\u{5}\u{D5}\u{D6}\u{C}\u{3}\u{2}\u{2}\u{D6}\u{D7}\u{7}\u{30}\u{2}\u{2}'
      '\u{D7}\u{E7}\u{5}\u{A}\u{6}\u{4}\u{D8}\u{DB}\u{C}\u{B}\u{2}\u{2}\u{D9}'
      '\u{DC}\u{5}\u{3A}\u{1E}\u{2}\u{DA}\u{DC}\u{5}\u{3C}\u{1F}\u{2}\u{DB}'
      '\u{D9}\u{3}\u{2}\u{2}\u{2}\u{DB}\u{DA}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{DD}'
      '\u{3}\u{2}\u{2}\u{2}\u{DD}\u{DE}\u{9}\u{A}\u{2}\u{2}\u{DE}\u{E7}\u{3}'
      '\u{2}\u{2}\u{2}\u{DF}\u{E2}\u{C}\u{5}\u{2}\u{2}\u{E0}\u{E3}\u{5}\u{3A}'
      '\u{1E}\u{2}\u{E1}\u{E3}\u{5}\u{3C}\u{1F}\u{2}\u{E2}\u{E0}\u{3}\u{2}\u{2}'
      '\u{2}\u{E2}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{E3}\u{E4}\u{3}\u{2}\u{2}\u{2}'
      '\u{E4}\u{E5}\u{5}\u{10}\u{9}\u{2}\u{E5}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{E6}'
      '\u{C2}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{C5}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{C8}'
      '\u{3}\u{2}\u{2}\u{2}\u{E6}\u{CB}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{CE}\u{3}'
      '\u{2}\u{2}\u{2}\u{E6}\u{D2}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{D5}\u{3}\u{2}'
      '\u{2}\u{2}\u{E6}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{DF}\u{3}\u{2}\u{2}'
      '\u{2}\u{E7}\u{EA}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{E6}\u{3}\u{2}\u{2}\u{2}'
      '\u{E8}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{E9}\u{B}\u{3}\u{2}\u{2}\u{2}\u{EA}'
      '\u{E8}\u{3}\u{2}\u{2}\u{2}\u{EB}\u{F9}\u{7}\u{31}\u{2}\u{2}\u{EC}\u{EE}'
      '\u{5}\u{3A}\u{1E}\u{2}\u{ED}\u{EC}\u{3}\u{2}\u{2}\u{2}\u{ED}\u{EE}\u{3}'
      '\u{2}\u{2}\u{2}\u{EE}\u{EF}\u{3}\u{2}\u{2}\u{2}\u{EF}\u{F9}\u{7}\u{32}'
      '\u{2}\u{2}\u{F0}\u{F2}\u{5}\u{3A}\u{1E}\u{2}\u{F1}\u{F0}\u{3}\u{2}\u{2}'
      '\u{2}\u{F1}\u{F2}\u{3}\u{2}\u{2}\u{2}\u{F2}\u{F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{F3}\u{F5}\u{7}\u{33}\u{2}\u{2}\u{F4}\u{F6}\u{7}\u{10}\u{2}\u{2}\u{F5}'
      '\u{F4}\u{3}\u{2}\u{2}\u{2}\u{F5}\u{F6}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{F9}'
      '\u{3}\u{2}\u{2}\u{2}\u{F7}\u{F9}\u{7}\u{34}\u{2}\u{2}\u{F8}\u{EB}\u{3}'
      '\u{2}\u{2}\u{2}\u{F8}\u{ED}\u{3}\u{2}\u{2}\u{2}\u{F8}\u{F1}\u{3}\u{2}'
      '\u{2}\u{2}\u{F8}\u{F7}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{14D}\u{3}\u{2}\u{2}'
      '\u{2}\u{FA}\u{109}\u{7}\u{35}\u{2}\u{2}\u{FB}\u{109}\u{7}\u{36}\u{2}'
      '\u{2}\u{FC}\u{FE}\u{5}\u{3A}\u{1E}\u{2}\u{FD}\u{FC}\u{3}\u{2}\u{2}\u{2}'
      '\u{FD}\u{FE}\u{3}\u{2}\u{2}\u{2}\u{FE}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{FF}'
      '\u{109}\u{7}\u{37}\u{2}\u{2}\u{100}\u{103}\u{5}\u{3C}\u{1F}\u{2}\u{101}'
      '\u{103}\u{7}\u{24}\u{2}\u{2}\u{102}\u{100}\u{3}\u{2}\u{2}\u{2}\u{102}'
      '\u{101}\u{3}\u{2}\u{2}\u{2}\u{103}\u{104}\u{3}\u{2}\u{2}\u{2}\u{104}'
      '\u{106}\u{7}\u{33}\u{2}\u{2}\u{105}\u{107}\u{7}\u{10}\u{2}\u{2}\u{106}'
      '\u{105}\u{3}\u{2}\u{2}\u{2}\u{106}\u{107}\u{3}\u{2}\u{2}\u{2}\u{107}'
      '\u{109}\u{3}\u{2}\u{2}\u{2}\u{108}\u{FA}\u{3}\u{2}\u{2}\u{2}\u{108}\u{FB}'
      '\u{3}\u{2}\u{2}\u{2}\u{108}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{108}\u{102}\u{3}'
      '\u{2}\u{2}\u{2}\u{109}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{10A}\u{11C}\u{7}'
      '\u{38}\u{2}\u{2}\u{10B}\u{10D}\u{5}\u{3A}\u{1E}\u{2}\u{10C}\u{10B}\u{3}'
      '\u{2}\u{2}\u{2}\u{10C}\u{10D}\u{3}\u{2}\u{2}\u{2}\u{10D}\u{10E}\u{3}'
      '\u{2}\u{2}\u{2}\u{10E}\u{11C}\u{7}\u{39}\u{2}\u{2}\u{10F}\u{111}\u{5}'
      '\u{3A}\u{1E}\u{2}\u{110}\u{10F}\u{3}\u{2}\u{2}\u{2}\u{110}\u{111}\u{3}'
      '\u{2}\u{2}\u{2}\u{111}\u{112}\u{3}\u{2}\u{2}\u{2}\u{112}\u{113}\u{7}'
      '\u{3A}\u{2}\u{2}\u{113}\u{115}\u{7}\u{3B}\u{2}\u{2}\u{114}\u{116}\u{7}'
      '\u{30}\u{2}\u{2}\u{115}\u{114}\u{3}\u{2}\u{2}\u{2}\u{115}\u{116}\u{3}'
      '\u{2}\u{2}\u{2}\u{116}\u{117}\u{3}\u{2}\u{2}\u{2}\u{117}\u{119}\u{7}'
      '\u{33}\u{2}\u{2}\u{118}\u{11A}\u{7}\u{10}\u{2}\u{2}\u{119}\u{118}\u{3}'
      '\u{2}\u{2}\u{2}\u{119}\u{11A}\u{3}\u{2}\u{2}\u{2}\u{11A}\u{11C}\u{3}'
      '\u{2}\u{2}\u{2}\u{11B}\u{10A}\u{3}\u{2}\u{2}\u{2}\u{11B}\u{10C}\u{3}'
      '\u{2}\u{2}\u{2}\u{11B}\u{110}\u{3}\u{2}\u{2}\u{2}\u{11C}\u{14D}\u{3}'
      '\u{2}\u{2}\u{2}\u{11D}\u{12A}\u{7}\u{3C}\u{2}\u{2}\u{11E}\u{120}\u{5}'
      '\u{3A}\u{1E}\u{2}\u{11F}\u{11E}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{120}\u{3}'
      '\u{2}\u{2}\u{2}\u{120}\u{121}\u{3}\u{2}\u{2}\u{2}\u{121}\u{12A}\u{7}'
      '\u{3D}\u{2}\u{2}\u{122}\u{124}\u{5}\u{3A}\u{1E}\u{2}\u{123}\u{122}\u{3}'
      '\u{2}\u{2}\u{2}\u{123}\u{124}\u{3}\u{2}\u{2}\u{2}\u{124}\u{125}\u{3}'
      '\u{2}\u{2}\u{2}\u{125}\u{127}\u{7}\u{3E}\u{2}\u{2}\u{126}\u{128}\u{7}'
      '\u{3B}\u{2}\u{2}\u{127}\u{126}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{3}'
      '\u{2}\u{2}\u{2}\u{128}\u{12A}\u{3}\u{2}\u{2}\u{2}\u{129}\u{11D}\u{3}'
      '\u{2}\u{2}\u{2}\u{129}\u{11F}\u{3}\u{2}\u{2}\u{2}\u{129}\u{123}\u{3}'
      '\u{2}\u{2}\u{2}\u{12A}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{12B}\u{13D}\u{7}'
      '\u{3F}\u{2}\u{2}\u{12C}\u{12E}\u{5}\u{3A}\u{1E}\u{2}\u{12D}\u{12C}\u{3}'
      '\u{2}\u{2}\u{2}\u{12D}\u{12E}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{12F}\u{3}'
      '\u{2}\u{2}\u{2}\u{12F}\u{13D}\u{7}\u{40}\u{2}\u{2}\u{130}\u{132}\u{5}'
      '\u{3A}\u{1E}\u{2}\u{131}\u{130}\u{3}\u{2}\u{2}\u{2}\u{131}\u{132}\u{3}'
      '\u{2}\u{2}\u{2}\u{132}\u{133}\u{3}\u{2}\u{2}\u{2}\u{133}\u{134}\u{7}'
      '\u{3E}\u{2}\u{2}\u{134}\u{136}\u{7}\u{3B}\u{2}\u{2}\u{135}\u{137}\u{7}'
      '\u{30}\u{2}\u{2}\u{136}\u{135}\u{3}\u{2}\u{2}\u{2}\u{136}\u{137}\u{3}'
      '\u{2}\u{2}\u{2}\u{137}\u{138}\u{3}\u{2}\u{2}\u{2}\u{138}\u{13A}\u{7}'
      '\u{33}\u{2}\u{2}\u{139}\u{13B}\u{7}\u{10}\u{2}\u{2}\u{13A}\u{139}\u{3}'
      '\u{2}\u{2}\u{2}\u{13A}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{13D}\u{3}'
      '\u{2}\u{2}\u{2}\u{13C}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{13C}\u{12D}\u{3}'
      '\u{2}\u{2}\u{2}\u{13C}\u{131}\u{3}\u{2}\u{2}\u{2}\u{13D}\u{14D}\u{3}'
      '\u{2}\u{2}\u{2}\u{13E}\u{14B}\u{7}\u{41}\u{2}\u{2}\u{13F}\u{141}\u{5}'
      '\u{3A}\u{1E}\u{2}\u{140}\u{13F}\u{3}\u{2}\u{2}\u{2}\u{140}\u{141}\u{3}'
      '\u{2}\u{2}\u{2}\u{141}\u{142}\u{3}\u{2}\u{2}\u{2}\u{142}\u{14B}\u{7}'
      '\u{39}\u{2}\u{2}\u{143}\u{145}\u{5}\u{3A}\u{1E}\u{2}\u{144}\u{143}\u{3}'
      '\u{2}\u{2}\u{2}\u{144}\u{145}\u{3}\u{2}\u{2}\u{2}\u{145}\u{146}\u{3}'
      '\u{2}\u{2}\u{2}\u{146}\u{148}\u{7}\u{3A}\u{2}\u{2}\u{147}\u{149}\u{7}'
      '\u{3B}\u{2}\u{2}\u{148}\u{147}\u{3}\u{2}\u{2}\u{2}\u{148}\u{149}\u{3}'
      '\u{2}\u{2}\u{2}\u{149}\u{14B}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{13E}\u{3}'
      '\u{2}\u{2}\u{2}\u{14A}\u{140}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{144}\u{3}'
      '\u{2}\u{2}\u{2}\u{14B}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{F8}\u{3}\u{2}'
      '\u{2}\u{2}\u{14C}\u{108}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{11B}\u{3}\u{2}'
      '\u{2}\u{2}\u{14C}\u{129}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{13C}\u{3}\u{2}'
      '\u{2}\u{2}\u{14C}\u{14A}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{D}\u{3}\u{2}\u{2}'
      '\u{2}\u{14E}\u{14F}\u{7}\u{22}\u{2}\u{2}\u{14F}\u{150}\u{5}\u{E}\u{8}'
      '\u{2}\u{150}\u{151}\u{7}\u{23}\u{2}\u{2}\u{151}\u{160}\u{3}\u{2}\u{2}'
      '\u{2}\u{152}\u{160}\u{5}\u{14}\u{B}\u{2}\u{153}\u{154}\u{7}\u{25}\u{2}'
      '\u{2}\u{154}\u{160}\u{5}\u{E}\u{8}\u{2}\u{155}\u{160}\u{5}\u{12}\u{A}'
      '\u{2}\u{156}\u{157}\u{5}\u{18}\u{D}\u{2}\u{157}\u{158}\u{5}\u{E}\u{8}'
      '\u{2}\u{158}\u{160}\u{3}\u{2}\u{2}\u{2}\u{159}\u{160}\u{5}\u{26}\u{14}'
      '\u{2}\u{15A}\u{15B}\u{5}\u{10}\u{9}\u{2}\u{15B}\u{15C}\u{5}\u{36}\u{1C}'
      '\u{2}\u{15C}\u{15D}\u{5}\u{E}\u{8}\u{2}\u{15D}\u{160}\u{3}\u{2}\u{2}'
      '\u{2}\u{15E}\u{160}\u{7}\u{BD}\u{2}\u{2}\u{15F}\u{14E}\u{3}\u{2}\u{2}'
      '\u{2}\u{15F}\u{152}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{153}\u{3}\u{2}\u{2}'
      '\u{2}\u{15F}\u{155}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{156}\u{3}\u{2}\u{2}'
      '\u{2}\u{15F}\u{159}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{15A}\u{3}\u{2}\u{2}'
      '\u{2}\u{15F}\u{15E}\u{3}\u{2}\u{2}\u{2}\u{160}\u{F}\u{3}\u{2}\u{2}\u{2}'
      '\u{161}\u{169}\u{9}\u{B}\u{2}\u{2}\u{162}\u{169}\u{5}\u{2E}\u{18}\u{2}'
      '\u{163}\u{169}\u{5}\u{34}\u{1B}\u{2}\u{164}\u{169}\u{5}\u{30}\u{19}\u{2}'
      '\u{165}\u{169}\u{5}\u{32}\u{1A}\u{2}\u{166}\u{169}\u{5}\u{28}\u{15}\u{2}'
      '\u{167}\u{169}\u{7}\u{BD}\u{2}\u{2}\u{168}\u{161}\u{3}\u{2}\u{2}\u{2}'
      '\u{168}\u{162}\u{3}\u{2}\u{2}\u{2}\u{168}\u{163}\u{3}\u{2}\u{2}\u{2}'
      '\u{168}\u{164}\u{3}\u{2}\u{2}\u{2}\u{168}\u{165}\u{3}\u{2}\u{2}\u{2}'
      '\u{168}\u{166}\u{3}\u{2}\u{2}\u{2}\u{168}\u{167}\u{3}\u{2}\u{2}\u{2}'
      '\u{169}\u{11}\u{3}\u{2}\u{2}\u{2}\u{16A}\u{16B}\u{7}\u{45}\u{2}\u{2}'
      '\u{16B}\u{16E}\u{5}\u{E}\u{8}\u{2}\u{16C}\u{16D}\u{7}\u{46}\u{2}\u{2}'
      '\u{16D}\u{16F}\u{5}\u{E}\u{8}\u{2}\u{16E}\u{16C}\u{3}\u{2}\u{2}\u{2}'
      '\u{16E}\u{16F}\u{3}\u{2}\u{2}\u{2}\u{16F}\u{170}\u{3}\u{2}\u{2}\u{2}'
      '\u{170}\u{171}\u{9}\u{3}\u{2}\u{2}\u{171}\u{172}\u{5}\u{E}\u{8}\u{2}'
      '\u{172}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{173}\u{174}\u{7}\u{45}\u{2}\u{2}'
      '\u{174}\u{175}\u{5}\u{E}\u{8}\u{2}\u{175}\u{176}\u{7}\u{46}\u{2}\u{2}'
      '\u{176}\u{179}\u{5}\u{E}\u{8}\u{2}\u{177}\u{178}\u{9}\u{3}\u{2}\u{2}'
      '\u{178}\u{17A}\u{5}\u{E}\u{8}\u{2}\u{179}\u{177}\u{3}\u{2}\u{2}\u{2}'
      '\u{179}\u{17A}\u{3}\u{2}\u{2}\u{2}\u{17A}\u{19C}\u{3}\u{2}\u{2}\u{2}'
      '\u{17B}\u{17E}\u{7}\u{47}\u{2}\u{2}\u{17C}\u{17D}\u{7}\u{22}\u{2}\u{2}'
      '\u{17D}\u{17F}\u{7}\u{23}\u{2}\u{2}\u{17E}\u{17C}\u{3}\u{2}\u{2}\u{2}'
      '\u{17E}\u{17F}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{19C}\u{3}\u{2}\u{2}\u{2}'
      '\u{180}\u{181}\u{7}\u{BD}\u{2}\u{2}\u{181}\u{18C}\u{7}\u{22}\u{2}\u{2}'
      '\u{182}\u{189}\u{5}\u{E}\u{8}\u{2}\u{183}\u{185}\u{7}\u{48}\u{2}\u{2}'
      '\u{184}\u{183}\u{3}\u{2}\u{2}\u{2}\u{184}\u{185}\u{3}\u{2}\u{2}\u{2}'
      '\u{185}\u{186}\u{3}\u{2}\u{2}\u{2}\u{186}\u{188}\u{5}\u{E}\u{8}\u{2}'
      '\u{187}\u{184}\u{3}\u{2}\u{2}\u{2}\u{188}\u{18B}\u{3}\u{2}\u{2}\u{2}'
      '\u{189}\u{18A}\u{3}\u{2}\u{2}\u{2}\u{189}\u{187}\u{3}\u{2}\u{2}\u{2}'
      '\u{18A}\u{18D}\u{3}\u{2}\u{2}\u{2}\u{18B}\u{189}\u{3}\u{2}\u{2}\u{2}'
      '\u{18C}\u{182}\u{3}\u{2}\u{2}\u{2}\u{18C}\u{18D}\u{3}\u{2}\u{2}\u{2}'
      '\u{18D}\u{18E}\u{3}\u{2}\u{2}\u{2}\u{18E}\u{19C}\u{7}\u{23}\u{2}\u{2}'
      '\u{18F}\u{190}\u{7}\u{BD}\u{2}\u{2}\u{190}\u{191}\u{7}\u{B}\u{2}\u{2}'
      '\u{191}\u{198}\u{5}\u{E}\u{8}\u{2}\u{192}\u{194}\u{7}\u{48}\u{2}\u{2}'
      '\u{193}\u{192}\u{3}\u{2}\u{2}\u{2}\u{193}\u{194}\u{3}\u{2}\u{2}\u{2}'
      '\u{194}\u{195}\u{3}\u{2}\u{2}\u{2}\u{195}\u{197}\u{5}\u{E}\u{8}\u{2}'
      '\u{196}\u{193}\u{3}\u{2}\u{2}\u{2}\u{197}\u{19A}\u{3}\u{2}\u{2}\u{2}'
      '\u{198}\u{199}\u{3}\u{2}\u{2}\u{2}\u{198}\u{196}\u{3}\u{2}\u{2}\u{2}'
      '\u{199}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{19A}\u{198}\u{3}\u{2}\u{2}\u{2}'
      '\u{19B}\u{16A}\u{3}\u{2}\u{2}\u{2}\u{19B}\u{173}\u{3}\u{2}\u{2}\u{2}'
      '\u{19B}\u{17B}\u{3}\u{2}\u{2}\u{2}\u{19B}\u{180}\u{3}\u{2}\u{2}\u{2}'
      '\u{19B}\u{18F}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{13}\u{3}\u{2}\u{2}\u{2}\u{19D}'
      '\u{1A2}\u{5}\u{16}\u{C}\u{2}\u{19E}\u{1A2}\u{7}\u{BA}\u{2}\u{2}\u{19F}'
      '\u{1A2}\u{7}\u{B8}\u{2}\u{2}\u{1A0}\u{1A2}\u{7}\u{B9}\u{2}\u{2}\u{1A1}'
      '\u{19D}\u{3}\u{2}\u{2}\u{2}\u{1A1}\u{19E}\u{3}\u{2}\u{2}\u{2}\u{1A1}'
      '\u{19F}\u{3}\u{2}\u{2}\u{2}\u{1A1}\u{1A0}\u{3}\u{2}\u{2}\u{2}\u{1A2}'
      '\u{15}\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A4}\u{9}\u{C}\u{2}\u{2}\u{1A4}\u{17}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A6}\u{9}\u{D}\u{2}\u{2}\u{1A6}\u{19}\u{3}'
      '\u{2}\u{2}\u{2}\u{1A7}\u{1A9}\u{7}\u{BD}\u{2}\u{2}\u{1A8}\u{1A7}\u{3}'
      '\u{2}\u{2}\u{2}\u{1A9}\u{1AC}\u{3}\u{2}\u{2}\u{2}\u{1AA}\u{1A8}\u{3}'
      '\u{2}\u{2}\u{2}\u{1AA}\u{1AB}\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1AD}\u{3}'
      '\u{2}\u{2}\u{2}\u{1AC}\u{1AA}\u{3}\u{2}\u{2}\u{2}\u{1AD}\u{1AE}\u{5}'
      '\u{1C}\u{F}\u{2}\u{1AE}\u{1AF}\u{5}\u{28}\u{15}\u{2}\u{1AF}\u{1BB}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B0}\u{1B2}\u{7}\u{BD}\u{2}\u{2}\u{1B1}\u{1B0}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B2}\u{1B5}\u{3}\u{2}\u{2}\u{2}\u{1B3}\u{1B1}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B3}\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1B6}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B5}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{1B6}\u{1B8}\u{5}'
      '\u{28}\u{15}\u{2}\u{1B7}\u{1B9}\u{5}\u{1C}\u{F}\u{2}\u{1B8}\u{1B7}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B8}\u{1B9}\u{3}\u{2}\u{2}\u{2}\u{1B9}\u{1BB}\u{3}'
      '\u{2}\u{2}\u{2}\u{1BA}\u{1AA}\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1B3}\u{3}'
      '\u{2}\u{2}\u{2}\u{1BB}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1BE}\u{5}\u{1E}'
      '\u{10}\u{2}\u{1BD}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{1BE}\u{3}\u{2}'
      '\u{2}\u{2}\u{1BE}\u{1BF}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1C4}\u{5}\u{14}'
      '\u{B}\u{2}\u{1C0}\u{1C1}\u{7}\u{30}\u{2}\u{2}\u{1C1}\u{1C3}\u{5}\u{14}'
      '\u{B}\u{2}\u{1C2}\u{1C0}\u{3}\u{2}\u{2}\u{2}\u{1C3}\u{1C6}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C4}\u{1C2}\u{3}\u{2}\u{2}\u{2}\u{1C4}\u{1C5}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C5}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{1C6}\u{1C4}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C7}\u{1D8}\u{7}\u{5F}\u{2}\u{2}\u{1C8}\u{1C9}\u{9}\u{E}\u{2}'
      '\u{2}\u{1C9}\u{1CB}\u{7}\u{B}\u{2}\u{2}\u{1CA}\u{1CC}\u{7}\u{5F}\u{2}'
      '\u{2}\u{1CB}\u{1CA}\u{3}\u{2}\u{2}\u{2}\u{1CB}\u{1CC}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CC}\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{1CD}\u{1CE}\u{9}\u{F}\u{2}'
      '\u{2}\u{1CE}\u{1D0}\u{7}\u{B}\u{2}\u{2}\u{1CF}\u{1D1}\u{7}\u{5F}\u{2}'
      '\u{2}\u{1D0}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1D0}\u{1D1}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D1}\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{1D2}\u{1D4}\u{9}\u{10}\u{2}'
      '\u{2}\u{1D3}\u{1D5}\u{7}\u{5F}\u{2}\u{2}\u{1D4}\u{1D3}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D4}\u{1D5}\u{3}\u{2}\u{2}\u{2}\u{1D5}\u{1D8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D6}\u{1D8}\u{9}\u{11}\u{2}\u{2}\u{1D7}\u{1C7}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D7}\u{1C8}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{1CD}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D7}\u{1D2}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{1D6}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D8}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{1D9}\u{1DA}\u{5}\u{22}\u{12}'
      '\u{2}\u{1DA}\u{1DB}\u{7}\u{22}\u{2}\u{2}\u{1DB}\u{1DC}\u{5}\u{E}\u{8}'
      '\u{2}\u{1DC}\u{1DD}\u{7}\u{23}\u{2}\u{2}\u{1DD}\u{1E5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1DE}\u{1DF}\u{5}\u{22}\u{12}\u{2}\u{1DF}\u{1E0}\u{7}\u{6A}\u{2}'
      '\u{2}\u{1E0}\u{1E5}\u{3}\u{2}\u{2}\u{2}\u{1E1}\u{1E2}\u{5}\u{22}\u{12}'
      '\u{2}\u{1E2}\u{1E3}\u{5}\u{E}\u{8}\u{2}\u{1E3}\u{1E5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E4}\u{1D9}\u{3}\u{2}\u{2}\u{2}\u{1E4}\u{1DE}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E4}\u{1E1}\u{3}\u{2}\u{2}\u{2}\u{1E5}\u{21}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E6}\u{1E7}\u{9}\u{12}\u{2}\u{2}\u{1E7}\u{1E9}\u{5}\u{2A}\u{16}\u{2}'
      '\u{1E8}\u{1EA}\u{7}\u{6B}\u{2}\u{2}\u{1E9}\u{1E8}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E9}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1EB}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EB}\u{1ED}\u{7}\u{6C}\u{2}\u{2}\u{1EC}\u{1EE}\u{7}\u{6D}\u{2}\u{2}'
      '\u{1ED}\u{1EC}\u{3}\u{2}\u{2}\u{2}\u{1ED}\u{1EE}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EE}\u{224}\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1F0}\u{9}\u{12}\u{2}\u{2}'
      '\u{1F0}\u{1F2}\u{5}\u{2C}\u{17}\u{2}\u{1F1}\u{1F3}\u{7}\u{6E}\u{2}\u{2}'
      '\u{1F2}\u{1F1}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F3}\u{1F4}\u{3}\u{2}\u{2}\u{2}\u{1F4}\u{1F6}\u{7}\u{6C}\u{2}\u{2}'
      '\u{1F5}\u{1F7}\u{7}\u{6D}\u{2}\u{2}\u{1F6}\u{1F5}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F6}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F7}\u{224}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F8}\u{1F9}\u{9}\u{12}\u{2}\u{2}\u{1F9}\u{1FA}\u{5}\u{2A}\u{16}\u{2}'
      '\u{1FA}\u{1FB}\u{9}\u{13}\u{2}\u{2}\u{1FB}\u{1FD}\u{7}\u{6C}\u{2}\u{2}'
      '\u{1FC}\u{1FE}\u{7}\u{6D}\u{2}\u{2}\u{1FD}\u{1FC}\u{3}\u{2}\u{2}\u{2}'
      '\u{1FD}\u{1FE}\u{3}\u{2}\u{2}\u{2}\u{1FE}\u{224}\u{3}\u{2}\u{2}\u{2}'
      '\u{1FF}\u{200}\u{9}\u{12}\u{2}\u{2}\u{200}\u{201}\u{5}\u{18}\u{D}\u{2}'
      '\u{201}\u{205}\u{5}\u{2A}\u{16}\u{2}\u{202}\u{206}\u{7}\u{56}\u{2}\u{2}'
      '\u{203}\u{206}\u{7}\u{71}\u{2}\u{2}\u{204}\u{206}\u{7}\u{5B}\u{2}\u{2}'
      '\u{205}\u{202}\u{3}\u{2}\u{2}\u{2}\u{205}\u{203}\u{3}\u{2}\u{2}\u{2}'
      '\u{205}\u{204}\u{3}\u{2}\u{2}\u{2}\u{206}\u{207}\u{3}\u{2}\u{2}\u{2}'
      '\u{207}\u{209}\u{7}\u{6C}\u{2}\u{2}\u{208}\u{20A}\u{7}\u{6D}\u{2}\u{2}'
      '\u{209}\u{208}\u{3}\u{2}\u{2}\u{2}\u{209}\u{20A}\u{3}\u{2}\u{2}\u{2}'
      '\u{20A}\u{224}\u{3}\u{2}\u{2}\u{2}\u{20B}\u{20C}\u{9}\u{12}\u{2}\u{2}'
      '\u{20C}\u{20D}\u{5}\u{2A}\u{16}\u{2}\u{20D}\u{20E}\u{5}\u{14}\u{B}\u{2}'
      '\u{20E}\u{20F}\u{9}\u{14}\u{2}\u{2}\u{20F}\u{211}\u{7}\u{6C}\u{2}\u{2}'
      '\u{210}\u{212}\u{7}\u{6D}\u{2}\u{2}\u{211}\u{210}\u{3}\u{2}\u{2}\u{2}'
      '\u{211}\u{212}\u{3}\u{2}\u{2}\u{2}\u{212}\u{224}\u{3}\u{2}\u{2}\u{2}'
      '\u{213}\u{215}\u{9}\u{15}\u{2}\u{2}\u{214}\u{216}\u{7}\u{6D}\u{2}\u{2}'
      '\u{215}\u{214}\u{3}\u{2}\u{2}\u{2}\u{215}\u{216}\u{3}\u{2}\u{2}\u{2}'
      '\u{216}\u{224}\u{3}\u{2}\u{2}\u{2}\u{217}\u{21F}\u{7}\u{76}\u{2}\u{2}'
      '\u{218}\u{21F}\u{7}\u{77}\u{2}\u{2}\u{219}\u{21C}\u{7}\u{10}\u{2}\u{2}'
      '\u{21A}\u{21D}\u{5}\u{2A}\u{16}\u{2}\u{21B}\u{21D}\u{5}\u{2C}\u{17}\u{2}'
      '\u{21C}\u{21A}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21B}\u{3}\u{2}\u{2}\u{2}'
      '\u{21D}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{21E}\u{217}\u{3}\u{2}\u{2}\u{2}'
      '\u{21E}\u{218}\u{3}\u{2}\u{2}\u{2}\u{21E}\u{219}\u{3}\u{2}\u{2}\u{2}'
      '\u{21F}\u{221}\u{3}\u{2}\u{2}\u{2}\u{220}\u{222}\u{7}\u{6C}\u{2}\u{2}'
      '\u{221}\u{220}\u{3}\u{2}\u{2}\u{2}\u{221}\u{222}\u{3}\u{2}\u{2}\u{2}'
      '\u{222}\u{224}\u{3}\u{2}\u{2}\u{2}\u{223}\u{1E6}\u{3}\u{2}\u{2}\u{2}'
      '\u{223}\u{1EF}\u{3}\u{2}\u{2}\u{2}\u{223}\u{1F8}\u{3}\u{2}\u{2}\u{2}'
      '\u{223}\u{1FF}\u{3}\u{2}\u{2}\u{2}\u{223}\u{20B}\u{3}\u{2}\u{2}\u{2}'
      '\u{223}\u{213}\u{3}\u{2}\u{2}\u{2}\u{223}\u{21E}\u{3}\u{2}\u{2}\u{2}'
      '\u{224}\u{23}\u{3}\u{2}\u{2}\u{2}\u{225}\u{226}\u{9}\u{16}\u{2}\u{2}'
      '\u{226}\u{227}\u{7}\u{22}\u{2}\u{2}\u{227}\u{228}\u{5}\u{A}\u{6}\u{2}'
      '\u{228}\u{229}\u{7}\u{23}\u{2}\u{2}\u{229}\u{22D}\u{3}\u{2}\u{2}\u{2}'
      '\u{22A}\u{22B}\u{9}\u{16}\u{2}\u{2}\u{22B}\u{22D}\u{5}\u{A}\u{6}\u{2}'
      '\u{22C}\u{225}\u{3}\u{2}\u{2}\u{2}\u{22C}\u{22A}\u{3}\u{2}\u{2}\u{2}'
      '\u{22D}\u{25}\u{3}\u{2}\u{2}\u{2}\u{22E}\u{22F}\u{5}\u{1A}\u{E}\u{2}'
      '\u{22F}\u{231}\u{5}\u{20}\u{11}\u{2}\u{230}\u{232}\u{7}\u{2F}\u{2}\u{2}'
      '\u{231}\u{230}\u{3}\u{2}\u{2}\u{2}\u{231}\u{232}\u{3}\u{2}\u{2}\u{2}'
      '\u{232}\u{233}\u{3}\u{2}\u{2}\u{2}\u{233}\u{235}\u{5}\u{20}\u{11}\u{2}'
      '\u{234}\u{236}\u{7}\u{2F}\u{2}\u{2}\u{235}\u{234}\u{3}\u{2}\u{2}\u{2}'
      '\u{235}\u{236}\u{3}\u{2}\u{2}\u{2}\u{236}\u{237}\u{3}\u{2}\u{2}\u{2}'
      '\u{237}\u{239}\u{5}\u{20}\u{11}\u{2}\u{238}\u{23A}\u{7}\u{2F}\u{2}\u{2}'
      '\u{239}\u{238}\u{3}\u{2}\u{2}\u{2}\u{239}\u{23A}\u{3}\u{2}\u{2}\u{2}'
      '\u{23A}\u{23C}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{23D}\u{5}\u{24}\u{13}\u{2}'
      '\u{23C}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{23C}\u{23D}\u{3}\u{2}\u{2}\u{2}'
      '\u{23D}\u{257}\u{3}\u{2}\u{2}\u{2}\u{23E}\u{23F}\u{5}\u{1A}\u{E}\u{2}'
      '\u{23F}\u{241}\u{5}\u{20}\u{11}\u{2}\u{240}\u{242}\u{7}\u{2F}\u{2}\u{2}'
      '\u{241}\u{240}\u{3}\u{2}\u{2}\u{2}\u{241}\u{242}\u{3}\u{2}\u{2}\u{2}'
      '\u{242}\u{243}\u{3}\u{2}\u{2}\u{2}\u{243}\u{245}\u{5}\u{20}\u{11}\u{2}'
      '\u{244}\u{246}\u{7}\u{2F}\u{2}\u{2}\u{245}\u{244}\u{3}\u{2}\u{2}\u{2}'
      '\u{245}\u{246}\u{3}\u{2}\u{2}\u{2}\u{246}\u{248}\u{3}\u{2}\u{2}\u{2}'
      '\u{247}\u{249}\u{5}\u{24}\u{13}\u{2}\u{248}\u{247}\u{3}\u{2}\u{2}\u{2}'
      '\u{248}\u{249}\u{3}\u{2}\u{2}\u{2}\u{249}\u{257}\u{3}\u{2}\u{2}\u{2}'
      '\u{24A}\u{24B}\u{5}\u{1A}\u{E}\u{2}\u{24B}\u{24D}\u{5}\u{20}\u{11}\u{2}'
      '\u{24C}\u{24E}\u{7}\u{2F}\u{2}\u{2}\u{24D}\u{24C}\u{3}\u{2}\u{2}\u{2}'
      '\u{24D}\u{24E}\u{3}\u{2}\u{2}\u{2}\u{24E}\u{250}\u{3}\u{2}\u{2}\u{2}'
      '\u{24F}\u{251}\u{5}\u{24}\u{13}\u{2}\u{250}\u{24F}\u{3}\u{2}\u{2}\u{2}'
      '\u{250}\u{251}\u{3}\u{2}\u{2}\u{2}\u{251}\u{257}\u{3}\u{2}\u{2}\u{2}'
      '\u{252}\u{254}\u{5}\u{1A}\u{E}\u{2}\u{253}\u{255}\u{5}\u{24}\u{13}\u{2}'
      '\u{254}\u{253}\u{3}\u{2}\u{2}\u{2}\u{254}\u{255}\u{3}\u{2}\u{2}\u{2}'
      '\u{255}\u{257}\u{3}\u{2}\u{2}\u{2}\u{256}\u{22E}\u{3}\u{2}\u{2}\u{2}'
      '\u{256}\u{23E}\u{3}\u{2}\u{2}\u{2}\u{256}\u{24A}\u{3}\u{2}\u{2}\u{2}'
      '\u{256}\u{252}\u{3}\u{2}\u{2}\u{2}\u{257}\u{27}\u{3}\u{2}\u{2}\u{2}\u{258}'
      '\u{273}\u{9}\u{17}\u{2}\u{2}\u{259}\u{273}\u{9}\u{18}\u{2}\u{2}\u{25A}'
      '\u{273}\u{9}\u{19}\u{2}\u{2}\u{25B}\u{25C}\u{9}\u{1A}\u{2}\u{2}\u{25C}'
      '\u{266}\u{9}\u{1B}\u{2}\u{2}\u{25D}\u{25E}\u{7}\u{86}\u{2}\u{2}\u{25E}'
      '\u{266}\u{9}\u{1C}\u{2}\u{2}\u{25F}\u{266}\u{7}\u{88}\u{2}\u{2}\u{260}'
      '\u{266}\u{7}\u{89}\u{2}\u{2}\u{261}\u{266}\u{7}\u{8A}\u{2}\u{2}\u{262}'
      '\u{266}\u{7}\u{8B}\u{2}\u{2}\u{263}\u{266}\u{7}\u{8C}\u{2}\u{2}\u{264}'
      '\u{266}\u{7}\u{8D}\u{2}\u{2}\u{265}\u{25B}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{25D}\u{3}\u{2}\u{2}\u{2}\u{265}\u{25F}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{260}\u{3}\u{2}\u{2}\u{2}\u{265}\u{261}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{262}\u{3}\u{2}\u{2}\u{2}\u{265}\u{263}\u{3}\u{2}\u{2}\u{2}\u{265}'
      '\u{264}\u{3}\u{2}\u{2}\u{2}\u{266}\u{273}\u{3}\u{2}\u{2}\u{2}\u{267}'
      '\u{273}\u{9}\u{1D}\u{2}\u{2}\u{268}\u{273}\u{9}\u{1E}\u{2}\u{2}\u{269}'
      '\u{273}\u{9}\u{1F}\u{2}\u{2}\u{26A}\u{26B}\u{7}\u{94}\u{2}\u{2}\u{26B}'
      '\u{26F}\u{9}\u{20}\u{2}\u{2}\u{26C}\u{26F}\u{7}\u{97}\u{2}\u{2}\u{26D}'
      '\u{26F}\u{7}\u{98}\u{2}\u{2}\u{26E}\u{26A}\u{3}\u{2}\u{2}\u{2}\u{26E}'
      '\u{26C}\u{3}\u{2}\u{2}\u{2}\u{26E}\u{26D}\u{3}\u{2}\u{2}\u{2}\u{26F}'
      '\u{273}\u{3}\u{2}\u{2}\u{2}\u{270}\u{273}\u{9}\u{21}\u{2}\u{2}\u{271}'
      '\u{273}\u{9}\u{22}\u{2}\u{2}\u{272}\u{258}\u{3}\u{2}\u{2}\u{2}\u{272}'
      '\u{259}\u{3}\u{2}\u{2}\u{2}\u{272}\u{25A}\u{3}\u{2}\u{2}\u{2}\u{272}'
      '\u{265}\u{3}\u{2}\u{2}\u{2}\u{272}\u{267}\u{3}\u{2}\u{2}\u{2}\u{272}'
      '\u{268}\u{3}\u{2}\u{2}\u{2}\u{272}\u{269}\u{3}\u{2}\u{2}\u{2}\u{272}'
      '\u{26E}\u{3}\u{2}\u{2}\u{2}\u{272}\u{270}\u{3}\u{2}\u{2}\u{2}\u{272}'
      '\u{271}\u{3}\u{2}\u{2}\u{2}\u{273}\u{29}\u{3}\u{2}\u{2}\u{2}\u{274}\u{279}'
      '\u{7}\u{1E}\u{2}\u{2}\u{275}\u{279}\u{7}\u{21}\u{2}\u{2}\u{276}\u{279}'
      '\u{9}\u{23}\u{2}\u{2}\u{277}\u{279}\u{9}\u{24}\u{2}\u{2}\u{278}\u{274}'
      '\u{3}\u{2}\u{2}\u{2}\u{278}\u{275}\u{3}\u{2}\u{2}\u{2}\u{278}\u{276}'
      '\u{3}\u{2}\u{2}\u{2}\u{278}\u{277}\u{3}\u{2}\u{2}\u{2}\u{279}\u{2B}\u{3}'
      '\u{2}\u{2}\u{2}\u{27A}\u{27C}\u{9}\u{23}\u{2}\u{2}\u{27B}\u{27D}\u{7}'
      '\u{25}\u{2}\u{2}\u{27C}\u{27B}\u{3}\u{2}\u{2}\u{2}\u{27C}\u{27D}\u{3}'
      '\u{2}\u{2}\u{2}\u{27D}\u{27E}\u{3}\u{2}\u{2}\u{2}\u{27E}\u{282}\u{7}'
      '\u{1E}\u{2}\u{2}\u{27F}\u{280}\u{7}\u{1E}\u{2}\u{2}\u{280}\u{282}\u{7}'
      '\u{9D}\u{2}\u{2}\u{281}\u{27A}\u{3}\u{2}\u{2}\u{2}\u{281}\u{27F}\u{3}'
      '\u{2}\u{2}\u{2}\u{282}\u{29F}\u{3}\u{2}\u{2}\u{2}\u{283}\u{285}\u{9}'
      '\u{23}\u{2}\u{2}\u{284}\u{286}\u{7}\u{25}\u{2}\u{2}\u{285}\u{284}\u{3}'
      '\u{2}\u{2}\u{2}\u{285}\u{286}\u{3}\u{2}\u{2}\u{2}\u{286}\u{287}\u{3}'
      '\u{2}\u{2}\u{2}\u{287}\u{28B}\u{7}\u{21}\u{2}\u{2}\u{288}\u{289}\u{7}'
      '\u{21}\u{2}\u{2}\u{289}\u{28B}\u{7}\u{9D}\u{2}\u{2}\u{28A}\u{283}\u{3}'
      '\u{2}\u{2}\u{2}\u{28A}\u{288}\u{3}\u{2}\u{2}\u{2}\u{28B}\u{29F}\u{3}'
      '\u{2}\u{2}\u{2}\u{28C}\u{28E}\u{9}\u{24}\u{2}\u{2}\u{28D}\u{28F}\u{7}'
      '\u{25}\u{2}\u{2}\u{28E}\u{28D}\u{3}\u{2}\u{2}\u{2}\u{28E}\u{28F}\u{3}'
      '\u{2}\u{2}\u{2}\u{28F}\u{290}\u{3}\u{2}\u{2}\u{2}\u{290}\u{294}\u{7}'
      '\u{1E}\u{2}\u{2}\u{291}\u{292}\u{7}\u{1E}\u{2}\u{2}\u{292}\u{294}\u{7}'
      '\u{9F}\u{2}\u{2}\u{293}\u{28C}\u{3}\u{2}\u{2}\u{2}\u{293}\u{291}\u{3}'
      '\u{2}\u{2}\u{2}\u{294}\u{29F}\u{3}\u{2}\u{2}\u{2}\u{295}\u{297}\u{9}'
      '\u{24}\u{2}\u{2}\u{296}\u{298}\u{7}\u{25}\u{2}\u{2}\u{297}\u{296}\u{3}'
      '\u{2}\u{2}\u{2}\u{297}\u{298}\u{3}\u{2}\u{2}\u{2}\u{298}\u{299}\u{3}'
      '\u{2}\u{2}\u{2}\u{299}\u{29D}\u{7}\u{21}\u{2}\u{2}\u{29A}\u{29B}\u{7}'
      '\u{21}\u{2}\u{2}\u{29B}\u{29D}\u{7}\u{9F}\u{2}\u{2}\u{29C}\u{295}\u{3}'
      '\u{2}\u{2}\u{2}\u{29C}\u{29A}\u{3}\u{2}\u{2}\u{2}\u{29D}\u{29F}\u{3}'
      '\u{2}\u{2}\u{2}\u{29E}\u{281}\u{3}\u{2}\u{2}\u{2}\u{29E}\u{28A}\u{3}'
      '\u{2}\u{2}\u{2}\u{29E}\u{293}\u{3}\u{2}\u{2}\u{2}\u{29E}\u{29C}\u{3}'
      '\u{2}\u{2}\u{2}\u{29F}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{2A0}\u{2A1}\u{9}\u{25}'
      '\u{2}\u{2}\u{2A1}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{2A2}\u{2A3}\u{9}\u{26}'
      '\u{2}\u{2}\u{2A3}\u{31}\u{3}\u{2}\u{2}\u{2}\u{2A4}\u{2A5}\u{9}\u{27}'
      '\u{2}\u{2}\u{2A5}\u{33}\u{3}\u{2}\u{2}\u{2}\u{2A6}\u{2A7}\u{9}\u{28}'
      '\u{2}\u{2}\u{2A7}\u{35}\u{3}\u{2}\u{2}\u{2}\u{2A8}\u{2A9}\u{9}\u{29}'
      '\u{2}\u{2}\u{2A9}\u{37}\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2AB}\u{9}\u{2A}'
      '\u{2}\u{2}\u{2AB}\u{39}\u{3}\u{2}\u{2}\u{2}\u{2AC}\u{2AD}\u{9}\u{2B}'
      '\u{2}\u{2}\u{2AD}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{2AE}\u{2AF}\u{7}\u{B0}'
      '\u{2}\u{2}\u{2AF}\u{2B8}\u{7}\u{24}\u{2}\u{2}\u{2B0}\u{2B8}\u{7}\u{B3}'
      '\u{2}\u{2}\u{2B1}\u{2B2}\u{7}\u{B1}\u{2}\u{2}\u{2B2}\u{2B8}\u{7}\u{24}'
      '\u{2}\u{2}\u{2B3}\u{2B8}\u{7}\u{B4}\u{2}\u{2}\u{2B4}\u{2B5}\u{7}\u{B2}'
      '\u{2}\u{2}\u{2B5}\u{2B8}\u{7}\u{24}\u{2}\u{2}\u{2B6}\u{2B8}\u{7}\u{B5}'
      '\u{2}\u{2}\u{2B7}\u{2AE}\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B0}\u{3}\u{2}'
      '\u{2}\u{2}\u{2B7}\u{2B1}\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B3}\u{3}\u{2}'
      '\u{2}\u{2}\u{2B7}\u{2B4}\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B6}\u{3}\u{2}'
      '\u{2}\u{2}\u{2B8}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{78}\u{40}\u{46}\u{4B}\u{4D}'
      '\u{52}\u{5A}\u{5D}\u{61}\u{67}\u{6C}\u{71}\u{74}\u{77}\u{7B}\u{7E}\u{82}'
      '\u{85}\u{96}\u{9A}\u{9E}\u{A3}\u{A6}\u{AF}\u{BD}\u{C0}\u{DB}\u{E2}\u{E6}'
      '\u{E8}\u{ED}\u{F1}\u{F5}\u{F8}\u{FD}\u{102}\u{106}\u{108}\u{10C}\u{110}'
      '\u{115}\u{119}\u{11B}\u{11F}\u{123}\u{127}\u{129}\u{12D}\u{131}\u{136}'
      '\u{13A}\u{13C}\u{140}\u{144}\u{148}\u{14A}\u{14C}\u{15F}\u{168}\u{16E}'
      '\u{179}\u{17E}\u{184}\u{189}\u{18C}\u{193}\u{198}\u{19B}\u{1A1}\u{1AA}'
      '\u{1B3}\u{1B8}\u{1BA}\u{1BD}\u{1C4}\u{1CB}\u{1D0}\u{1D4}\u{1D7}\u{1E4}'
      '\u{1E9}\u{1ED}\u{1F2}\u{1F6}\u{1FD}\u{205}\u{209}\u{211}\u{215}\u{21C}'
      '\u{21E}\u{221}\u{223}\u{22C}\u{231}\u{235}\u{239}\u{23C}\u{241}\u{245}'
      '\u{248}\u{24D}\u{250}\u{254}\u{256}\u{265}\u{26E}\u{272}\u{278}\u{27C}'
      '\u{281}\u{285}\u{28A}\u{28E}\u{293}\u{297}\u{29C}\u{29E}\u{2B7}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class ScriptContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(HoneyTalkParser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  List<TerminalNode> NEWLINEs() => getTokens(HoneyTalkParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(HoneyTalkParser.TOKEN_NEWLINE, i);
  ScriptContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_script;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitScript(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StatementContext extends ParserRuleContext {
  StatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ActionStatementContext extends ParserRuleContext {
  ActionStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_actionStatement;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ClickTypeContext extends ParserRuleContext {
  ClickTypeContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_clickType;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ComparisonOpContext extends ParserRuleContext {
  ComparisonOpContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comparisonOp;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class TermContext extends ParserRuleContext {
  TermContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_term;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class PropertyContext extends ParserRuleContext {
  PropertyContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_property;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class FunctionContext extends ParserRuleContext {
  FunctionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_function;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class LiteralContext extends ParserRuleContext {
  LiteralContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literal;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class CardinalValueContext extends ParserRuleContext {
  CardinalValueContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_cardinalValue;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitCardinalValue(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OrdinalContext extends ParserRuleContext {
  OrdinalContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ordinal;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitOrdinal(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetIdentContext extends ParserRuleContext {
  Token? _ID;
  var attr = <Token>[];
  WidgetNameContext? widgetName() => getRuleContext<WidgetNameContext>(0);
  WidgetTypeContext? widgetType() => getRuleContext<WidgetTypeContext>(0);
  List<TerminalNode> IDs() => getTokens(HoneyTalkParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(HoneyTalkParser.TOKEN_ID, i);
  WidgetIdentContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetIdent;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetIdent(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameContext extends ParserRuleContext {
  LiteralContext? _literal;
  var name = <LiteralContext>[];
  List<LiteralContext> literals() => getRuleContexts<LiteralContext>();
  LiteralContext? literal(int i) => getRuleContext<LiteralContext>(i);
  WidgetNameModifierContext? widgetNameModifier() =>
      getRuleContext<WidgetNameModifierContext>(0);
  WidgetNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetName;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetName(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameModifierContext extends ParserRuleContext {
  WidgetNameModifierContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetNameModifier;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class WidgetReferenceContext extends ParserRuleContext {
  WidgetReferencePositionContext? widgetReferencePosition() =>
      getRuleContext<WidgetReferencePositionContext>(0);
  TermContext? term() => getRuleContext<TermContext>(0);
  WidgetReferenceContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetReference;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReference(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferencePositionContext extends ParserRuleContext {
  WidgetReferencePositionContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetReferencePosition;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class WidgetWhereContext extends ParserRuleContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  WidgetWhereContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetWhere;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetWhere(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetContext extends ParserRuleContext {
  WidgetIdentContext? widgetIdent() => getRuleContext<WidgetIdentContext>(0);
  List<WidgetReferenceContext> widgetReferences() =>
      getRuleContexts<WidgetReferenceContext>();
  WidgetReferenceContext? widgetReference(int i) =>
      getRuleContext<WidgetReferenceContext>(i);
  WidgetWhereContext? widgetWhere() => getRuleContext<WidgetWhereContext>(0);
  WidgetContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widget;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidget(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeContext extends ParserRuleContext {
  WidgetTypeContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetType;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class SingleDirectionContext extends ParserRuleContext {
  SingleDirectionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_singleDirection;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class DoubleDirectionContext extends ParserRuleContext {
  DoubleDirectionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_doubleDirection;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class CharacterContext extends ParserRuleContext {
  CharacterContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_character;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitCharacter(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WordContext extends ParserRuleContext {
  WordContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_word;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWord(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LineContext extends ParserRuleContext {
  LineContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_line;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLine(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ItemContext extends ParserRuleContext {
  ItemContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_item;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitItem(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OfContext extends ParserRuleContext {
  OfContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_of;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitOf(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ClickContext extends ParserRuleContext {
  ClickContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_click;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitClick(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IsAreContext extends ParserRuleContext {
  IsAreContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_isAre;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitIsAre(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class IsAreNotContext extends ParserRuleContext {
  IsAreNotContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_isAreNot;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitIsAreNot(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StatementActionContext extends StatementContext {
  ActionStatementContext? actionStatement() =>
      getRuleContext<ActionStatementContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  StatementActionContext(StatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitStatementAction(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class StatementExpressionContext extends StatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  StatementExpressionContext(StatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitStatementExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionRestartContext extends ActionStatementContext {
  ActionRestartContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionRestart(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionVerifyContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionVerifyContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionVerify(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionResetContext extends ActionStatementContext {
  ActionResetContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionReset(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionClickContext extends ActionStatementContext {
  ExpressionContext? target;
  ExpressionContext? offset;
  ClickTypeContext? clickType() => getRuleContext<ClickTypeContext>(0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ActionClickContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionClick(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionPrintContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionPrintContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionPrint(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionEnterContext extends ActionStatementContext {
  ExpressionContext? value;
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionEnterContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionEnter(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionSetVariableContext extends ActionStatementContext {
  Token? variable;
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  ActionSetVariableContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionSetVariable(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionWaitContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionWaitContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionWait(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ActionSeeContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionSeeContext(ActionStatementContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitActionSee(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ClickTypeSingleContext extends ClickTypeContext {
  ClickContext? click() => getRuleContext<ClickContext>(0);
  ClickTypeSingleContext(ClickTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitClickTypeSingle(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ClickTypeDoubleContext extends ClickTypeContext {
  ClickContext? click() => getRuleContext<ClickContext>(0);
  ClickTypeDoubleContext(ClickTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitClickTypeDouble(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ClickTypeLongContext extends ClickTypeContext {
  ClickContext? click() => getRuleContext<ClickContext>(0);
  ClickTypeLongContext(ClickTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitClickTypeLong(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ClickTypeRightContext extends ClickTypeContext {
  ClickContext? click() => getRuleContext<ClickContext>(0);
  ClickTypeRightContext(ClickTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitClickTypeRight(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionExistsContext extends ExpressionContext {
  Token? not;
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? THERE_IS_A() => getToken(HoneyTalkParser.TOKEN_THERE_IS_A, 0);
  TerminalNode? THERE_IS_NO() => getToken(HoneyTalkParser.TOKEN_THERE_IS_NO, 0);
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  IsAreNotContext? isAreNot() => getRuleContext<IsAreNotContext>(0);
  ExpressionExistsContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionExists(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionNotContext extends ExpressionContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ExpressionNotContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionNot(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionBinaryOpContext extends ExpressionContext {
  Token? op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionBinaryOpContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionBinaryOp(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionComparisonContext extends ExpressionContext {
  ComparisonOpContext? op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ComparisonOpContext? comparisonOp() => getRuleContext<ComparisonOpContext>(0);
  ExpressionComparisonContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionComparison(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionExpressionContext extends ExpressionContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ExpressionExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionExpression(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionAndContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionAndContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionAnd(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionNegateContext extends ExpressionContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ExpressionNegateContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionNegate(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionPowContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionPowContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionPow(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionOrContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionOrContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionOr(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionTermContext extends ExpressionContext {
  TermContext? term() => getRuleContext<TermContext>(0);
  ExpressionTermContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionIsAttrContext extends ExpressionContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  PropertyContext? property() => getRuleContext<PropertyContext>(0);
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  IsAreNotContext? isAreNot() => getRuleContext<IsAreNotContext>(0);
  ExpressionIsAttrContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionIsAttr(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpNeqContext extends ComparisonOpContext {
  IsAreNotContext? isAreNot() => getRuleContext<IsAreNotContext>(0);
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpNeqContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpNeq(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpLteContext extends ComparisonOpContext {
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpLteContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpLte(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpLtContext extends ComparisonOpContext {
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpLtContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpLt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpGtContext extends ComparisonOpContext {
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpGtContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpGt(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpEqContext extends ComparisonOpContext {
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpEqContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpEq(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ComparisonOpGteContext extends ComparisonOpContext {
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpGteContext(ComparisonOpContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitComparisonOpGte(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermWidgetContext extends TermContext {
  WidgetContext? widget() => getRuleContext<WidgetContext>(0);
  TermWidgetContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermWidget(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermNegateContext extends TermContext {
  TermContext? term() => getRuleContext<TermContext>(0);
  TermNegateContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermNegate(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermTermContext extends TermContext {
  TermContext? term() => getRuleContext<TermContext>(0);
  TermTermContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermTerm(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermSymbolContext extends TermContext {
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  TermSymbolContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermSymbol(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermPropertyContext extends TermContext {
  PropertyContext? property() => getRuleContext<PropertyContext>(0);
  OfContext? of() => getRuleContext<OfContext>(0);
  TermContext? term() => getRuleContext<TermContext>(0);
  TermPropertyContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermProperty(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermFunctionContext extends TermContext {
  FunctionContext? function() => getRuleContext<FunctionContext>(0);
  TermFunctionContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermFunction(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermOrdinalContext extends TermContext {
  OrdinalContext? ordinal() => getRuleContext<OrdinalContext>(0);
  TermContext? term() => getRuleContext<TermContext>(0);
  TermOrdinalContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermOrdinal(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class TermLiteralContext extends TermContext {
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  TermLiteralContext(TermContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitTermLiteral(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropLengthContext extends PropertyContext {
  BuiltinPropLengthContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropLength(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropWidgetTypeContext extends PropertyContext {
  WidgetTypeContext? widgetType() => getRuleContext<WidgetTypeContext>(0);
  BuiltinPropWidgetTypeContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropWidgetType(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropWordsContext extends PropertyContext {
  WordContext? word() => getRuleContext<WordContext>(0);
  BuiltinPropWordsContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropWords(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropCharsContext extends PropertyContext {
  CharacterContext? character() => getRuleContext<CharacterContext>(0);
  BuiltinPropCharsContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropChars(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropItemsContext extends PropertyContext {
  ItemContext? item() => getRuleContext<ItemContext>(0);
  BuiltinPropItemsContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropItems(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class OtherPropertyContext extends PropertyContext {
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  OtherPropertyContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitOtherProperty(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropLinesContext extends PropertyContext {
  LineContext? line() => getRuleContext<LineContext>(0);
  BuiltinPropLinesContext(PropertyContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitBuiltinPropLines(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionCustomContext extends FunctionContext {
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  List<TermContext> terms() => getRuleContexts<TermContext>();
  TermContext? term(int i) => getRuleContext<TermContext>(i);
  FunctionCustomContext(FunctionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitFunctionCustom(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionNowContext extends FunctionContext {
  FunctionNowContext(FunctionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitFunctionNow(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class FunctionFormatContext extends FunctionContext {
  TermContext? date;
  TermContext? sourceFormat;
  TermContext? targetFormat;
  List<TermContext> terms() => getRuleContexts<TermContext>();
  TermContext? term(int i) => getRuleContext<TermContext>(i);
  FunctionFormatContext(FunctionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitFunctionFormat(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralNumberContext extends LiteralContext {
  TerminalNode? NUMBER_LITERAL() =>
      getToken(HoneyTalkParser.TOKEN_NUMBER_LITERAL, 0);
  LiteralNumberContext(LiteralContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLiteralNumber(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralCardinalContext extends LiteralContext {
  CardinalValueContext? cardinalValue() =>
      getRuleContext<CardinalValueContext>(0);
  LiteralCardinalContext(LiteralContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLiteralCardinal(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralStringContext extends LiteralContext {
  TerminalNode? STRING_LITERAL() =>
      getToken(HoneyTalkParser.TOKEN_STRING_LITERAL, 0);
  LiteralStringContext(LiteralContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLiteralString(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class LiteralBoolContext extends LiteralContext {
  TerminalNode? BOOL_LITERAL() =>
      getToken(HoneyTalkParser.TOKEN_BOOL_LITERAL, 0);
  LiteralBoolContext(LiteralContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLiteralBool(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameMatchingContext extends WidgetNameModifierContext {
  WidgetNameMatchingContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameMatching(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameContainingContext extends WidgetNameModifierContext {
  Token? exactly;
  WidgetNameContainingContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameContaining(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameStartingWithContext extends WidgetNameModifierContext {
  Token? exactly;
  WidgetNameStartingWithContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameStartingWith(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameExactlyContext extends WidgetNameModifierContext {
  WidgetNameExactlyContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameExactly(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameEndingWithContext extends WidgetNameModifierContext {
  Token? exactly;
  WidgetNameEndingWithContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameEndingWith(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceHalfContext extends WidgetReferencePositionContext {
  Token? isParent;
  SingleDirectionContext? singleDirection() =>
      getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceHalfContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceHalf(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceFractionContext extends WidgetReferencePositionContext {
  Token? f;
  Token? isParent;
  OrdinalContext? ordinal() => getRuleContext<OrdinalContext>(0);
  SingleDirectionContext? singleDirection() =>
      getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceFractionContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceFraction(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceInsideContext extends WidgetReferencePositionContext {
  Token? isParent;
  WidgetReferenceInsideContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceInside(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceCornerContext extends WidgetReferencePositionContext {
  Token? isParent;
  DoubleDirectionContext? doubleDirection() =>
      getRuleContext<DoubleDirectionContext>(0);
  WidgetReferenceCornerContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceCorner(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceToContext extends WidgetReferencePositionContext {
  Token? below;
  Token? above;
  SingleDirectionContext? singleDirection() =>
      getRuleContext<SingleDirectionContext>(0);
  DoubleDirectionContext? doubleDirection() =>
      getRuleContext<DoubleDirectionContext>(0);
  WidgetReferenceToContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceTo(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferenceEdgeContext extends WidgetReferencePositionContext {
  Token? isParent;
  SingleDirectionContext? singleDirection() =>
      getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceEdgeContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferenceEdge(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetReferencePercentageContext extends WidgetReferencePositionContext {
  Token? isParent;
  SingleDirectionContext? singleDirection() =>
      getRuleContext<SingleDirectionContext>(0);
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  WidgetReferencePercentageContext(WidgetReferencePositionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetReferencePercentage(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeButtonContext extends WidgetTypeContext {
  WidgetTypeButtonContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeButton(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeImageContext extends WidgetTypeContext {
  WidgetTypeImageContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeImage(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeSliderContext extends WidgetTypeContext {
  WidgetTypeSliderContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeSlider(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeCheckBoxContext extends WidgetTypeContext {
  WidgetTypeCheckBoxContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeCheckBox(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeWidgetContext extends WidgetTypeContext {
  WidgetTypeWidgetContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeWidget(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeLinkContext extends WidgetTypeContext {
  WidgetTypeLinkContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeLink(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeTextFieldContext extends WidgetTypeContext {
  WidgetTypeTextFieldContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeTextField(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeHeaderContext extends WidgetTypeContext {
  WidgetTypeHeaderContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeHeader(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeSwitchContext extends WidgetTypeContext {
  WidgetTypeSwitchContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeSwitch(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetTypeListContext extends WidgetTypeContext {
  WidgetTypeListContext(WidgetTypeContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetTypeList(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SingleDirectionBottomContext extends SingleDirectionContext {
  SingleDirectionBottomContext(SingleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitSingleDirectionBottom(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SingleDirectionRightContext extends SingleDirectionContext {
  SingleDirectionRightContext(SingleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitSingleDirectionRight(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SingleDirectionLeftContext extends SingleDirectionContext {
  SingleDirectionLeftContext(SingleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitSingleDirectionLeft(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class SingleDirectionTopContext extends SingleDirectionContext {
  SingleDirectionTopContext(SingleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitSingleDirectionTop(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DoubleDirectionTopRightContext extends DoubleDirectionContext {
  DoubleDirectionTopRightContext(DoubleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitDoubleDirectionTopRight(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DoubleDirectionBottomLeftContext extends DoubleDirectionContext {
  DoubleDirectionBottomLeftContext(DoubleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitDoubleDirectionBottomLeft(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DoubleDirectionTopLeftContext extends DoubleDirectionContext {
  DoubleDirectionTopLeftContext(DoubleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitDoubleDirectionTopLeft(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class DoubleDirectionBottomRightContext extends DoubleDirectionContext {
  DoubleDirectionBottomRightContext(DoubleDirectionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitDoubleDirectionBottomRight(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}
