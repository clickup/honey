// Generated from HoneyTalk.g4 by ANTLR 4.9.3
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkVisitor.dart';
import 'HoneyTalkBaseVisitor.dart';

const int RULE_script = 0,
    RULE_statement = 1,
    RULE_maybe = 2,
    RULE_actionStatement = 3,
    RULE_clickType = 4,
    RULE_expression = 5,
    RULE_comparisonOp = 6,
    RULE_term = 7,
    RULE_property = 8,
    RULE_function = 9,
    RULE_literal = 10,
    RULE_cardinalValue = 11,
    RULE_ordinal = 12,
    RULE_widgetIdent = 13,
    RULE_widgetName = 14,
    RULE_widgetNameModifier = 15,
    RULE_widgetReference = 16,
    RULE_widgetReferencePosition = 17,
    RULE_widgetWhere = 18,
    RULE_widget = 19,
    RULE_widgetType = 20,
    RULE_singleDirection = 21,
    RULE_doubleDirection = 22,
    RULE_character = 23,
    RULE_word = 24,
    RULE_line = 25,
    RULE_item = 26,
    RULE_of = 27,
    RULE_click = 28,
    RULE_isAre = 29,
    RULE_isAreNot = 30;

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
      TOKEN_T__179 = 180,
      TOKEN_T__180 = 181,
      TOKEN_T__181 = 182,
      TOKEN_T__182 = 183,
      TOKEN_T__183 = 184,
      TOKEN_INTEGER_LITERAL = 185,
      TOKEN_NUMBER_LITERAL = 186,
      TOKEN_BOOL_LITERAL = 187,
      TOKEN_STRING_LITERAL = 188,
      TOKEN_THE = 189,
      TOKEN_A_AN = 190,
      TOKEN_ID = 191,
      TOKEN_ALPHA = 192,
      TOKEN_DIGIT = 193,
      TOKEN_COMMENT = 194,
      TOKEN_MULTILINE_COMMENT = 195,
      TOKEN_NEWLINE = 196,
      TOKEN_WHITESPACE = 197,
      TOKEN_THERE_IS_A = 198,
      TOKEN_THERE_IS_NO = 199,
      TOKEN_UNLEXED_CHAR = 200;

  @override
  final List<String> ruleNames = [
    'script',
    'statement',
    'maybe',
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
    "'maybe'",
    "'try'",
    "'to'",
    "'optional'",
    "'optionally'",
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
    "'<'",
    "'<='",
    "'lte'",
    "'less'",
    "'>'",
    "'lt'",
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
    "'edittexts'",
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
    "'push'",
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
    null,
    null,
    null,
    null,
    null,
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
    "MULTILINE_COMMENT",
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
      state = 70;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 62;
          statement();
          state = 64;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__0) {
            state = 63;
            match(TOKEN_T__0);
          }

          state = 66;
          match(TOKEN_NEWLINE);
        }
        state = 72;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      }
      state = 77;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__9) |
                          (BigInt.one << TOKEN_T__10) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__16) |
                          (BigInt.one << TOKEN_T__17) |
                          (BigInt.one << TOKEN_T__19) |
                          (BigInt.one << TOKEN_T__20) |
                          (BigInt.one << TOKEN_T__23) |
                          (BigInt.one << TOKEN_T__25) |
                          (BigInt.one << TOKEN_T__26) |
                          (BigInt.one << TOKEN_T__28) |
                          (BigInt.one << TOKEN_T__29) |
                          (BigInt.one << TOKEN_T__30) |
                          (BigInt.one << TOKEN_T__31) |
                          (BigInt.one << TOKEN_T__32) |
                          (BigInt.one << TOKEN_T__33) |
                          (BigInt.one << TOKEN_T__34) |
                          (BigInt.one << TOKEN_T__35) |
                          (BigInt.one << TOKEN_T__37) |
                          (BigInt.one << TOKEN_T__38))) !=
                  BigInt.zero) ||
          ((((_la - 68)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 68)) &
                      ((BigInt.one << (TOKEN_T__67 - 68)) |
                          (BigInt.one << (TOKEN_T__68 - 68)) |
                          (BigInt.one << (TOKEN_T__69 - 68)) |
                          (BigInt.one << (TOKEN_T__70 - 68)) |
                          (BigInt.one << (TOKEN_T__72 - 68)) |
                          (BigInt.one << (TOKEN_T__74 - 68)) |
                          (BigInt.one << (TOKEN_T__75 - 68)) |
                          (BigInt.one << (TOKEN_T__76 - 68)) |
                          (BigInt.one << (TOKEN_T__77 - 68)) |
                          (BigInt.one << (TOKEN_T__78 - 68)) |
                          (BigInt.one << (TOKEN_T__79 - 68)) |
                          (BigInt.one << (TOKEN_T__80 - 68)) |
                          (BigInt.one << (TOKEN_T__81 - 68)) |
                          (BigInt.one << (TOKEN_T__82 - 68)) |
                          (BigInt.one << (TOKEN_T__83 - 68)) |
                          (BigInt.one << (TOKEN_T__84 - 68)) |
                          (BigInt.one << (TOKEN_T__85 - 68)) |
                          (BigInt.one << (TOKEN_T__86 - 68)) |
                          (BigInt.one << (TOKEN_T__87 - 68)) |
                          (BigInt.one << (TOKEN_T__88 - 68)) |
                          (BigInt.one << (TOKEN_T__89 - 68)) |
                          (BigInt.one << (TOKEN_T__90 - 68)) |
                          (BigInt.one << (TOKEN_T__91 - 68)) |
                          (BigInt.one << (TOKEN_T__92 - 68)) |
                          (BigInt.one << (TOKEN_T__93 - 68)) |
                          (BigInt.one << (TOKEN_T__94 - 68)) |
                          (BigInt.one << (TOKEN_T__95 - 68)) |
                          (BigInt.one << (TOKEN_T__96 - 68)) |
                          (BigInt.one << (TOKEN_T__97 - 68)) |
                          (BigInt.one << (TOKEN_T__98 - 68)) |
                          (BigInt.one << (TOKEN_T__99 - 68)) |
                          (BigInt.one << (TOKEN_T__100 - 68)) |
                          (BigInt.one << (TOKEN_T__101 - 68)) |
                          (BigInt.one << (TOKEN_T__102 - 68)) |
                          (BigInt.one << (TOKEN_T__103 - 68)) |
                          (BigInt.one << (TOKEN_T__104 - 68)) |
                          (BigInt.one << (TOKEN_T__105 - 68)) |
                          (BigInt.one << (TOKEN_T__106 - 68)) |
                          (BigInt.one << (TOKEN_T__123 - 68)) |
                          (BigInt.one << (TOKEN_T__124 - 68)) |
                          (BigInt.one << (TOKEN_T__125 - 68)) |
                          (BigInt.one << (TOKEN_T__126 - 68)) |
                          (BigInt.one << (TOKEN_T__127 - 68)) |
                          (BigInt.one << (TOKEN_T__128 - 68)) |
                          (BigInt.one << (TOKEN_T__129 - 68)) |
                          (BigInt.one << (TOKEN_T__130 - 68)))) !=
                  BigInt.zero) ||
          ((((_la - 132)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 132)) &
                      ((BigInt.one << (TOKEN_T__131 - 132)) |
                          (BigInt.one << (TOKEN_T__132 - 132)) |
                          (BigInt.one << (TOKEN_T__135 - 132)) |
                          (BigInt.one << (TOKEN_T__137 - 132)) |
                          (BigInt.one << (TOKEN_T__138 - 132)) |
                          (BigInt.one << (TOKEN_T__139 - 132)) |
                          (BigInt.one << (TOKEN_T__140 - 132)) |
                          (BigInt.one << (TOKEN_T__141 - 132)) |
                          (BigInt.one << (TOKEN_T__142 - 132)) |
                          (BigInt.one << (TOKEN_T__143 - 132)) |
                          (BigInt.one << (TOKEN_T__144 - 132)) |
                          (BigInt.one << (TOKEN_T__145 - 132)) |
                          (BigInt.one << (TOKEN_T__146 - 132)) |
                          (BigInt.one << (TOKEN_T__147 - 132)) |
                          (BigInt.one << (TOKEN_T__148 - 132)) |
                          (BigInt.one << (TOKEN_T__149 - 132)) |
                          (BigInt.one << (TOKEN_T__152 - 132)) |
                          (BigInt.one << (TOKEN_T__153 - 132)) |
                          (BigInt.one << (TOKEN_T__154 - 132)) |
                          (BigInt.one << (TOKEN_T__155 - 132)) |
                          (BigInt.one << (TOKEN_T__156 - 132)) |
                          (BigInt.one << (TOKEN_T__157 - 132)) |
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
                          (BigInt.one << (TOKEN_T__173 - 132)) |
                          (BigInt.one << (TOKEN_T__174 - 132)) |
                          (BigInt.one << (TOKEN_T__175 - 132)) |
                          (BigInt.one << (TOKEN_T__176 - 132)) |
                          (BigInt.one << (TOKEN_T__177 - 132)) |
                          (BigInt.one << (TOKEN_NUMBER_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_BOOL_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_STRING_LITERAL - 132)) |
                          (BigInt.one << (TOKEN_ID - 132)))) !=
                  BigInt.zero) ||
          _la == TOKEN_THERE_IS_A ||
          _la == TOKEN_THERE_IS_NO) {
        state = 73;
        statement();
        state = 75;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__0) {
          state = 74;
          match(TOKEN_T__0);
        }
      }

      state = 82;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 79;
        match(TOKEN_NEWLINE);
        state = 84;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 85;
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
      state = 99;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
        case 1:
          _localctx = StatementActionContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 88;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6))) !=
                  BigInt.zero)) {
            state = 87;
            maybe();
          }

          state = 90;
          actionStatement();
          state = 93;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__1) {
            state = 91;
            match(TOKEN_T__1);
            state = 92;
            expression(0);
          }

          break;
        case 2:
          _localctx = StatementExpressionContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 96;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6))) !=
                  BigInt.zero)) {
            state = 95;
            maybe();
          }

          state = 98;
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

  MaybeContext maybe() {
    dynamic _localctx = MaybeContext(context, state);
    enterRule(_localctx, 4, RULE_maybe);
    int _la;
    try {
      state = 108;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__2:
          enterOuterAlt(_localctx, 1);
          state = 101;
          match(TOKEN_T__2);
          break;
        case TOKEN_T__3:
          enterOuterAlt(_localctx, 2);
          state = 102;
          match(TOKEN_T__3);
          state = 104;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 103;
            match(TOKEN_T__4);
          }

          break;
        case TOKEN_T__5:
          enterOuterAlt(_localctx, 3);
          state = 106;
          match(TOKEN_T__5);
          break;
        case TOKEN_T__6:
          enterOuterAlt(_localctx, 4);
          state = 107;
          match(TOKEN_T__6);
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
    enterRule(_localctx, 6, RULE_actionStatement);
    int _la;
    try {
      state = 178;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 24, context)) {
        case 1:
          _localctx = ActionVerifyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 110;
          match(TOKEN_T__7);
          state = 112;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__8) {
            state = 111;
            match(TOKEN_T__8);
          }

          state = 114;
          expression(0);
          break;
        case 2:
          _localctx = ActionSeeContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 118;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__9:
              state = 115;
              match(TOKEN_T__9);
              break;
            case TOKEN_T__10:
              state = 116;
              match(TOKEN_T__10);
              state = 117;
              match(TOKEN_T__11);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 120;
          expression(0);
          break;
        case 3:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 121;
          clickType();
          state = 123;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__12) {
            state = 122;
            match(TOKEN_T__12);
          }

          state = 125;
          _localctx.target = expression(0);
          state = 134;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__13) |
                          (BigInt.one << TOKEN_T__14))) !=
                  BigInt.zero)) {
            state = 131;
            errorHandler.sync(this);
            switch (tokenStream.LA(1)!) {
              case TOKEN_T__11:
                state = 126;
                match(TOKEN_T__11);
                break;
              case TOKEN_T__13:
              case TOKEN_T__14:
                state = 128;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__13) {
                  state = 127;
                  match(TOKEN_T__13);
                }

                state = 130;
                match(TOKEN_T__14);
                break;
              default:
                throw NoViableAltException(this);
            }
            state = 133;
            _localctx.offset = expression(0);
          }

          break;
        case 4:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 136;
          clickType();
          state = 141;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (((((_la - 13)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 13)) &
                          ((BigInt.one << (TOKEN_T__12 - 13)) |
                              (BigInt.one << (TOKEN_T__35 - 13)) |
                              (BigInt.one << (TOKEN_T__37 - 13)) |
                              (BigInt.one << (TOKEN_T__38 - 13)) |
                              (BigInt.one << (TOKEN_T__67 - 13)) |
                              (BigInt.one << (TOKEN_T__68 - 13)) |
                              (BigInt.one << (TOKEN_T__69 - 13)) |
                              (BigInt.one << (TOKEN_T__70 - 13)) |
                              (BigInt.one << (TOKEN_T__72 - 13)) |
                              (BigInt.one << (TOKEN_T__74 - 13)) |
                              (BigInt.one << (TOKEN_T__75 - 13)))) !=
                      BigInt.zero) ||
              ((((_la - 77)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 77)) &
                          ((BigInt.one << (TOKEN_T__76 - 77)) |
                              (BigInt.one << (TOKEN_T__77 - 77)) |
                              (BigInt.one << (TOKEN_T__78 - 77)) |
                              (BigInt.one << (TOKEN_T__79 - 77)) |
                              (BigInt.one << (TOKEN_T__80 - 77)) |
                              (BigInt.one << (TOKEN_T__81 - 77)) |
                              (BigInt.one << (TOKEN_T__82 - 77)) |
                              (BigInt.one << (TOKEN_T__83 - 77)) |
                              (BigInt.one << (TOKEN_T__84 - 77)) |
                              (BigInt.one << (TOKEN_T__85 - 77)) |
                              (BigInt.one << (TOKEN_T__86 - 77)) |
                              (BigInt.one << (TOKEN_T__87 - 77)) |
                              (BigInt.one << (TOKEN_T__88 - 77)) |
                              (BigInt.one << (TOKEN_T__89 - 77)) |
                              (BigInt.one << (TOKEN_T__90 - 77)) |
                              (BigInt.one << (TOKEN_T__91 - 77)) |
                              (BigInt.one << (TOKEN_T__92 - 77)) |
                              (BigInt.one << (TOKEN_T__93 - 77)) |
                              (BigInt.one << (TOKEN_T__94 - 77)) |
                              (BigInt.one << (TOKEN_T__95 - 77)) |
                              (BigInt.one << (TOKEN_T__96 - 77)) |
                              (BigInt.one << (TOKEN_T__97 - 77)) |
                              (BigInt.one << (TOKEN_T__98 - 77)) |
                              (BigInt.one << (TOKEN_T__99 - 77)) |
                              (BigInt.one << (TOKEN_T__100 - 77)) |
                              (BigInt.one << (TOKEN_T__101 - 77)) |
                              (BigInt.one << (TOKEN_T__102 - 77)) |
                              (BigInt.one << (TOKEN_T__103 - 77)) |
                              (BigInt.one << (TOKEN_T__104 - 77)) |
                              (BigInt.one << (TOKEN_T__105 - 77)) |
                              (BigInt.one << (TOKEN_T__106 - 77)) |
                              (BigInt.one << (TOKEN_T__123 - 77)) |
                              (BigInt.one << (TOKEN_T__124 - 77)) |
                              (BigInt.one << (TOKEN_T__125 - 77)) |
                              (BigInt.one << (TOKEN_T__126 - 77)) |
                              (BigInt.one << (TOKEN_T__127 - 77)) |
                              (BigInt.one << (TOKEN_T__128 - 77)) |
                              (BigInt.one << (TOKEN_T__129 - 77)) |
                              (BigInt.one << (TOKEN_T__130 - 77)) |
                              (BigInt.one << (TOKEN_T__131 - 77)) |
                              (BigInt.one << (TOKEN_T__132 - 77)) |
                              (BigInt.one << (TOKEN_T__135 - 77)) |
                              (BigInt.one << (TOKEN_T__137 - 77)) |
                              (BigInt.one << (TOKEN_T__138 - 77)) |
                              (BigInt.one << (TOKEN_T__139 - 77)))) !=
                      BigInt.zero) ||
              ((((_la - 141)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 141)) &
                          ((BigInt.one << (TOKEN_T__140 - 141)) |
                              (BigInt.one << (TOKEN_T__141 - 141)) |
                              (BigInt.one << (TOKEN_T__142 - 141)) |
                              (BigInt.one << (TOKEN_T__143 - 141)) |
                              (BigInt.one << (TOKEN_T__144 - 141)) |
                              (BigInt.one << (TOKEN_T__145 - 141)) |
                              (BigInt.one << (TOKEN_T__146 - 141)) |
                              (BigInt.one << (TOKEN_T__147 - 141)) |
                              (BigInt.one << (TOKEN_T__148 - 141)) |
                              (BigInt.one << (TOKEN_T__149 - 141)) |
                              (BigInt.one << (TOKEN_T__152 - 141)) |
                              (BigInt.one << (TOKEN_T__153 - 141)) |
                              (BigInt.one << (TOKEN_T__154 - 141)) |
                              (BigInt.one << (TOKEN_T__155 - 141)) |
                              (BigInt.one << (TOKEN_T__156 - 141)) |
                              (BigInt.one << (TOKEN_T__157 - 141)) |
                              (BigInt.one << (TOKEN_T__162 - 141)) |
                              (BigInt.one << (TOKEN_T__163 - 141)) |
                              (BigInt.one << (TOKEN_T__164 - 141)) |
                              (BigInt.one << (TOKEN_T__165 - 141)) |
                              (BigInt.one << (TOKEN_T__166 - 141)) |
                              (BigInt.one << (TOKEN_T__167 - 141)) |
                              (BigInt.one << (TOKEN_T__168 - 141)) |
                              (BigInt.one << (TOKEN_T__169 - 141)) |
                              (BigInt.one << (TOKEN_T__170 - 141)) |
                              (BigInt.one << (TOKEN_T__171 - 141)) |
                              (BigInt.one << (TOKEN_NUMBER_LITERAL - 141)) |
                              (BigInt.one << (TOKEN_BOOL_LITERAL - 141)) |
                              (BigInt.one << (TOKEN_STRING_LITERAL - 141)) |
                              (BigInt.one << (TOKEN_ID - 141)) |
                              (BigInt.one << (TOKEN_THERE_IS_A - 141)) |
                              (BigInt.one << (TOKEN_THERE_IS_NO - 141)))) !=
                      BigInt.zero)) {
            state = 138;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__12) {
              state = 137;
              match(TOKEN_T__12);
            }

            state = 140;
            _localctx.target = expression(0);
          }

          state = 148;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__11:
              state = 143;
              match(TOKEN_T__11);
              break;
            case TOKEN_T__13:
            case TOKEN_T__14:
              state = 145;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__13) {
                state = 144;
                match(TOKEN_T__13);
              }

              state = 147;
              match(TOKEN_T__14);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 150;
          _localctx.offset = expression(0);
          break;
        case 5:
          _localctx = ActionEnterContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 152;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__15 || _la == TOKEN_T__16)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 153;
          _localctx.value = expression(0);
          break;
        case 6:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 154;
          match(TOKEN_T__17);
          state = 155;
          _localctx.variable = match(TOKEN_ID);
          state = 156;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__18)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 157;
          expression(0);
          break;
        case 7:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 158;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__19 || _la == TOKEN_T__20)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 159;
          expression(0);
          state = 160;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__21 || _la == TOKEN_T__22)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 161;
          _localctx.variable = match(TOKEN_ID);
          break;
        case 8:
          _localctx = ActionRestartContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 163;
          match(TOKEN_T__23);
          state = 165;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__24) {
            state = 164;
            match(TOKEN_T__24);
          }

          break;
        case 9:
          _localctx = ActionResetContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 167;
          match(TOKEN_T__25);
          state = 169;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__24) {
            state = 168;
            match(TOKEN_T__24);
          }

          break;
        case 10:
          _localctx = ActionWaitContext(_localctx);
          enterOuterAlt(_localctx, 10);
          state = 171;
          match(TOKEN_T__26);
          state = 173;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__27) {
            state = 172;
            match(TOKEN_T__27);
          }

          state = 175;
          expression(0);
          break;
        case 11:
          _localctx = ActionPrintContext(_localctx);
          enterOuterAlt(_localctx, 11);
          state = 176;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__28) |
                          (BigInt.one << TOKEN_T__29) |
                          (BigInt.one << TOKEN_T__30))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 177;
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
    enterRule(_localctx, 8, RULE_clickType);
    int _la;
    try {
      state = 190;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__31:
        case TOKEN_T__172:
        case TOKEN_T__173:
        case TOKEN_T__174:
        case TOKEN_T__175:
        case TOKEN_T__176:
        case TOKEN_T__177:
          _localctx = ClickTypeSingleContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 181;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__31) {
            state = 180;
            match(TOKEN_T__31);
          }

          state = 183;
          click();
          break;
        case TOKEN_T__32:
          _localctx = ClickTypeDoubleContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 184;
          match(TOKEN_T__32);
          state = 185;
          click();
          break;
        case TOKEN_T__33:
          _localctx = ClickTypeLongContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 186;
          match(TOKEN_T__33);
          state = 187;
          click();
          break;
        case TOKEN_T__34:
          _localctx = ClickTypeRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 188;
          match(TOKEN_T__34);
          state = 189;
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
    var _startState = 10;
    enterRecursionRule(_localctx, 10, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 207;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
        case 1:
          _localctx = ExpressionExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 193;
          match(TOKEN_T__35);
          state = 194;
          expression(0);
          state = 195;
          match(TOKEN_T__36);
          break;
        case 2:
          _localctx = ExpressionTermContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 197;
          term();
          break;
        case 3:
          _localctx = ExpressionNotContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 198;
          match(TOKEN_T__37);
          state = 199;
          expression(12);
          break;
        case 4:
          _localctx = ExpressionNegateContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 200;
          match(TOKEN_T__38);
          state = 201;
          expression(11);
          break;
        case 5:
          _localctx = ExpressionExistsContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 204;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_THERE_IS_A:
              state = 202;
              match(TOKEN_THERE_IS_A);
              break;
            case TOKEN_THERE_IS_NO:
              state = 203;
              _localctx.not = match(TOKEN_THERE_IS_NO);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 206;
          expression(10);
          break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 247;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 245;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
            case 1:
              _localctx = ExpressionPowContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 209;
              if (!(precpred(context, 8))) {
                throw FailedPredicateException(this, "precpred(context, 8)");
              }
              state = 210;
              match(TOKEN_T__42);
              state = 211;
              expression(9);
              break;
            case 2:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 212;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }
              state = 213;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__43 || _la == TOKEN_T__44)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 214;
              expression(8);
              break;
            case 3:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 215;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }
              state = 216;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__38 || _la == TOKEN_T__45)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 217;
              expression(7);
              break;
            case 4:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 218;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 219;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__46 || _la == TOKEN_T__47)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 220;
              expression(6);
              break;
            case 5:
              _localctx = ExpressionComparisonContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 221;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 222;
              _localctx.op = comparisonOp();
              state = 223;
              expression(5);
              break;
            case 6:
              _localctx = ExpressionAndContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 225;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 226;
              match(TOKEN_T__48);
              state = 227;
              expression(3);
              break;
            case 7:
              _localctx = ExpressionOrContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 228;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 229;
              match(TOKEN_T__49);
              state = 230;
              expression(2);
              break;
            case 8:
              _localctx = ExpressionExistsContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 231;
              if (!(precpred(context, 9))) {
                throw FailedPredicateException(this, "precpred(context, 9)");
              }
              state = 234;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 29, context)) {
                case 1:
                  state = 232;
                  isAre();
                  break;
                case 2:
                  state = 233;
                  isAreNot();
                  break;
              }
              state = 236;
              _la = tokenStream.LA(1)!;
              if (!((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_T__39) |
                              (BigInt.one << TOKEN_T__40) |
                              (BigInt.one << TOKEN_T__41))) !=
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
              state = 238;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 241;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
                case 1:
                  state = 239;
                  isAre();
                  break;
                case 2:
                  state = 240;
                  isAreNot();
                  break;
              }
              state = 243;
              property();
              break;
          }
        }
        state = 249;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
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
    enterRule(_localctx, 12, RULE_comparisonOp);
    int _la;
    try {
      state = 347;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 59, context)) {
        case 1:
          _localctx = ComparisonOpEqContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 263;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
            case 1:
              state = 250;
              match(TOKEN_T__50);
              break;
            case 2:
              state = 252;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 251;
                isAre();
              }

              state = 254;
              match(TOKEN_T__51);
              break;
            case 3:
              state = 256;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 255;
                isAre();
              }

              state = 258;
              match(TOKEN_T__52);
              state = 260;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 259;
                match(TOKEN_T__4);
              }

              break;
            case 4:
              state = 262;
              match(TOKEN_T__53);
              break;
          }
          break;
        case 2:
          _localctx = ComparisonOpNeqContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 279;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
            case 1:
              state = 265;
              match(TOKEN_T__54);
              break;
            case 2:
              state = 266;
              match(TOKEN_T__55);
              break;
            case 3:
              state = 268;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 267;
                isAre();
              }

              state = 270;
              match(TOKEN_T__56);
              break;
            case 4:
              state = 273;
              errorHandler.sync(this);
              switch (tokenStream.LA(1)!) {
                case TOKEN_T__178:
                case TOKEN_T__179:
                case TOKEN_T__180:
                case TOKEN_T__181:
                case TOKEN_T__182:
                case TOKEN_T__183:
                  state = 271;
                  isAreNot();
                  break;
                case TOKEN_T__37:
                  state = 272;
                  match(TOKEN_T__37);
                  break;
                default:
                  throw NoViableAltException(this);
              }
              state = 275;
              match(TOKEN_T__52);
              state = 277;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 276;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 3:
          _localctx = ComparisonOpGteContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 298;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 45, context)) {
            case 1:
              state = 281;
              match(TOKEN_T__57);
              break;
            case 2:
              state = 283;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 282;
                isAre();
              }

              state = 285;
              match(TOKEN_T__58);
              break;
            case 3:
              state = 287;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 286;
                isAre();
              }

              state = 289;
              match(TOKEN_T__59);
              state = 290;
              match(TOKEN_T__60);
              state = 292;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__49) {
                state = 291;
                match(TOKEN_T__49);
              }

              state = 294;
              match(TOKEN_T__52);
              state = 296;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 295;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 4:
          _localctx = ComparisonOpGtContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 312;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 49, context)) {
            case 1:
              state = 300;
              match(TOKEN_T__61);
              break;
            case 2:
              state = 302;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 301;
                isAre();
              }

              state = 304;
              match(TOKEN_T__58);
              break;
            case 3:
              state = 306;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 305;
                isAre();
              }

              state = 308;
              match(TOKEN_T__59);
              state = 310;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__60) {
                state = 309;
                match(TOKEN_T__60);
              }

              break;
          }
          break;
        case 5:
          _localctx = ComparisonOpLteContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 331;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 54, context)) {
            case 1:
              state = 314;
              match(TOKEN_T__62);
              break;
            case 2:
              state = 316;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 315;
                isAre();
              }

              state = 318;
              match(TOKEN_T__63);
              break;
            case 3:
              state = 320;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 319;
                isAre();
              }

              state = 322;
              match(TOKEN_T__64);
              state = 323;
              match(TOKEN_T__60);
              state = 325;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__49) {
                state = 324;
                match(TOKEN_T__49);
              }

              state = 327;
              match(TOKEN_T__52);
              state = 329;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 328;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 6:
          _localctx = ComparisonOpLtContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 345;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 58, context)) {
            case 1:
              state = 333;
              match(TOKEN_T__65);
              break;
            case 2:
              state = 335;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 334;
                isAre();
              }

              state = 337;
              match(TOKEN_T__66);
              break;
            case 3:
              state = 339;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 179)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 179)) &
                          ((BigInt.one << (TOKEN_T__178 - 179)) |
                              (BigInt.one << (TOKEN_T__179 - 179)) |
                              (BigInt.one << (TOKEN_T__180 - 179)))) !=
                      BigInt.zero)) {
                state = 338;
                isAre();
              }

              state = 341;
              match(TOKEN_T__64);
              state = 343;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__60) {
                state = 342;
                match(TOKEN_T__60);
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
    enterRule(_localctx, 14, RULE_term);
    try {
      state = 366;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 60, context)) {
        case 1:
          _localctx = TermTermContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 349;
          match(TOKEN_T__35);
          state = 350;
          term();
          state = 351;
          match(TOKEN_T__36);
          break;
        case 2:
          _localctx = TermLiteralContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 353;
          literal();
          break;
        case 3:
          _localctx = TermNegateContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 354;
          match(TOKEN_T__38);
          state = 355;
          term();
          break;
        case 4:
          _localctx = TermFunctionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 356;
          function();
          break;
        case 5:
          _localctx = TermOrdinalContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 357;
          ordinal();
          state = 358;
          term();
          break;
        case 6:
          _localctx = TermWidgetContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 360;
          widget();
          break;
        case 7:
          _localctx = TermPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 361;
          property();
          state = 362;
          of();
          state = 363;
          term();
          break;
        case 8:
          _localctx = TermSymbolContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 365;
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
    enterRule(_localctx, 16, RULE_property);
    int _la;
    try {
      state = 375;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__67:
        case TOKEN_T__68:
        case TOKEN_T__69:
          _localctx = BuiltinPropLengthContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 368;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 68)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 68)) &
                      ((BigInt.one << (TOKEN_T__67 - 68)) |
                          (BigInt.one << (TOKEN_T__68 - 68)) |
                          (BigInt.one << (TOKEN_T__69 - 68)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__162:
        case TOKEN_T__163:
        case TOKEN_T__164:
        case TOKEN_T__165:
          _localctx = BuiltinPropCharsContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 369;
          character();
          break;
        case TOKEN_T__170:
        case TOKEN_T__171:
          _localctx = BuiltinPropItemsContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 370;
          item();
          break;
        case TOKEN_T__166:
        case TOKEN_T__167:
          _localctx = BuiltinPropWordsContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 371;
          word();
          break;
        case TOKEN_T__168:
        case TOKEN_T__169:
          _localctx = BuiltinPropLinesContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 372;
          line();
          break;
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__129:
        case TOKEN_T__130:
        case TOKEN_T__131:
        case TOKEN_T__132:
        case TOKEN_T__135:
        case TOKEN_T__137:
        case TOKEN_T__138:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__141:
        case TOKEN_T__142:
        case TOKEN_T__143:
        case TOKEN_T__144:
        case TOKEN_T__145:
        case TOKEN_T__146:
        case TOKEN_T__147:
        case TOKEN_T__148:
        case TOKEN_T__149:
        case TOKEN_T__152:
        case TOKEN_T__153:
        case TOKEN_T__154:
        case TOKEN_T__155:
        case TOKEN_T__156:
        case TOKEN_T__157:
          _localctx = BuiltinPropWidgetTypeContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 373;
          widgetType();
          break;
        case TOKEN_ID:
          _localctx = OtherPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 374;
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
    enterRule(_localctx, 18, RULE_function);
    int _la;
    try {
      int _alt;
      state = 426;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 70, context)) {
        case 1:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 377;
          match(TOKEN_T__70);
          state = 378;
          _localctx.date = term();
          state = 381;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__71) {
            state = 379;
            match(TOKEN_T__71);
            state = 380;
            _localctx.sourceFormat = term();
          }

          state = 383;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__18)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 384;
          _localctx.targetFormat = term();
          break;
        case 2:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 386;
          match(TOKEN_T__70);
          state = 387;
          _localctx.date = term();
          state = 388;
          match(TOKEN_T__71);
          state = 389;
          _localctx.sourceFormat = term();
          state = 392;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 63, context)) {
            case 1:
              state = 390;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__4 || _la == TOKEN_T__18)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 391;
              _localctx.targetFormat = term();
              break;
          }
          break;
        case 3:
          _localctx = FunctionNowContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 394;
          match(TOKEN_T__72);
          state = 397;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 64, context)) {
            case 1:
              state = 395;
              match(TOKEN_T__35);
              state = 396;
              match(TOKEN_T__36);
              break;
          }
          break;
        case 4:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 399;
          match(TOKEN_ID);
          state = 400;
          match(TOKEN_T__35);
          state = 411;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__35 ||
              _la == TOKEN_T__38 ||
              ((((_la - 68)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 68)) &
                          ((BigInt.one << (TOKEN_T__67 - 68)) |
                              (BigInt.one << (TOKEN_T__68 - 68)) |
                              (BigInt.one << (TOKEN_T__69 - 68)) |
                              (BigInt.one << (TOKEN_T__70 - 68)) |
                              (BigInt.one << (TOKEN_T__72 - 68)) |
                              (BigInt.one << (TOKEN_T__74 - 68)) |
                              (BigInt.one << (TOKEN_T__75 - 68)) |
                              (BigInt.one << (TOKEN_T__76 - 68)) |
                              (BigInt.one << (TOKEN_T__77 - 68)) |
                              (BigInt.one << (TOKEN_T__78 - 68)) |
                              (BigInt.one << (TOKEN_T__79 - 68)) |
                              (BigInt.one << (TOKEN_T__80 - 68)) |
                              (BigInt.one << (TOKEN_T__81 - 68)) |
                              (BigInt.one << (TOKEN_T__82 - 68)) |
                              (BigInt.one << (TOKEN_T__83 - 68)) |
                              (BigInt.one << (TOKEN_T__84 - 68)) |
                              (BigInt.one << (TOKEN_T__85 - 68)) |
                              (BigInt.one << (TOKEN_T__86 - 68)) |
                              (BigInt.one << (TOKEN_T__87 - 68)) |
                              (BigInt.one << (TOKEN_T__88 - 68)) |
                              (BigInt.one << (TOKEN_T__89 - 68)) |
                              (BigInt.one << (TOKEN_T__90 - 68)) |
                              (BigInt.one << (TOKEN_T__91 - 68)) |
                              (BigInt.one << (TOKEN_T__92 - 68)) |
                              (BigInt.one << (TOKEN_T__93 - 68)) |
                              (BigInt.one << (TOKEN_T__94 - 68)) |
                              (BigInt.one << (TOKEN_T__95 - 68)) |
                              (BigInt.one << (TOKEN_T__96 - 68)) |
                              (BigInt.one << (TOKEN_T__97 - 68)) |
                              (BigInt.one << (TOKEN_T__98 - 68)) |
                              (BigInt.one << (TOKEN_T__99 - 68)) |
                              (BigInt.one << (TOKEN_T__100 - 68)) |
                              (BigInt.one << (TOKEN_T__101 - 68)) |
                              (BigInt.one << (TOKEN_T__102 - 68)) |
                              (BigInt.one << (TOKEN_T__103 - 68)) |
                              (BigInt.one << (TOKEN_T__104 - 68)) |
                              (BigInt.one << (TOKEN_T__105 - 68)) |
                              (BigInt.one << (TOKEN_T__106 - 68)) |
                              (BigInt.one << (TOKEN_T__123 - 68)) |
                              (BigInt.one << (TOKEN_T__124 - 68)) |
                              (BigInt.one << (TOKEN_T__125 - 68)) |
                              (BigInt.one << (TOKEN_T__126 - 68)) |
                              (BigInt.one << (TOKEN_T__127 - 68)) |
                              (BigInt.one << (TOKEN_T__128 - 68)) |
                              (BigInt.one << (TOKEN_T__129 - 68)) |
                              (BigInt.one << (TOKEN_T__130 - 68)))) !=
                      BigInt.zero) ||
              ((((_la - 132)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 132)) &
                          ((BigInt.one << (TOKEN_T__131 - 132)) |
                              (BigInt.one << (TOKEN_T__132 - 132)) |
                              (BigInt.one << (TOKEN_T__135 - 132)) |
                              (BigInt.one << (TOKEN_T__137 - 132)) |
                              (BigInt.one << (TOKEN_T__138 - 132)) |
                              (BigInt.one << (TOKEN_T__139 - 132)) |
                              (BigInt.one << (TOKEN_T__140 - 132)) |
                              (BigInt.one << (TOKEN_T__141 - 132)) |
                              (BigInt.one << (TOKEN_T__142 - 132)) |
                              (BigInt.one << (TOKEN_T__143 - 132)) |
                              (BigInt.one << (TOKEN_T__144 - 132)) |
                              (BigInt.one << (TOKEN_T__145 - 132)) |
                              (BigInt.one << (TOKEN_T__146 - 132)) |
                              (BigInt.one << (TOKEN_T__147 - 132)) |
                              (BigInt.one << (TOKEN_T__148 - 132)) |
                              (BigInt.one << (TOKEN_T__149 - 132)) |
                              (BigInt.one << (TOKEN_T__152 - 132)) |
                              (BigInt.one << (TOKEN_T__153 - 132)) |
                              (BigInt.one << (TOKEN_T__154 - 132)) |
                              (BigInt.one << (TOKEN_T__155 - 132)) |
                              (BigInt.one << (TOKEN_T__156 - 132)) |
                              (BigInt.one << (TOKEN_T__157 - 132)) |
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
                              (BigInt.one << (TOKEN_NUMBER_LITERAL - 132)) |
                              (BigInt.one << (TOKEN_BOOL_LITERAL - 132)) |
                              (BigInt.one << (TOKEN_STRING_LITERAL - 132)) |
                              (BigInt.one << (TOKEN_ID - 132)))) !=
                      BigInt.zero)) {
            state = 401;
            term();
            state = 408;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 66, context);
            while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
              if (_alt == 1 + 1) {
                state = 403;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__73) {
                  state = 402;
                  match(TOKEN_T__73);
                }

                state = 405;
                term();
              }
              state = 410;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 66, context);
            }
          }

          state = 413;
          match(TOKEN_T__36);
          break;
        case 5:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 414;
          match(TOKEN_ID);
          state = 415;
          match(TOKEN_T__13);

          state = 416;
          term();
          state = 423;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 69, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 418;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__73) {
                state = 417;
                match(TOKEN_T__73);
              }

              state = 420;
              term();
            }
            state = 425;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 69, context);
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
    enterRule(_localctx, 20, RULE_literal);
    try {
      state = 432;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
          _localctx = LiteralCardinalContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 428;
          cardinalValue();
          break;
        case TOKEN_STRING_LITERAL:
          _localctx = LiteralStringContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 429;
          match(TOKEN_STRING_LITERAL);
          break;
        case TOKEN_NUMBER_LITERAL:
          _localctx = LiteralNumberContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 430;
          match(TOKEN_NUMBER_LITERAL);
          break;
        case TOKEN_BOOL_LITERAL:
          _localctx = LiteralBoolContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 431;
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
    enterRule(_localctx, 22, RULE_cardinalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 434;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 75)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 75)) &
                  ((BigInt.one << (TOKEN_T__74 - 75)) |
                      (BigInt.one << (TOKEN_T__75 - 75)) |
                      (BigInt.one << (TOKEN_T__76 - 75)) |
                      (BigInt.one << (TOKEN_T__77 - 75)) |
                      (BigInt.one << (TOKEN_T__78 - 75)) |
                      (BigInt.one << (TOKEN_T__79 - 75)) |
                      (BigInt.one << (TOKEN_T__80 - 75)) |
                      (BigInt.one << (TOKEN_T__81 - 75)) |
                      (BigInt.one << (TOKEN_T__82 - 75)) |
                      (BigInt.one << (TOKEN_T__83 - 75)) |
                      (BigInt.one << (TOKEN_T__84 - 75)))) !=
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
    enterRule(_localctx, 24, RULE_ordinal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 436;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 86)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 86)) &
                  ((BigInt.one << (TOKEN_T__85 - 86)) |
                      (BigInt.one << (TOKEN_T__86 - 86)) |
                      (BigInt.one << (TOKEN_T__87 - 86)) |
                      (BigInt.one << (TOKEN_T__88 - 86)) |
                      (BigInt.one << (TOKEN_T__89 - 86)) |
                      (BigInt.one << (TOKEN_T__90 - 86)) |
                      (BigInt.one << (TOKEN_T__91 - 86)) |
                      (BigInt.one << (TOKEN_T__92 - 86)) |
                      (BigInt.one << (TOKEN_T__93 - 86)) |
                      (BigInt.one << (TOKEN_T__94 - 86)) |
                      (BigInt.one << (TOKEN_T__95 - 86)))) !=
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
    enterRule(_localctx, 26, RULE_widgetIdent);
    int _la;
    try {
      state = 457;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 75, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 441;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 438;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 443;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 444;
          widgetName();
          state = 445;
          widgetType();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 450;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 447;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 452;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 453;
          widgetType();
          state = 455;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 74, context)) {
            case 1:
              state = 454;
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
    enterRule(_localctx, 28, RULE_widgetName);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 460;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((((_la - 97)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 97)) &
                  ((BigInt.one << (TOKEN_T__96 - 97)) |
                      (BigInt.one << (TOKEN_T__97 - 97)) |
                      (BigInt.one << (TOKEN_T__98 - 97)) |
                      (BigInt.one << (TOKEN_T__99 - 97)) |
                      (BigInt.one << (TOKEN_T__100 - 97)) |
                      (BigInt.one << (TOKEN_T__101 - 97)) |
                      (BigInt.one << (TOKEN_T__102 - 97)) |
                      (BigInt.one << (TOKEN_T__103 - 97)) |
                      (BigInt.one << (TOKEN_T__104 - 97)) |
                      (BigInt.one << (TOKEN_T__105 - 97)) |
                      (BigInt.one << (TOKEN_T__106 - 97)))) !=
              BigInt.zero)) {
        state = 459;
        widgetNameModifier();
      }

      state = 462;
      _localctx._literal = literal();
      _localctx.name.add(_localctx._literal);
      state = 467;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 77, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 463;
          match(TOKEN_T__49);
          state = 464;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
        }
        state = 469;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 77, context);
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
    enterRule(_localctx, 30, RULE_widgetNameModifier);
    int _la;
    try {
      state = 486;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__96:
          _localctx = WidgetNameExactlyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 470;
          match(TOKEN_T__96);
          break;
        case TOKEN_T__97:
        case TOKEN_T__98:
        case TOKEN_T__99:
        case TOKEN_T__100:
          _localctx = WidgetNameStartingWithContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 471;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 98)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 98)) &
                      ((BigInt.one << (TOKEN_T__97 - 98)) |
                          (BigInt.one << (TOKEN_T__98 - 98)) |
                          (BigInt.one << (TOKEN_T__99 - 98)) |
                          (BigInt.one << (TOKEN_T__100 - 98)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 472;
          match(TOKEN_T__13);
          state = 474;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__96) {
            state = 473;
            _localctx.exactly = match(TOKEN_T__96);
          }

          break;
        case TOKEN_T__101:
        case TOKEN_T__102:
          _localctx = WidgetNameEndingWithContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 476;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__101 || _la == TOKEN_T__102)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 477;
          match(TOKEN_T__13);
          state = 479;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__96) {
            state = 478;
            _localctx.exactly = match(TOKEN_T__96);
          }

          break;
        case TOKEN_T__103:
        case TOKEN_T__104:
          _localctx = WidgetNameContainingContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 481;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__103 || _la == TOKEN_T__104)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 483;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__96) {
            state = 482;
            _localctx.exactly = match(TOKEN_T__96);
          }

          break;
        case TOKEN_T__105:
        case TOKEN_T__106:
          _localctx = WidgetNameMatchingContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 485;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__105 || _la == TOKEN_T__106)) {
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
    enterRule(_localctx, 32, RULE_widgetReference);
    try {
      state = 499;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 82, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 488;
          widgetReferencePosition();
          state = 489;
          match(TOKEN_T__35);
          state = 490;
          term();
          state = 491;
          match(TOKEN_T__36);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 493;
          widgetReferencePosition();
          state = 494;
          match(TOKEN_T__107);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 496;
          widgetReferencePosition();
          state = 497;
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
    enterRule(_localctx, 34, RULE_widgetReferencePosition);
    int _la;
    try {
      state = 562;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
        case 1:
          _localctx = WidgetReferenceEdgeContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 501;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__21))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 502;
          singleDirection();
          state = 504;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__108) {
            state = 503;
            match(TOKEN_T__108);
          }

          state = 506;
          match(TOKEN_T__109);
          state = 508;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 507;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 2:
          _localctx = WidgetReferenceCornerContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 510;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__21))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 511;
          doubleDirection();
          state = 513;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__111) {
            state = 512;
            match(TOKEN_T__111);
          }

          state = 515;
          match(TOKEN_T__109);
          state = 517;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 516;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 3:
          _localctx = WidgetReferenceHalfContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 519;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__21))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 520;
          singleDirection();
          state = 521;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__112 || _la == TOKEN_T__113)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 522;
          match(TOKEN_T__109);
          state = 524;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 523;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 4:
          _localctx = WidgetReferenceFractionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 526;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__21))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 527;
          ordinal();
          state = 528;
          singleDirection();
          state = 532;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__87:
              state = 529;
              _localctx.f = match(TOKEN_T__87);
              break;
            case TOKEN_T__114:
              state = 530;
              _localctx.f = match(TOKEN_T__114);
              break;
            case TOKEN_T__92:
              state = 531;
              _localctx.f = match(TOKEN_T__92);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 534;
          match(TOKEN_T__109);
          state = 536;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 535;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 5:
          _localctx = WidgetReferencePercentageContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 538;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__11) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__21))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 539;
          singleDirection();
          state = 540;
          literal();
          state = 541;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__115 || _la == TOKEN_T__116)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 542;
          match(TOKEN_T__109);
          state = 544;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 543;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 6:
          _localctx = WidgetReferenceInsideContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 546;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__21 ||
              _la == TOKEN_T__117 ||
              _la == TOKEN_T__118)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 548;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__110) {
            state = 547;
            _localctx.isParent = match(TOKEN_T__110);
          }

          break;
        case 7:
          _localctx = WidgetReferenceToContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 557;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__119:
              state = 550;
              _localctx.below = match(TOKEN_T__119);
              break;
            case TOKEN_T__120:
              state = 551;
              _localctx.above = match(TOKEN_T__120);
              break;
            case TOKEN_T__4:
              state = 552;
              match(TOKEN_T__4);
              state = 555;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
                case 1:
                  state = 553;
                  singleDirection();
                  break;
                case 2:
                  state = 554;
                  doubleDirection();
                  break;
              }
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 560;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__109) {
            state = 559;
            match(TOKEN_T__109);
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
    enterRule(_localctx, 36, RULE_widgetWhere);
    int _la;
    try {
      state = 571;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 564;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__13 ||
              _la == TOKEN_T__121 ||
              _la == TOKEN_T__122)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 565;
          match(TOKEN_T__35);
          state = 566;
          expression(0);
          state = 567;
          match(TOKEN_T__36);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 569;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__13 ||
              _la == TOKEN_T__121 ||
              _la == TOKEN_T__122)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 570;
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
    enterRule(_localctx, 38, RULE_widget);
    int _la;
    try {
      state = 613;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 573;
          widgetIdent();
          state = 574;
          widgetReference();
          state = 576;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__48) {
            state = 575;
            match(TOKEN_T__48);
          }

          state = 578;
          widgetReference();
          state = 580;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__48) {
            state = 579;
            match(TOKEN_T__48);
          }

          state = 582;
          widgetReference();
          state = 584;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 99, context)) {
            case 1:
              state = 583;
              match(TOKEN_T__48);
              break;
          }
          state = 587;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
            case 1:
              state = 586;
              widgetWhere();
              break;
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 589;
          widgetIdent();
          state = 590;
          widgetReference();
          state = 592;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__48) {
            state = 591;
            match(TOKEN_T__48);
          }

          state = 594;
          widgetReference();
          state = 596;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
            case 1:
              state = 595;
              match(TOKEN_T__48);
              break;
          }
          state = 599;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 103, context)) {
            case 1:
              state = 598;
              widgetWhere();
              break;
          }
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 601;
          widgetIdent();
          state = 602;
          widgetReference();
          state = 604;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
            case 1:
              state = 603;
              match(TOKEN_T__48);
              break;
          }
          state = 607;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
            case 1:
              state = 606;
              widgetWhere();
              break;
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 609;
          widgetIdent();
          state = 611;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
            case 1:
              state = 610;
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
    enterRule(_localctx, 40, RULE_widgetType);
    int _la;
    try {
      state = 641;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__123:
        case TOKEN_T__124:
          _localctx = WidgetTypeWidgetContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 615;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__123 || _la == TOKEN_T__124)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
          _localctx = WidgetTypeButtonContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 616;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 126)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 126)) &
                      ((BigInt.one << (TOKEN_T__125 - 126)) |
                          (BigInt.one << (TOKEN_T__126 - 126)) |
                          (BigInt.one << (TOKEN_T__127 - 126)) |
                          (BigInt.one << (TOKEN_T__128 - 126)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__129:
        case TOKEN_T__130:
          _localctx = WidgetTypeLinkContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 617;
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
        case TOKEN_T__132:
        case TOKEN_T__135:
        case TOKEN_T__137:
        case TOKEN_T__138:
        case TOKEN_T__139:
        case TOKEN_T__140:
        case TOKEN_T__141:
        case TOKEN_T__142:
          _localctx = WidgetTypeTextFieldContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 628;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__131:
            case TOKEN_T__132:
              state = 618;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__131 || _la == TOKEN_T__132)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 619;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__133 || _la == TOKEN_T__134)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__135:
              state = 620;
              match(TOKEN_T__135);
              state = 621;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__131 || _la == TOKEN_T__136)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__137:
              state = 622;
              match(TOKEN_T__137);
              break;
            case TOKEN_T__138:
              state = 623;
              match(TOKEN_T__138);
              break;
            case TOKEN_T__139:
              state = 624;
              match(TOKEN_T__139);
              break;
            case TOKEN_T__140:
              state = 625;
              match(TOKEN_T__140);
              break;
            case TOKEN_T__141:
              state = 626;
              match(TOKEN_T__141);
              break;
            case TOKEN_T__142:
              state = 627;
              match(TOKEN_T__142);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case TOKEN_T__143:
        case TOKEN_T__144:
          _localctx = WidgetTypeSliderContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 630;
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
        case TOKEN_T__146:
          _localctx = WidgetTypeImageContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 631;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__145 || _la == TOKEN_T__146)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__147:
        case TOKEN_T__148:
          _localctx = WidgetTypeListContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 632;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__147 || _la == TOKEN_T__148)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__149:
        case TOKEN_T__152:
        case TOKEN_T__153:
          _localctx = WidgetTypeCheckBoxContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 637;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__149:
              state = 633;
              match(TOKEN_T__149);
              state = 634;
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
              state = 635;
              match(TOKEN_T__152);
              break;
            case TOKEN_T__153:
              state = 636;
              match(TOKEN_T__153);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case TOKEN_T__154:
        case TOKEN_T__155:
          _localctx = WidgetTypeSwitchContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 639;
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
          _localctx = WidgetTypeHeaderContext(_localctx);
          enterOuterAlt(_localctx, 10);
          state = 640;
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

  SingleDirectionContext singleDirection() {
    dynamic _localctx = SingleDirectionContext(context, state);
    enterRule(_localctx, 42, RULE_singleDirection);
    int _la;
    try {
      state = 647;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__31:
          _localctx = SingleDirectionLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 643;
          match(TOKEN_T__31);
          break;
        case TOKEN_T__34:
          _localctx = SingleDirectionRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 644;
          match(TOKEN_T__34);
          break;
        case TOKEN_T__158:
        case TOKEN_T__159:
          _localctx = SingleDirectionTopContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 645;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__158 || _la == TOKEN_T__159)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__160:
        case TOKEN_T__161:
          _localctx = SingleDirectionBottomContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 646;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
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
    enterRule(_localctx, 44, RULE_doubleDirection);
    int _la;
    try {
      state = 685;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 120, context)) {
        case 1:
          _localctx = DoubleDirectionTopLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 656;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__158:
            case TOKEN_T__159:
              state = 649;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__158 || _la == TOKEN_T__159)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 651;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 650;
                match(TOKEN_T__38);
              }

              state = 653;
              match(TOKEN_T__31);
              break;
            case TOKEN_T__31:
              state = 654;
              match(TOKEN_T__31);
              state = 655;
              match(TOKEN_T__158);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 2:
          _localctx = DoubleDirectionTopRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 665;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__158:
            case TOKEN_T__159:
              state = 658;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__158 || _la == TOKEN_T__159)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 660;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 659;
                match(TOKEN_T__38);
              }

              state = 662;
              match(TOKEN_T__34);
              break;
            case TOKEN_T__34:
              state = 663;
              match(TOKEN_T__34);
              state = 664;
              match(TOKEN_T__158);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 3:
          _localctx = DoubleDirectionBottomLeftContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 674;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__160:
            case TOKEN_T__161:
              state = 667;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 669;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 668;
                match(TOKEN_T__38);
              }

              state = 671;
              match(TOKEN_T__31);
              break;
            case TOKEN_T__31:
              state = 672;
              match(TOKEN_T__31);
              state = 673;
              match(TOKEN_T__160);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 4:
          _localctx = DoubleDirectionBottomRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 683;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__160:
            case TOKEN_T__161:
              state = 676;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 678;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 677;
                match(TOKEN_T__38);
              }

              state = 680;
              match(TOKEN_T__34);
              break;
            case TOKEN_T__34:
              state = 681;
              match(TOKEN_T__34);
              state = 682;
              match(TOKEN_T__160);
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
    enterRule(_localctx, 46, RULE_character);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 687;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 163)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 163)) &
                  ((BigInt.one << (TOKEN_T__162 - 163)) |
                      (BigInt.one << (TOKEN_T__163 - 163)) |
                      (BigInt.one << (TOKEN_T__164 - 163)) |
                      (BigInt.one << (TOKEN_T__165 - 163)))) !=
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
    enterRule(_localctx, 48, RULE_word);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 689;
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

  LineContext line() {
    dynamic _localctx = LineContext(context, state);
    enterRule(_localctx, 50, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 691;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__168 || _la == TOKEN_T__169)) {
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
    enterRule(_localctx, 52, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 693;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__170 || _la == TOKEN_T__171)) {
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
    enterRule(_localctx, 54, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 695;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__21 || _la == TOKEN_T__71 || _la == TOKEN_T__109)) {
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
    enterRule(_localctx, 56, RULE_click);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 697;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 173)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 173)) &
                  ((BigInt.one << (TOKEN_T__172 - 173)) |
                      (BigInt.one << (TOKEN_T__173 - 173)) |
                      (BigInt.one << (TOKEN_T__174 - 173)) |
                      (BigInt.one << (TOKEN_T__175 - 173)) |
                      (BigInt.one << (TOKEN_T__176 - 173)) |
                      (BigInt.one << (TOKEN_T__177 - 173)))) !=
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
    enterRule(_localctx, 58, RULE_isAre);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 699;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 179)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 179)) &
                  ((BigInt.one << (TOKEN_T__178 - 179)) |
                      (BigInt.one << (TOKEN_T__179 - 179)) |
                      (BigInt.one << (TOKEN_T__180 - 179)))) !=
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
    enterRule(_localctx, 60, RULE_isAreNot);
    try {
      state = 710;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__178:
          enterOuterAlt(_localctx, 1);
          state = 701;
          match(TOKEN_T__178);
          state = 702;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__181:
          enterOuterAlt(_localctx, 2);
          state = 703;
          match(TOKEN_T__181);
          break;
        case TOKEN_T__179:
          enterOuterAlt(_localctx, 3);
          state = 704;
          match(TOKEN_T__179);
          state = 705;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__182:
          enterOuterAlt(_localctx, 4);
          state = 706;
          match(TOKEN_T__182);
          break;
        case TOKEN_T__180:
          enterOuterAlt(_localctx, 5);
          state = 707;
          match(TOKEN_T__180);
          state = 708;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__183:
          enterOuterAlt(_localctx, 6);
          state = 709;
          match(TOKEN_T__183);
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
      case 5:
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
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{CA}\u{2CB}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
      '\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
      '\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
      '\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
      '\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
      '\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
      '\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{4}\u{1A}\u{9}'
      '\u{1A}\u{4}\u{1B}\u{9}\u{1B}\u{4}\u{1C}\u{9}\u{1C}\u{4}\u{1D}\u{9}\u{1D}'
      '\u{4}\u{1E}\u{9}\u{1E}\u{4}\u{1F}\u{9}\u{1F}\u{4}\u{20}\u{9}\u{20}\u{3}'
      '\u{2}\u{3}\u{2}\u{5}\u{2}\u{43}\u{A}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}'
      '\u{47}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{4A}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{5}\u{2}\u{4E}\u{A}\u{2}\u{5}\u{2}\u{50}\u{A}\u{2}\u{3}\u{2}\u{7}\u{2}'
      '\u{53}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{56}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{3}\u{5}\u{3}\u{5B}\u{A}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{5}'
      '\u{3}\u{60}\u{A}\u{3}\u{3}\u{3}\u{5}\u{3}\u{63}\u{A}\u{3}\u{3}\u{3}\u{5}'
      '\u{3}\u{66}\u{A}\u{3}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{6B}\u{A}'
      '\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{6F}\u{A}\u{4}\u{3}\u{5}\u{3}\u{5}'
      '\u{5}\u{5}\u{73}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}'
      '\u{5}\u{79}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{7E}\u{A}'
      '\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{83}\u{A}\u{5}\u{3}\u{5}'
      '\u{5}\u{5}\u{86}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{89}\u{A}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{5}\u{5}\u{8D}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{90}\u{A}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{94}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{97}'
      '\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{A8}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}'
      '\u{5}\u{AC}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{B0}\u{A}\u{5}\u{3}'
      '\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{B5}\u{A}\u{5}\u{3}\u{6}\u{5}\u{6}'
      '\u{B8}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}'
      '\u{6}\u{3}\u{6}\u{5}\u{6}\u{C1}\u{A}\u{6}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{CF}\u{A}\u{7}\u{3}\u{7}\u{5}\u{7}\u{D2}'
      '\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{ED}\u{A}'
      '\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{F4}'
      '\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{7}\u{7}\u{F8}\u{A}\u{7}\u{C}\u{7}\u{E}'
      '\u{7}\u{FB}\u{B}\u{7}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{FF}\u{A}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{5}\u{8}\u{103}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}'
      '\u{107}\u{A}\u{8}\u{3}\u{8}\u{5}\u{8}\u{10A}\u{A}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{5}\u{8}\u{10F}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{5}\u{8}\u{114}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{118}\u{A}'
      '\u{8}\u{5}\u{8}\u{11A}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{11E}'
      '\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{122}\u{A}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{5}\u{8}\u{127}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}'
      '\u{12B}\u{A}\u{8}\u{5}\u{8}\u{12D}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}'
      '\u{8}\u{131}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{135}\u{A}\u{8}'
      '\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{139}\u{A}\u{8}\u{5}\u{8}\u{13B}\u{A}'
      '\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{13F}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{5}\u{8}\u{143}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{148}'
      '\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{14C}\u{A}\u{8}\u{5}\u{8}\u{14E}'
      '\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{152}\u{A}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{5}\u{8}\u{156}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{15A}'
      '\u{A}\u{8}\u{5}\u{8}\u{15C}\u{A}\u{8}\u{5}\u{8}\u{15E}\u{A}\u{8}\u{3}'
      '\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}'
      '\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}'
      '\u{9}\u{3}\u{9}\u{3}\u{9}\u{5}\u{9}\u{171}\u{A}\u{9}\u{3}\u{A}\u{3}\u{A}'
      '\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}\u{A}\u{17A}\u{A}'
      '\u{A}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{180}\u{A}\u{B}'
      '\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}'
      '\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{18B}\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}'
      '\u{B}\u{5}\u{B}\u{190}\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}'
      '\u{5}\u{B}\u{196}\u{A}\u{B}\u{3}\u{B}\u{7}\u{B}\u{199}\u{A}\u{B}\u{C}'
      '\u{B}\u{E}\u{B}\u{19C}\u{B}\u{B}\u{5}\u{B}\u{19E}\u{A}\u{B}\u{3}\u{B}'
      '\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{1A5}\u{A}\u{B}\u{3}'
      '\u{B}\u{7}\u{B}\u{1A8}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{1AB}\u{B}\u{B}'
      '\u{5}\u{B}\u{1AD}\u{A}\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{5}'
      '\u{C}\u{1B3}\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}\u{E}\u{3}\u{F}'
      '\u{7}\u{F}\u{1BA}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1BD}\u{B}\u{F}\u{3}'
      '\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{1C3}\u{A}\u{F}\u{C}\u{F}'
      '\u{E}\u{F}\u{1C6}\u{B}\u{F}\u{3}\u{F}\u{3}\u{F}\u{5}\u{F}\u{1CA}\u{A}'
      '\u{F}\u{5}\u{F}\u{1CC}\u{A}\u{F}\u{3}\u{10}\u{5}\u{10}\u{1CF}\u{A}\u{10}'
      '\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{7}\u{10}\u{1D4}\u{A}\u{10}\u{C}\u{10}'
      '\u{E}\u{10}\u{1D7}\u{B}\u{10}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}'
      '\u{5}\u{11}\u{1DD}\u{A}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{5}\u{11}'
      '\u{1E2}\u{A}\u{11}\u{3}\u{11}\u{3}\u{11}\u{5}\u{11}\u{1E6}\u{A}\u{11}'
      '\u{3}\u{11}\u{5}\u{11}\u{1E9}\u{A}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
      '\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}'
      '\u{12}\u{3}\u{12}\u{5}\u{12}\u{1F6}\u{A}\u{12}\u{3}\u{13}\u{3}\u{13}'
      '\u{3}\u{13}\u{5}\u{13}\u{1FB}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}'
      '\u{1FF}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{204}'
      '\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{208}\u{A}\u{13}\u{3}\u{13}'
      '\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{20F}\u{A}\u{13}'
      '\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}'
      '\u{13}\u{217}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{21B}\u{A}'
      '\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}'
      '\u{5}\u{13}\u{223}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}\u{13}\u{227}'
      '\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}'
      '\u{13}\u{22E}\u{A}\u{13}\u{5}\u{13}\u{230}\u{A}\u{13}\u{3}\u{13}\u{5}'
      '\u{13}\u{233}\u{A}\u{13}\u{5}\u{13}\u{235}\u{A}\u{13}\u{3}\u{14}\u{3}'
      '\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}'
      '\u{23E}\u{A}\u{14}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{243}'
      '\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{247}\u{A}\u{15}\u{3}\u{15}'
      '\u{3}\u{15}\u{5}\u{15}\u{24B}\u{A}\u{15}\u{3}\u{15}\u{5}\u{15}\u{24E}'
      '\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{253}\u{A}\u{15}'
      '\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{257}\u{A}\u{15}\u{3}\u{15}\u{5}\u{15}'
      '\u{25A}\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{25F}'
      '\u{A}\u{15}\u{3}\u{15}\u{5}\u{15}\u{262}\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{5}\u{15}\u{266}\u{A}\u{15}\u{5}\u{15}\u{268}\u{A}\u{15}\u{3}\u{16}'
      '\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}'
      '\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{5}\u{16}'
      '\u{277}\u{A}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{3}\u{16}\u{3}\u{16}\u{5}\u{16}\u{280}\u{A}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{5}\u{16}\u{284}\u{A}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}'
      '\u{5}\u{17}\u{28A}\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{28E}'
      '\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{293}\u{A}\u{18}'
      '\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{297}\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}'
      '\u{3}\u{18}\u{5}\u{18}\u{29C}\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}'
      '\u{2A0}\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{2A5}'
      '\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{2A9}\u{A}\u{18}\u{3}\u{18}'
      '\u{3}\u{18}\u{3}\u{18}\u{5}\u{18}\u{2AE}\u{A}\u{18}\u{5}\u{18}\u{2B0}'
      '\u{A}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{1A}\u{3}\u{1A}\u{3}\u{1B}\u{3}'
      '\u{1B}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1E}\u{3}\u{1E}'
      '\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{20}\u{3}\u{20}\u{3}\u{20}\u{3}\u{20}\u{3}'
      '\u{20}\u{3}\u{20}\u{3}\u{20}\u{3}\u{20}\u{3}\u{20}\u{5}\u{20}\u{2C9}'
      '\u{A}\u{20}\u{3}\u{20}\u{4}\u{19A}\u{1A9}\u{3}\u{C}\u{21}\u{2}\u{4}\u{6}'
      '\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}'
      '\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}'
      '\u{38}\u{3A}\u{3C}\u{3E}\u{2}\u{2C}\u{3}\u{2}\u{12}\u{13}\u{4}\u{2}\u{7}'
      '\u{7}\u{15}\u{15}\u{3}\u{2}\u{16}\u{17}\u{3}\u{2}\u{18}\u{19}\u{3}\u{2}'
      '\u{1F}\u{21}\u{3}\u{2}\u{2E}\u{2F}\u{4}\u{2}\u{29}\u{29}\u{30}\u{30}'
      '\u{3}\u{2}\u{31}\u{32}\u{3}\u{2}\u{2A}\u{2C}\u{3}\u{2}\u{46}\u{48}\u{3}'
      '\u{2}\u{4D}\u{57}\u{3}\u{2}\u{58}\u{62}\u{3}\u{2}\u{64}\u{67}\u{3}\u{2}'
      '\u{68}\u{69}\u{3}\u{2}\u{6A}\u{6B}\u{3}\u{2}\u{6C}\u{6D}\u{4}\u{2}\u{E}'
      '\u{F}\u{18}\u{18}\u{3}\u{2}\u{73}\u{74}\u{3}\u{2}\u{76}\u{77}\u{4}\u{2}'
      '\u{18}\u{18}\u{78}\u{79}\u{4}\u{2}\u{10}\u{10}\u{7C}\u{7D}\u{3}\u{2}'
      '\u{7E}\u{7F}\u{3}\u{2}\u{80}\u{83}\u{3}\u{2}\u{84}\u{85}\u{3}\u{2}\u{86}'
      '\u{87}\u{3}\u{2}\u{88}\u{89}\u{4}\u{2}\u{86}\u{86}\u{8B}\u{8B}\u{3}\u{2}'
      '\u{92}\u{93}\u{3}\u{2}\u{94}\u{95}\u{3}\u{2}\u{96}\u{97}\u{3}\u{2}\u{99}'
      '\u{9A}\u{3}\u{2}\u{9D}\u{9E}\u{3}\u{2}\u{9F}\u{A0}\u{3}\u{2}\u{A1}\u{A2}'
      '\u{3}\u{2}\u{A3}\u{A4}\u{3}\u{2}\u{A5}\u{A8}\u{3}\u{2}\u{A9}\u{AA}\u{3}'
      '\u{2}\u{AB}\u{AC}\u{3}\u{2}\u{AD}\u{AE}\u{5}\u{2}\u{18}\u{18}\u{4A}\u{4A}'
      '\u{70}\u{70}\u{3}\u{2}\u{AF}\u{B4}\u{3}\u{2}\u{B5}\u{B7}\u{2}\u{37C}'
      '\u{2}\u{48}\u{3}\u{2}\u{2}\u{2}\u{4}\u{65}\u{3}\u{2}\u{2}\u{2}\u{6}\u{6E}'
      '\u{3}\u{2}\u{2}\u{2}\u{8}\u{B4}\u{3}\u{2}\u{2}\u{2}\u{A}\u{C0}\u{3}\u{2}'
      '\u{2}\u{2}\u{C}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{E}\u{15D}\u{3}\u{2}\u{2}'
      '\u{2}\u{10}\u{170}\u{3}\u{2}\u{2}\u{2}\u{12}\u{179}\u{3}\u{2}\u{2}\u{2}'
      '\u{14}\u{1AC}\u{3}\u{2}\u{2}\u{2}\u{16}\u{1B2}\u{3}\u{2}\u{2}\u{2}\u{18}'
      '\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{1B6}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{1CB}'
      '\u{3}\u{2}\u{2}\u{2}\u{1E}\u{1CE}\u{3}\u{2}\u{2}\u{2}\u{20}\u{1E8}\u{3}'
      '\u{2}\u{2}\u{2}\u{22}\u{1F5}\u{3}\u{2}\u{2}\u{2}\u{24}\u{234}\u{3}\u{2}'
      '\u{2}\u{2}\u{26}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{28}\u{267}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A}\u{283}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{289}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{30}\u{2B1}\u{3}\u{2}\u{2}\u{2}\u{32}'
      '\u{2B3}\u{3}\u{2}\u{2}\u{2}\u{34}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{36}\u{2B7}'
      '\u{3}\u{2}\u{2}\u{2}\u{38}\u{2B9}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{2BB}\u{3}'
      '\u{2}\u{2}\u{2}\u{3C}\u{2BD}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{2C8}\u{3}\u{2}'
      '\u{2}\u{2}\u{40}\u{42}\u{5}\u{4}\u{3}\u{2}\u{41}\u{43}\u{7}\u{3}\u{2}'
      '\u{2}\u{42}\u{41}\u{3}\u{2}\u{2}\u{2}\u{42}\u{43}\u{3}\u{2}\u{2}\u{2}'
      '\u{43}\u{44}\u{3}\u{2}\u{2}\u{2}\u{44}\u{45}\u{7}\u{C6}\u{2}\u{2}\u{45}'
      '\u{47}\u{3}\u{2}\u{2}\u{2}\u{46}\u{40}\u{3}\u{2}\u{2}\u{2}\u{47}\u{4A}'
      '\u{3}\u{2}\u{2}\u{2}\u{48}\u{46}\u{3}\u{2}\u{2}\u{2}\u{48}\u{49}\u{3}'
      '\u{2}\u{2}\u{2}\u{49}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{4A}\u{48}\u{3}\u{2}'
      '\u{2}\u{2}\u{4B}\u{4D}\u{5}\u{4}\u{3}\u{2}\u{4C}\u{4E}\u{7}\u{3}\u{2}'
      '\u{2}\u{4D}\u{4C}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4E}\u{3}\u{2}\u{2}\u{2}'
      '\u{4E}\u{50}\u{3}\u{2}\u{2}\u{2}\u{4F}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{4F}'
      '\u{50}\u{3}\u{2}\u{2}\u{2}\u{50}\u{54}\u{3}\u{2}\u{2}\u{2}\u{51}\u{53}'
      '\u{7}\u{C6}\u{2}\u{2}\u{52}\u{51}\u{3}\u{2}\u{2}\u{2}\u{53}\u{56}\u{3}'
      '\u{2}\u{2}\u{2}\u{54}\u{52}\u{3}\u{2}\u{2}\u{2}\u{54}\u{55}\u{3}\u{2}'
      '\u{2}\u{2}\u{55}\u{57}\u{3}\u{2}\u{2}\u{2}\u{56}\u{54}\u{3}\u{2}\u{2}'
      '\u{2}\u{57}\u{58}\u{7}\u{2}\u{2}\u{3}\u{58}\u{3}\u{3}\u{2}\u{2}\u{2}'
      '\u{59}\u{5B}\u{5}\u{6}\u{4}\u{2}\u{5A}\u{59}\u{3}\u{2}\u{2}\u{2}\u{5A}'
      '\u{5B}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{5C}\u{3}\u{2}\u{2}\u{2}\u{5C}\u{5F}'
      '\u{5}\u{8}\u{5}\u{2}\u{5D}\u{5E}\u{7}\u{4}\u{2}\u{2}\u{5E}\u{60}\u{5}'
      '\u{C}\u{7}\u{2}\u{5F}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{5F}\u{60}\u{3}\u{2}'
      '\u{2}\u{2}\u{60}\u{66}\u{3}\u{2}\u{2}\u{2}\u{61}\u{63}\u{5}\u{6}\u{4}'
      '\u{2}\u{62}\u{61}\u{3}\u{2}\u{2}\u{2}\u{62}\u{63}\u{3}\u{2}\u{2}\u{2}'
      '\u{63}\u{64}\u{3}\u{2}\u{2}\u{2}\u{64}\u{66}\u{5}\u{C}\u{7}\u{2}\u{65}'
      '\u{5A}\u{3}\u{2}\u{2}\u{2}\u{65}\u{62}\u{3}\u{2}\u{2}\u{2}\u{66}\u{5}'
      '\u{3}\u{2}\u{2}\u{2}\u{67}\u{6F}\u{7}\u{5}\u{2}\u{2}\u{68}\u{6A}\u{7}'
      '\u{6}\u{2}\u{2}\u{69}\u{6B}\u{7}\u{7}\u{2}\u{2}\u{6A}\u{69}\u{3}\u{2}'
      '\u{2}\u{2}\u{6A}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{6B}\u{6F}\u{3}\u{2}\u{2}'
      '\u{2}\u{6C}\u{6F}\u{7}\u{8}\u{2}\u{2}\u{6D}\u{6F}\u{7}\u{9}\u{2}\u{2}'
      '\u{6E}\u{67}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{68}\u{3}\u{2}\u{2}\u{2}\u{6E}'
      '\u{6C}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{6F}\u{7}'
      '\u{3}\u{2}\u{2}\u{2}\u{70}\u{72}\u{7}\u{A}\u{2}\u{2}\u{71}\u{73}\u{7}'
      '\u{B}\u{2}\u{2}\u{72}\u{71}\u{3}\u{2}\u{2}\u{2}\u{72}\u{73}\u{3}\u{2}'
      '\u{2}\u{2}\u{73}\u{74}\u{3}\u{2}\u{2}\u{2}\u{74}\u{B5}\u{5}\u{C}\u{7}'
      '\u{2}\u{75}\u{79}\u{7}\u{C}\u{2}\u{2}\u{76}\u{77}\u{7}\u{D}\u{2}\u{2}'
      '\u{77}\u{79}\u{7}\u{E}\u{2}\u{2}\u{78}\u{75}\u{3}\u{2}\u{2}\u{2}\u{78}'
      '\u{76}\u{3}\u{2}\u{2}\u{2}\u{79}\u{7A}\u{3}\u{2}\u{2}\u{2}\u{7A}\u{B5}'
      '\u{5}\u{C}\u{7}\u{2}\u{7B}\u{7D}\u{5}\u{A}\u{6}\u{2}\u{7C}\u{7E}\u{7}'
      '\u{F}\u{2}\u{2}\u{7D}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{7D}\u{7E}\u{3}\u{2}'
      '\u{2}\u{2}\u{7E}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{7F}\u{88}\u{5}\u{C}\u{7}'
      '\u{2}\u{80}\u{86}\u{7}\u{E}\u{2}\u{2}\u{81}\u{83}\u{7}\u{10}\u{2}\u{2}'
      '\u{82}\u{81}\u{3}\u{2}\u{2}\u{2}\u{82}\u{83}\u{3}\u{2}\u{2}\u{2}\u{83}'
      '\u{84}\u{3}\u{2}\u{2}\u{2}\u{84}\u{86}\u{7}\u{11}\u{2}\u{2}\u{85}\u{80}'
      '\u{3}\u{2}\u{2}\u{2}\u{85}\u{82}\u{3}\u{2}\u{2}\u{2}\u{86}\u{87}\u{3}'
      '\u{2}\u{2}\u{2}\u{87}\u{89}\u{5}\u{C}\u{7}\u{2}\u{88}\u{85}\u{3}\u{2}'
      '\u{2}\u{2}\u{88}\u{89}\u{3}\u{2}\u{2}\u{2}\u{89}\u{B5}\u{3}\u{2}\u{2}'
      '\u{2}\u{8A}\u{8F}\u{5}\u{A}\u{6}\u{2}\u{8B}\u{8D}\u{7}\u{F}\u{2}\u{2}'
      '\u{8C}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{8D}'
      '\u{8E}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{90}\u{5}\u{C}\u{7}\u{2}\u{8F}\u{8C}'
      '\u{3}\u{2}\u{2}\u{2}\u{8F}\u{90}\u{3}\u{2}\u{2}\u{2}\u{90}\u{96}\u{3}'
      '\u{2}\u{2}\u{2}\u{91}\u{97}\u{7}\u{E}\u{2}\u{2}\u{92}\u{94}\u{7}\u{10}'
      '\u{2}\u{2}\u{93}\u{92}\u{3}\u{2}\u{2}\u{2}\u{93}\u{94}\u{3}\u{2}\u{2}'
      '\u{2}\u{94}\u{95}\u{3}\u{2}\u{2}\u{2}\u{95}\u{97}\u{7}\u{11}\u{2}\u{2}'
      '\u{96}\u{91}\u{3}\u{2}\u{2}\u{2}\u{96}\u{93}\u{3}\u{2}\u{2}\u{2}\u{97}'
      '\u{98}\u{3}\u{2}\u{2}\u{2}\u{98}\u{99}\u{5}\u{C}\u{7}\u{2}\u{99}\u{B5}'
      '\u{3}\u{2}\u{2}\u{2}\u{9A}\u{9B}\u{9}\u{2}\u{2}\u{2}\u{9B}\u{B5}\u{5}'
      '\u{C}\u{7}\u{2}\u{9C}\u{9D}\u{7}\u{14}\u{2}\u{2}\u{9D}\u{9E}\u{7}\u{C1}'
      '\u{2}\u{2}\u{9E}\u{9F}\u{9}\u{3}\u{2}\u{2}\u{9F}\u{B5}\u{5}\u{C}\u{7}'
      '\u{2}\u{A0}\u{A1}\u{9}\u{4}\u{2}\u{2}\u{A1}\u{A2}\u{5}\u{C}\u{7}\u{2}'
      '\u{A2}\u{A3}\u{9}\u{5}\u{2}\u{2}\u{A3}\u{A4}\u{7}\u{C1}\u{2}\u{2}\u{A4}'
      '\u{B5}\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A7}\u{7}\u{1A}\u{2}\u{2}\u{A6}\u{A8}'
      '\u{7}\u{1B}\u{2}\u{2}\u{A7}\u{A6}\u{3}\u{2}\u{2}\u{2}\u{A7}\u{A8}\u{3}'
      '\u{2}\u{2}\u{2}\u{A8}\u{B5}\u{3}\u{2}\u{2}\u{2}\u{A9}\u{AB}\u{7}\u{1C}'
      '\u{2}\u{2}\u{AA}\u{AC}\u{7}\u{1B}\u{2}\u{2}\u{AB}\u{AA}\u{3}\u{2}\u{2}'
      '\u{2}\u{AB}\u{AC}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{B5}\u{3}\u{2}\u{2}\u{2}'
      '\u{AD}\u{AF}\u{7}\u{1D}\u{2}\u{2}\u{AE}\u{B0}\u{7}\u{1E}\u{2}\u{2}\u{AF}'
      '\u{AE}\u{3}\u{2}\u{2}\u{2}\u{AF}\u{B0}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{B1}'
      '\u{3}\u{2}\u{2}\u{2}\u{B1}\u{B5}\u{5}\u{C}\u{7}\u{2}\u{B2}\u{B3}\u{9}'
      '\u{6}\u{2}\u{2}\u{B3}\u{B5}\u{5}\u{C}\u{7}\u{2}\u{B4}\u{70}\u{3}\u{2}'
      '\u{2}\u{2}\u{B4}\u{78}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{7B}\u{3}\u{2}\u{2}'
      '\u{2}\u{B4}\u{8A}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{9A}\u{3}\u{2}\u{2}\u{2}'
      '\u{B4}\u{9C}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{A0}\u{3}\u{2}\u{2}\u{2}\u{B4}'
      '\u{A5}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{AD}'
      '\u{3}\u{2}\u{2}\u{2}\u{B4}\u{B2}\u{3}\u{2}\u{2}\u{2}\u{B5}\u{9}\u{3}'
      '\u{2}\u{2}\u{2}\u{B6}\u{B8}\u{7}\u{22}\u{2}\u{2}\u{B7}\u{B6}\u{3}\u{2}'
      '\u{2}\u{2}\u{B7}\u{B8}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{B9}\u{3}\u{2}\u{2}'
      '\u{2}\u{B9}\u{C1}\u{5}\u{3A}\u{1E}\u{2}\u{BA}\u{BB}\u{7}\u{23}\u{2}\u{2}'
      '\u{BB}\u{C1}\u{5}\u{3A}\u{1E}\u{2}\u{BC}\u{BD}\u{7}\u{24}\u{2}\u{2}\u{BD}'
      '\u{C1}\u{5}\u{3A}\u{1E}\u{2}\u{BE}\u{BF}\u{7}\u{25}\u{2}\u{2}\u{BF}\u{C1}'
      '\u{5}\u{3A}\u{1E}\u{2}\u{C0}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{BA}\u{3}'
      '\u{2}\u{2}\u{2}\u{C0}\u{BC}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{BE}\u{3}\u{2}'
      '\u{2}\u{2}\u{C1}\u{B}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{C3}\u{8}\u{7}\u{1}'
      '\u{2}\u{C3}\u{C4}\u{7}\u{26}\u{2}\u{2}\u{C4}\u{C5}\u{5}\u{C}\u{7}\u{2}'
      '\u{C5}\u{C6}\u{7}\u{27}\u{2}\u{2}\u{C6}\u{D2}\u{3}\u{2}\u{2}\u{2}\u{C7}'
      '\u{D2}\u{5}\u{10}\u{9}\u{2}\u{C8}\u{C9}\u{7}\u{28}\u{2}\u{2}\u{C9}\u{D2}'
      '\u{5}\u{C}\u{7}\u{E}\u{CA}\u{CB}\u{7}\u{29}\u{2}\u{2}\u{CB}\u{D2}\u{5}'
      '\u{C}\u{7}\u{D}\u{CC}\u{CF}\u{7}\u{C8}\u{2}\u{2}\u{CD}\u{CF}\u{7}\u{C9}'
      '\u{2}\u{2}\u{CE}\u{CC}\u{3}\u{2}\u{2}\u{2}\u{CE}\u{CD}\u{3}\u{2}\u{2}'
      '\u{2}\u{CF}\u{D0}\u{3}\u{2}\u{2}\u{2}\u{D0}\u{D2}\u{5}\u{C}\u{7}\u{C}'
      '\u{D1}\u{C2}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{D1}'
      '\u{C8}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{CA}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{CE}'
      '\u{3}\u{2}\u{2}\u{2}\u{D2}\u{F9}\u{3}\u{2}\u{2}\u{2}\u{D3}\u{D4}\u{C}'
      '\u{A}\u{2}\u{2}\u{D4}\u{D5}\u{7}\u{2D}\u{2}\u{2}\u{D5}\u{F8}\u{5}\u{C}'
      '\u{7}\u{B}\u{D6}\u{D7}\u{C}\u{9}\u{2}\u{2}\u{D7}\u{D8}\u{9}\u{7}\u{2}'
      '\u{2}\u{D8}\u{F8}\u{5}\u{C}\u{7}\u{A}\u{D9}\u{DA}\u{C}\u{8}\u{2}\u{2}'
      '\u{DA}\u{DB}\u{9}\u{8}\u{2}\u{2}\u{DB}\u{F8}\u{5}\u{C}\u{7}\u{9}\u{DC}'
      '\u{DD}\u{C}\u{7}\u{2}\u{2}\u{DD}\u{DE}\u{9}\u{9}\u{2}\u{2}\u{DE}\u{F8}'
      '\u{5}\u{C}\u{7}\u{8}\u{DF}\u{E0}\u{C}\u{6}\u{2}\u{2}\u{E0}\u{E1}\u{5}'
      '\u{E}\u{8}\u{2}\u{E1}\u{E2}\u{5}\u{C}\u{7}\u{7}\u{E2}\u{F8}\u{3}\u{2}'
      '\u{2}\u{2}\u{E3}\u{E4}\u{C}\u{4}\u{2}\u{2}\u{E4}\u{E5}\u{7}\u{33}\u{2}'
      '\u{2}\u{E5}\u{F8}\u{5}\u{C}\u{7}\u{5}\u{E6}\u{E7}\u{C}\u{3}\u{2}\u{2}'
      '\u{E7}\u{E8}\u{7}\u{34}\u{2}\u{2}\u{E8}\u{F8}\u{5}\u{C}\u{7}\u{4}\u{E9}'
      '\u{EC}\u{C}\u{B}\u{2}\u{2}\u{EA}\u{ED}\u{5}\u{3C}\u{1F}\u{2}\u{EB}\u{ED}'
      '\u{5}\u{3E}\u{20}\u{2}\u{EC}\u{EA}\u{3}\u{2}\u{2}\u{2}\u{EC}\u{EB}\u{3}'
      '\u{2}\u{2}\u{2}\u{ED}\u{EE}\u{3}\u{2}\u{2}\u{2}\u{EE}\u{EF}\u{9}\u{A}'
      '\u{2}\u{2}\u{EF}\u{F8}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{F3}\u{C}\u{5}\u{2}'
      '\u{2}\u{F1}\u{F4}\u{5}\u{3C}\u{1F}\u{2}\u{F2}\u{F4}\u{5}\u{3E}\u{20}'
      '\u{2}\u{F3}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{F3}\u{F2}\u{3}\u{2}\u{2}\u{2}'
      '\u{F4}\u{F5}\u{3}\u{2}\u{2}\u{2}\u{F5}\u{F6}\u{5}\u{12}\u{A}\u{2}\u{F6}'
      '\u{F8}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{D3}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{D6}'
      '\u{3}\u{2}\u{2}\u{2}\u{F7}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{DC}\u{3}'
      '\u{2}\u{2}\u{2}\u{F7}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{E3}\u{3}\u{2}'
      '\u{2}\u{2}\u{F7}\u{E6}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{E9}\u{3}\u{2}\u{2}'
      '\u{2}\u{F7}\u{F0}\u{3}\u{2}\u{2}\u{2}\u{F8}\u{FB}\u{3}\u{2}\u{2}\u{2}'
      '\u{F9}\u{F7}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{FA}\u{3}\u{2}\u{2}\u{2}\u{FA}'
      '\u{D}\u{3}\u{2}\u{2}\u{2}\u{FB}\u{F9}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{10A}'
      '\u{7}\u{35}\u{2}\u{2}\u{FD}\u{FF}\u{5}\u{3C}\u{1F}\u{2}\u{FE}\u{FD}\u{3}'
      '\u{2}\u{2}\u{2}\u{FE}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{FF}\u{100}\u{3}\u{2}'
      '\u{2}\u{2}\u{100}\u{10A}\u{7}\u{36}\u{2}\u{2}\u{101}\u{103}\u{5}\u{3C}'
      '\u{1F}\u{2}\u{102}\u{101}\u{3}\u{2}\u{2}\u{2}\u{102}\u{103}\u{3}\u{2}'
      '\u{2}\u{2}\u{103}\u{104}\u{3}\u{2}\u{2}\u{2}\u{104}\u{106}\u{7}\u{37}'
      '\u{2}\u{2}\u{105}\u{107}\u{7}\u{7}\u{2}\u{2}\u{106}\u{105}\u{3}\u{2}'
      '\u{2}\u{2}\u{106}\u{107}\u{3}\u{2}\u{2}\u{2}\u{107}\u{10A}\u{3}\u{2}'
      '\u{2}\u{2}\u{108}\u{10A}\u{7}\u{38}\u{2}\u{2}\u{109}\u{FC}\u{3}\u{2}'
      '\u{2}\u{2}\u{109}\u{FE}\u{3}\u{2}\u{2}\u{2}\u{109}\u{102}\u{3}\u{2}\u{2}'
      '\u{2}\u{109}\u{108}\u{3}\u{2}\u{2}\u{2}\u{10A}\u{15E}\u{3}\u{2}\u{2}'
      '\u{2}\u{10B}\u{11A}\u{7}\u{39}\u{2}\u{2}\u{10C}\u{11A}\u{7}\u{3A}\u{2}'
      '\u{2}\u{10D}\u{10F}\u{5}\u{3C}\u{1F}\u{2}\u{10E}\u{10D}\u{3}\u{2}\u{2}'
      '\u{2}\u{10E}\u{10F}\u{3}\u{2}\u{2}\u{2}\u{10F}\u{110}\u{3}\u{2}\u{2}'
      '\u{2}\u{110}\u{11A}\u{7}\u{3B}\u{2}\u{2}\u{111}\u{114}\u{5}\u{3E}\u{20}'
      '\u{2}\u{112}\u{114}\u{7}\u{28}\u{2}\u{2}\u{113}\u{111}\u{3}\u{2}\u{2}'
      '\u{2}\u{113}\u{112}\u{3}\u{2}\u{2}\u{2}\u{114}\u{115}\u{3}\u{2}\u{2}'
      '\u{2}\u{115}\u{117}\u{7}\u{37}\u{2}\u{2}\u{116}\u{118}\u{7}\u{7}\u{2}'
      '\u{2}\u{117}\u{116}\u{3}\u{2}\u{2}\u{2}\u{117}\u{118}\u{3}\u{2}\u{2}'
      '\u{2}\u{118}\u{11A}\u{3}\u{2}\u{2}\u{2}\u{119}\u{10B}\u{3}\u{2}\u{2}'
      '\u{2}\u{119}\u{10C}\u{3}\u{2}\u{2}\u{2}\u{119}\u{10E}\u{3}\u{2}\u{2}'
      '\u{2}\u{119}\u{113}\u{3}\u{2}\u{2}\u{2}\u{11A}\u{15E}\u{3}\u{2}\u{2}'
      '\u{2}\u{11B}\u{12D}\u{7}\u{3C}\u{2}\u{2}\u{11C}\u{11E}\u{5}\u{3C}\u{1F}'
      '\u{2}\u{11D}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{11D}\u{11E}\u{3}\u{2}\u{2}'
      '\u{2}\u{11E}\u{11F}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{12D}\u{7}\u{3D}\u{2}'
      '\u{2}\u{120}\u{122}\u{5}\u{3C}\u{1F}\u{2}\u{121}\u{120}\u{3}\u{2}\u{2}'
      '\u{2}\u{121}\u{122}\u{3}\u{2}\u{2}\u{2}\u{122}\u{123}\u{3}\u{2}\u{2}'
      '\u{2}\u{123}\u{124}\u{7}\u{3E}\u{2}\u{2}\u{124}\u{126}\u{7}\u{3F}\u{2}'
      '\u{2}\u{125}\u{127}\u{7}\u{34}\u{2}\u{2}\u{126}\u{125}\u{3}\u{2}\u{2}'
      '\u{2}\u{126}\u{127}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{3}\u{2}\u{2}'
      '\u{2}\u{128}\u{12A}\u{7}\u{37}\u{2}\u{2}\u{129}\u{12B}\u{7}\u{7}\u{2}'
      '\u{2}\u{12A}\u{129}\u{3}\u{2}\u{2}\u{2}\u{12A}\u{12B}\u{3}\u{2}\u{2}'
      '\u{2}\u{12B}\u{12D}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{11B}\u{3}\u{2}\u{2}'
      '\u{2}\u{12C}\u{11D}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{121}\u{3}\u{2}\u{2}'
      '\u{2}\u{12D}\u{15E}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{13B}\u{7}\u{40}\u{2}'
      '\u{2}\u{12F}\u{131}\u{5}\u{3C}\u{1F}\u{2}\u{130}\u{12F}\u{3}\u{2}\u{2}'
      '\u{2}\u{130}\u{131}\u{3}\u{2}\u{2}\u{2}\u{131}\u{132}\u{3}\u{2}\u{2}'
      '\u{2}\u{132}\u{13B}\u{7}\u{3D}\u{2}\u{2}\u{133}\u{135}\u{5}\u{3C}\u{1F}'
      '\u{2}\u{134}\u{133}\u{3}\u{2}\u{2}\u{2}\u{134}\u{135}\u{3}\u{2}\u{2}'
      '\u{2}\u{135}\u{136}\u{3}\u{2}\u{2}\u{2}\u{136}\u{138}\u{7}\u{3E}\u{2}'
      '\u{2}\u{137}\u{139}\u{7}\u{3F}\u{2}\u{2}\u{138}\u{137}\u{3}\u{2}\u{2}'
      '\u{2}\u{138}\u{139}\u{3}\u{2}\u{2}\u{2}\u{139}\u{13B}\u{3}\u{2}\u{2}'
      '\u{2}\u{13A}\u{12E}\u{3}\u{2}\u{2}\u{2}\u{13A}\u{130}\u{3}\u{2}\u{2}'
      '\u{2}\u{13A}\u{134}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{15E}\u{3}\u{2}\u{2}'
      '\u{2}\u{13C}\u{14E}\u{7}\u{41}\u{2}\u{2}\u{13D}\u{13F}\u{5}\u{3C}\u{1F}'
      '\u{2}\u{13E}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13E}\u{13F}\u{3}\u{2}\u{2}'
      '\u{2}\u{13F}\u{140}\u{3}\u{2}\u{2}\u{2}\u{140}\u{14E}\u{7}\u{42}\u{2}'
      '\u{2}\u{141}\u{143}\u{5}\u{3C}\u{1F}\u{2}\u{142}\u{141}\u{3}\u{2}\u{2}'
      '\u{2}\u{142}\u{143}\u{3}\u{2}\u{2}\u{2}\u{143}\u{144}\u{3}\u{2}\u{2}'
      '\u{2}\u{144}\u{145}\u{7}\u{43}\u{2}\u{2}\u{145}\u{147}\u{7}\u{3F}\u{2}'
      '\u{2}\u{146}\u{148}\u{7}\u{34}\u{2}\u{2}\u{147}\u{146}\u{3}\u{2}\u{2}'
      '\u{2}\u{147}\u{148}\u{3}\u{2}\u{2}\u{2}\u{148}\u{149}\u{3}\u{2}\u{2}'
      '\u{2}\u{149}\u{14B}\u{7}\u{37}\u{2}\u{2}\u{14A}\u{14C}\u{7}\u{7}\u{2}'
      '\u{2}\u{14B}\u{14A}\u{3}\u{2}\u{2}\u{2}\u{14B}\u{14C}\u{3}\u{2}\u{2}'
      '\u{2}\u{14C}\u{14E}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{13C}\u{3}\u{2}\u{2}'
      '\u{2}\u{14D}\u{13E}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{142}\u{3}\u{2}\u{2}'
      '\u{2}\u{14E}\u{15E}\u{3}\u{2}\u{2}\u{2}\u{14F}\u{15C}\u{7}\u{44}\u{2}'
      '\u{2}\u{150}\u{152}\u{5}\u{3C}\u{1F}\u{2}\u{151}\u{150}\u{3}\u{2}\u{2}'
      '\u{2}\u{151}\u{152}\u{3}\u{2}\u{2}\u{2}\u{152}\u{153}\u{3}\u{2}\u{2}'
      '\u{2}\u{153}\u{15C}\u{7}\u{45}\u{2}\u{2}\u{154}\u{156}\u{5}\u{3C}\u{1F}'
      '\u{2}\u{155}\u{154}\u{3}\u{2}\u{2}\u{2}\u{155}\u{156}\u{3}\u{2}\u{2}'
      '\u{2}\u{156}\u{157}\u{3}\u{2}\u{2}\u{2}\u{157}\u{159}\u{7}\u{43}\u{2}'
      '\u{2}\u{158}\u{15A}\u{7}\u{3F}\u{2}\u{2}\u{159}\u{158}\u{3}\u{2}\u{2}'
      '\u{2}\u{159}\u{15A}\u{3}\u{2}\u{2}\u{2}\u{15A}\u{15C}\u{3}\u{2}\u{2}'
      '\u{2}\u{15B}\u{14F}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{151}\u{3}\u{2}\u{2}'
      '\u{2}\u{15B}\u{155}\u{3}\u{2}\u{2}\u{2}\u{15C}\u{15E}\u{3}\u{2}\u{2}'
      '\u{2}\u{15D}\u{109}\u{3}\u{2}\u{2}\u{2}\u{15D}\u{119}\u{3}\u{2}\u{2}'
      '\u{2}\u{15D}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{15D}\u{13A}\u{3}\u{2}\u{2}'
      '\u{2}\u{15D}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{15D}\u{15B}\u{3}\u{2}\u{2}'
      '\u{2}\u{15E}\u{F}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{160}\u{7}\u{26}\u{2}\u{2}'
      '\u{160}\u{161}\u{5}\u{10}\u{9}\u{2}\u{161}\u{162}\u{7}\u{27}\u{2}\u{2}'
      '\u{162}\u{171}\u{3}\u{2}\u{2}\u{2}\u{163}\u{171}\u{5}\u{16}\u{C}\u{2}'
      '\u{164}\u{165}\u{7}\u{29}\u{2}\u{2}\u{165}\u{171}\u{5}\u{10}\u{9}\u{2}'
      '\u{166}\u{171}\u{5}\u{14}\u{B}\u{2}\u{167}\u{168}\u{5}\u{1A}\u{E}\u{2}'
      '\u{168}\u{169}\u{5}\u{10}\u{9}\u{2}\u{169}\u{171}\u{3}\u{2}\u{2}\u{2}'
      '\u{16A}\u{171}\u{5}\u{28}\u{15}\u{2}\u{16B}\u{16C}\u{5}\u{12}\u{A}\u{2}'
      '\u{16C}\u{16D}\u{5}\u{38}\u{1D}\u{2}\u{16D}\u{16E}\u{5}\u{10}\u{9}\u{2}'
      '\u{16E}\u{171}\u{3}\u{2}\u{2}\u{2}\u{16F}\u{171}\u{7}\u{C1}\u{2}\u{2}'
      '\u{170}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{170}\u{163}\u{3}\u{2}\u{2}\u{2}'
      '\u{170}\u{164}\u{3}\u{2}\u{2}\u{2}\u{170}\u{166}\u{3}\u{2}\u{2}\u{2}'
      '\u{170}\u{167}\u{3}\u{2}\u{2}\u{2}\u{170}\u{16A}\u{3}\u{2}\u{2}\u{2}'
      '\u{170}\u{16B}\u{3}\u{2}\u{2}\u{2}\u{170}\u{16F}\u{3}\u{2}\u{2}\u{2}'
      '\u{171}\u{11}\u{3}\u{2}\u{2}\u{2}\u{172}\u{17A}\u{9}\u{B}\u{2}\u{2}\u{173}'
      '\u{17A}\u{5}\u{30}\u{19}\u{2}\u{174}\u{17A}\u{5}\u{36}\u{1C}\u{2}\u{175}'
      '\u{17A}\u{5}\u{32}\u{1A}\u{2}\u{176}\u{17A}\u{5}\u{34}\u{1B}\u{2}\u{177}'
      '\u{17A}\u{5}\u{2A}\u{16}\u{2}\u{178}\u{17A}\u{7}\u{C1}\u{2}\u{2}\u{179}'
      '\u{172}\u{3}\u{2}\u{2}\u{2}\u{179}\u{173}\u{3}\u{2}\u{2}\u{2}\u{179}'
      '\u{174}\u{3}\u{2}\u{2}\u{2}\u{179}\u{175}\u{3}\u{2}\u{2}\u{2}\u{179}'
      '\u{176}\u{3}\u{2}\u{2}\u{2}\u{179}\u{177}\u{3}\u{2}\u{2}\u{2}\u{179}'
      '\u{178}\u{3}\u{2}\u{2}\u{2}\u{17A}\u{13}\u{3}\u{2}\u{2}\u{2}\u{17B}\u{17C}'
      '\u{7}\u{49}\u{2}\u{2}\u{17C}\u{17F}\u{5}\u{10}\u{9}\u{2}\u{17D}\u{17E}'
      '\u{7}\u{4A}\u{2}\u{2}\u{17E}\u{180}\u{5}\u{10}\u{9}\u{2}\u{17F}\u{17D}'
      '\u{3}\u{2}\u{2}\u{2}\u{17F}\u{180}\u{3}\u{2}\u{2}\u{2}\u{180}\u{181}'
      '\u{3}\u{2}\u{2}\u{2}\u{181}\u{182}\u{9}\u{3}\u{2}\u{2}\u{182}\u{183}'
      '\u{5}\u{10}\u{9}\u{2}\u{183}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{184}\u{185}'
      '\u{7}\u{49}\u{2}\u{2}\u{185}\u{186}\u{5}\u{10}\u{9}\u{2}\u{186}\u{187}'
      '\u{7}\u{4A}\u{2}\u{2}\u{187}\u{18A}\u{5}\u{10}\u{9}\u{2}\u{188}\u{189}'
      '\u{9}\u{3}\u{2}\u{2}\u{189}\u{18B}\u{5}\u{10}\u{9}\u{2}\u{18A}\u{188}'
      '\u{3}\u{2}\u{2}\u{2}\u{18A}\u{18B}\u{3}\u{2}\u{2}\u{2}\u{18B}\u{1AD}'
      '\u{3}\u{2}\u{2}\u{2}\u{18C}\u{18F}\u{7}\u{4B}\u{2}\u{2}\u{18D}\u{18E}'
      '\u{7}\u{26}\u{2}\u{2}\u{18E}\u{190}\u{7}\u{27}\u{2}\u{2}\u{18F}\u{18D}'
      '\u{3}\u{2}\u{2}\u{2}\u{18F}\u{190}\u{3}\u{2}\u{2}\u{2}\u{190}\u{1AD}'
      '\u{3}\u{2}\u{2}\u{2}\u{191}\u{192}\u{7}\u{C1}\u{2}\u{2}\u{192}\u{19D}'
      '\u{7}\u{26}\u{2}\u{2}\u{193}\u{19A}\u{5}\u{10}\u{9}\u{2}\u{194}\u{196}'
      '\u{7}\u{4C}\u{2}\u{2}\u{195}\u{194}\u{3}\u{2}\u{2}\u{2}\u{195}\u{196}'
      '\u{3}\u{2}\u{2}\u{2}\u{196}\u{197}\u{3}\u{2}\u{2}\u{2}\u{197}\u{199}'
      '\u{5}\u{10}\u{9}\u{2}\u{198}\u{195}\u{3}\u{2}\u{2}\u{2}\u{199}\u{19C}'
      '\u{3}\u{2}\u{2}\u{2}\u{19A}\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19A}\u{198}'
      '\u{3}\u{2}\u{2}\u{2}\u{19B}\u{19E}\u{3}\u{2}\u{2}\u{2}\u{19C}\u{19A}'
      '\u{3}\u{2}\u{2}\u{2}\u{19D}\u{193}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{19E}'
      '\u{3}\u{2}\u{2}\u{2}\u{19E}\u{19F}\u{3}\u{2}\u{2}\u{2}\u{19F}\u{1AD}'
      '\u{7}\u{27}\u{2}\u{2}\u{1A0}\u{1A1}\u{7}\u{C1}\u{2}\u{2}\u{1A1}\u{1A2}'
      '\u{7}\u{10}\u{2}\u{2}\u{1A2}\u{1A9}\u{5}\u{10}\u{9}\u{2}\u{1A3}\u{1A5}'
      '\u{7}\u{4C}\u{2}\u{2}\u{1A4}\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{1A4}\u{1A5}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A6}\u{3}\u{2}\u{2}\u{2}\u{1A6}\u{1A8}'
      '\u{5}\u{10}\u{9}\u{2}\u{1A7}\u{1A4}\u{3}\u{2}\u{2}\u{2}\u{1A8}\u{1AB}'
      '\u{3}\u{2}\u{2}\u{2}\u{1A9}\u{1AA}\u{3}\u{2}\u{2}\u{2}\u{1A9}\u{1A7}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AA}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1A9}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{17B}\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{184}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{18C}\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{191}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{1A0}\u{3}\u{2}\u{2}\u{2}\u{1AD}\u{15}\u{3}'
      '\u{2}\u{2}\u{2}\u{1AE}\u{1B3}\u{5}\u{18}\u{D}\u{2}\u{1AF}\u{1B3}\u{7}'
      '\u{BE}\u{2}\u{2}\u{1B0}\u{1B3}\u{7}\u{BC}\u{2}\u{2}\u{1B1}\u{1B3}\u{7}'
      '\u{BD}\u{2}\u{2}\u{1B2}\u{1AE}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1AF}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B2}\u{1B0}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1B1}\u{3}'
      '\u{2}\u{2}\u{2}\u{1B3}\u{17}\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1B5}\u{9}\u{C}'
      '\u{2}\u{2}\u{1B5}\u{19}\u{3}\u{2}\u{2}\u{2}\u{1B6}\u{1B7}\u{9}\u{D}\u{2}'
      '\u{2}\u{1B7}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{1B8}\u{1BA}\u{7}\u{C1}\u{2}'
      '\u{2}\u{1B9}\u{1B8}\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1BD}\u{3}\u{2}\u{2}'
      '\u{2}\u{1BB}\u{1B9}\u{3}\u{2}\u{2}\u{2}\u{1BB}\u{1BC}\u{3}\u{2}\u{2}'
      '\u{2}\u{1BC}\u{1BE}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{1BB}\u{3}\u{2}\u{2}'
      '\u{2}\u{1BE}\u{1BF}\u{5}\u{1E}\u{10}\u{2}\u{1BF}\u{1C0}\u{5}\u{2A}\u{16}'
      '\u{2}\u{1C0}\u{1CC}\u{3}\u{2}\u{2}\u{2}\u{1C1}\u{1C3}\u{7}\u{C1}\u{2}'
      '\u{2}\u{1C2}\u{1C1}\u{3}\u{2}\u{2}\u{2}\u{1C3}\u{1C6}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C4}\u{1C2}\u{3}\u{2}\u{2}\u{2}\u{1C4}\u{1C5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C5}\u{1C7}\u{3}\u{2}\u{2}\u{2}\u{1C6}\u{1C4}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C7}\u{1C9}\u{5}\u{2A}\u{16}\u{2}\u{1C8}\u{1CA}\u{5}\u{1E}\u{10}'
      '\u{2}\u{1C9}\u{1C8}\u{3}\u{2}\u{2}\u{2}\u{1C9}\u{1CA}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CA}\u{1CC}\u{3}\u{2}\u{2}\u{2}\u{1CB}\u{1BB}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CB}\u{1C4}\u{3}\u{2}\u{2}\u{2}\u{1CC}\u{1D}\u{3}\u{2}\u{2}\u{2}'
      '\u{1CD}\u{1CF}\u{5}\u{20}\u{11}\u{2}\u{1CE}\u{1CD}\u{3}\u{2}\u{2}\u{2}'
      '\u{1CE}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1CF}\u{1D0}\u{3}\u{2}\u{2}\u{2}'
      '\u{1D0}\u{1D5}\u{5}\u{16}\u{C}\u{2}\u{1D1}\u{1D2}\u{7}\u{34}\u{2}\u{2}'
      '\u{1D2}\u{1D4}\u{5}\u{16}\u{C}\u{2}\u{1D3}\u{1D1}\u{3}\u{2}\u{2}\u{2}'
      '\u{1D4}\u{1D7}\u{3}\u{2}\u{2}\u{2}\u{1D5}\u{1D3}\u{3}\u{2}\u{2}\u{2}'
      '\u{1D5}\u{1D6}\u{3}\u{2}\u{2}\u{2}\u{1D6}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{1D7}'
      '\u{1D5}\u{3}\u{2}\u{2}\u{2}\u{1D8}\u{1E9}\u{7}\u{63}\u{2}\u{2}\u{1D9}'
      '\u{1DA}\u{9}\u{E}\u{2}\u{2}\u{1DA}\u{1DC}\u{7}\u{10}\u{2}\u{2}\u{1DB}'
      '\u{1DD}\u{7}\u{63}\u{2}\u{2}\u{1DC}\u{1DB}\u{3}\u{2}\u{2}\u{2}\u{1DC}'
      '\u{1DD}\u{3}\u{2}\u{2}\u{2}\u{1DD}\u{1E9}\u{3}\u{2}\u{2}\u{2}\u{1DE}'
      '\u{1DF}\u{9}\u{F}\u{2}\u{2}\u{1DF}\u{1E1}\u{7}\u{10}\u{2}\u{2}\u{1E0}'
      '\u{1E2}\u{7}\u{63}\u{2}\u{2}\u{1E1}\u{1E0}\u{3}\u{2}\u{2}\u{2}\u{1E1}'
      '\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E9}\u{3}\u{2}\u{2}\u{2}\u{1E3}'
      '\u{1E5}\u{9}\u{10}\u{2}\u{2}\u{1E4}\u{1E6}\u{7}\u{63}\u{2}\u{2}\u{1E5}'
      '\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{1E5}\u{1E6}\u{3}\u{2}\u{2}\u{2}\u{1E6}'
      '\u{1E9}\u{3}\u{2}\u{2}\u{2}\u{1E7}\u{1E9}\u{9}\u{11}\u{2}\u{2}\u{1E8}'
      '\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{1E8}\u{1D9}\u{3}\u{2}\u{2}\u{2}\u{1E8}'
      '\u{1DE}\u{3}\u{2}\u{2}\u{2}\u{1E8}\u{1E3}\u{3}\u{2}\u{2}\u{2}\u{1E8}'
      '\u{1E7}\u{3}\u{2}\u{2}\u{2}\u{1E9}\u{21}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1EB}'
      '\u{5}\u{24}\u{13}\u{2}\u{1EB}\u{1EC}\u{7}\u{26}\u{2}\u{2}\u{1EC}\u{1ED}'
      '\u{5}\u{10}\u{9}\u{2}\u{1ED}\u{1EE}\u{7}\u{27}\u{2}\u{2}\u{1EE}\u{1F6}'
      '\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1F0}\u{5}\u{24}\u{13}\u{2}\u{1F0}\u{1F1}'
      '\u{7}\u{6E}\u{2}\u{2}\u{1F1}\u{1F6}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F3}'
      '\u{5}\u{24}\u{13}\u{2}\u{1F3}\u{1F4}\u{5}\u{10}\u{9}\u{2}\u{1F4}\u{1F6}'
      '\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1EF}'
      '\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1F2}\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{23}\u{3}'
      '\u{2}\u{2}\u{2}\u{1F7}\u{1F8}\u{9}\u{12}\u{2}\u{2}\u{1F8}\u{1FA}\u{5}'
      '\u{2C}\u{17}\u{2}\u{1F9}\u{1FB}\u{7}\u{6F}\u{2}\u{2}\u{1FA}\u{1F9}\u{3}'
      '\u{2}\u{2}\u{2}\u{1FA}\u{1FB}\u{3}\u{2}\u{2}\u{2}\u{1FB}\u{1FC}\u{3}'
      '\u{2}\u{2}\u{2}\u{1FC}\u{1FE}\u{7}\u{70}\u{2}\u{2}\u{1FD}\u{1FF}\u{7}'
      '\u{71}\u{2}\u{2}\u{1FE}\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{1FE}\u{1FF}\u{3}'
      '\u{2}\u{2}\u{2}\u{1FF}\u{235}\u{3}\u{2}\u{2}\u{2}\u{200}\u{201}\u{9}'
      '\u{12}\u{2}\u{2}\u{201}\u{203}\u{5}\u{2E}\u{18}\u{2}\u{202}\u{204}\u{7}'
      '\u{72}\u{2}\u{2}\u{203}\u{202}\u{3}\u{2}\u{2}\u{2}\u{203}\u{204}\u{3}'
      '\u{2}\u{2}\u{2}\u{204}\u{205}\u{3}\u{2}\u{2}\u{2}\u{205}\u{207}\u{7}'
      '\u{70}\u{2}\u{2}\u{206}\u{208}\u{7}\u{71}\u{2}\u{2}\u{207}\u{206}\u{3}'
      '\u{2}\u{2}\u{2}\u{207}\u{208}\u{3}\u{2}\u{2}\u{2}\u{208}\u{235}\u{3}'
      '\u{2}\u{2}\u{2}\u{209}\u{20A}\u{9}\u{12}\u{2}\u{2}\u{20A}\u{20B}\u{5}'
      '\u{2C}\u{17}\u{2}\u{20B}\u{20C}\u{9}\u{13}\u{2}\u{2}\u{20C}\u{20E}\u{7}'
      '\u{70}\u{2}\u{2}\u{20D}\u{20F}\u{7}\u{71}\u{2}\u{2}\u{20E}\u{20D}\u{3}'
      '\u{2}\u{2}\u{2}\u{20E}\u{20F}\u{3}\u{2}\u{2}\u{2}\u{20F}\u{235}\u{3}'
      '\u{2}\u{2}\u{2}\u{210}\u{211}\u{9}\u{12}\u{2}\u{2}\u{211}\u{212}\u{5}'
      '\u{1A}\u{E}\u{2}\u{212}\u{216}\u{5}\u{2C}\u{17}\u{2}\u{213}\u{217}\u{7}'
      '\u{5A}\u{2}\u{2}\u{214}\u{217}\u{7}\u{75}\u{2}\u{2}\u{215}\u{217}\u{7}'
      '\u{5F}\u{2}\u{2}\u{216}\u{213}\u{3}\u{2}\u{2}\u{2}\u{216}\u{214}\u{3}'
      '\u{2}\u{2}\u{2}\u{216}\u{215}\u{3}\u{2}\u{2}\u{2}\u{217}\u{218}\u{3}'
      '\u{2}\u{2}\u{2}\u{218}\u{21A}\u{7}\u{70}\u{2}\u{2}\u{219}\u{21B}\u{7}'
      '\u{71}\u{2}\u{2}\u{21A}\u{219}\u{3}\u{2}\u{2}\u{2}\u{21A}\u{21B}\u{3}'
      '\u{2}\u{2}\u{2}\u{21B}\u{235}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21D}\u{9}'
      '\u{12}\u{2}\u{2}\u{21D}\u{21E}\u{5}\u{2C}\u{17}\u{2}\u{21E}\u{21F}\u{5}'
      '\u{16}\u{C}\u{2}\u{21F}\u{220}\u{9}\u{14}\u{2}\u{2}\u{220}\u{222}\u{7}'
      '\u{70}\u{2}\u{2}\u{221}\u{223}\u{7}\u{71}\u{2}\u{2}\u{222}\u{221}\u{3}'
      '\u{2}\u{2}\u{2}\u{222}\u{223}\u{3}\u{2}\u{2}\u{2}\u{223}\u{235}\u{3}'
      '\u{2}\u{2}\u{2}\u{224}\u{226}\u{9}\u{15}\u{2}\u{2}\u{225}\u{227}\u{7}'
      '\u{71}\u{2}\u{2}\u{226}\u{225}\u{3}\u{2}\u{2}\u{2}\u{226}\u{227}\u{3}'
      '\u{2}\u{2}\u{2}\u{227}\u{235}\u{3}\u{2}\u{2}\u{2}\u{228}\u{230}\u{7}'
      '\u{7A}\u{2}\u{2}\u{229}\u{230}\u{7}\u{7B}\u{2}\u{2}\u{22A}\u{22D}\u{7}'
      '\u{7}\u{2}\u{2}\u{22B}\u{22E}\u{5}\u{2C}\u{17}\u{2}\u{22C}\u{22E}\u{5}'
      '\u{2E}\u{18}\u{2}\u{22D}\u{22B}\u{3}\u{2}\u{2}\u{2}\u{22D}\u{22C}\u{3}'
      '\u{2}\u{2}\u{2}\u{22E}\u{230}\u{3}\u{2}\u{2}\u{2}\u{22F}\u{228}\u{3}'
      '\u{2}\u{2}\u{2}\u{22F}\u{229}\u{3}\u{2}\u{2}\u{2}\u{22F}\u{22A}\u{3}'
      '\u{2}\u{2}\u{2}\u{230}\u{232}\u{3}\u{2}\u{2}\u{2}\u{231}\u{233}\u{7}'
      '\u{70}\u{2}\u{2}\u{232}\u{231}\u{3}\u{2}\u{2}\u{2}\u{232}\u{233}\u{3}'
      '\u{2}\u{2}\u{2}\u{233}\u{235}\u{3}\u{2}\u{2}\u{2}\u{234}\u{1F7}\u{3}'
      '\u{2}\u{2}\u{2}\u{234}\u{200}\u{3}\u{2}\u{2}\u{2}\u{234}\u{209}\u{3}'
      '\u{2}\u{2}\u{2}\u{234}\u{210}\u{3}\u{2}\u{2}\u{2}\u{234}\u{21C}\u{3}'
      '\u{2}\u{2}\u{2}\u{234}\u{224}\u{3}\u{2}\u{2}\u{2}\u{234}\u{22F}\u{3}'
      '\u{2}\u{2}\u{2}\u{235}\u{25}\u{3}\u{2}\u{2}\u{2}\u{236}\u{237}\u{9}\u{16}'
      '\u{2}\u{2}\u{237}\u{238}\u{7}\u{26}\u{2}\u{2}\u{238}\u{239}\u{5}\u{C}'
      '\u{7}\u{2}\u{239}\u{23A}\u{7}\u{27}\u{2}\u{2}\u{23A}\u{23E}\u{3}\u{2}'
      '\u{2}\u{2}\u{23B}\u{23C}\u{9}\u{16}\u{2}\u{2}\u{23C}\u{23E}\u{5}\u{C}'
      '\u{7}\u{2}\u{23D}\u{236}\u{3}\u{2}\u{2}\u{2}\u{23D}\u{23B}\u{3}\u{2}'
      '\u{2}\u{2}\u{23E}\u{27}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{240}\u{5}\u{1C}'
      '\u{F}\u{2}\u{240}\u{242}\u{5}\u{22}\u{12}\u{2}\u{241}\u{243}\u{7}\u{33}'
      '\u{2}\u{2}\u{242}\u{241}\u{3}\u{2}\u{2}\u{2}\u{242}\u{243}\u{3}\u{2}'
      '\u{2}\u{2}\u{243}\u{244}\u{3}\u{2}\u{2}\u{2}\u{244}\u{246}\u{5}\u{22}'
      '\u{12}\u{2}\u{245}\u{247}\u{7}\u{33}\u{2}\u{2}\u{246}\u{245}\u{3}\u{2}'
      '\u{2}\u{2}\u{246}\u{247}\u{3}\u{2}\u{2}\u{2}\u{247}\u{248}\u{3}\u{2}'
      '\u{2}\u{2}\u{248}\u{24A}\u{5}\u{22}\u{12}\u{2}\u{249}\u{24B}\u{7}\u{33}'
      '\u{2}\u{2}\u{24A}\u{249}\u{3}\u{2}\u{2}\u{2}\u{24A}\u{24B}\u{3}\u{2}'
      '\u{2}\u{2}\u{24B}\u{24D}\u{3}\u{2}\u{2}\u{2}\u{24C}\u{24E}\u{5}\u{26}'
      '\u{14}\u{2}\u{24D}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{24D}\u{24E}\u{3}\u{2}'
      '\u{2}\u{2}\u{24E}\u{268}\u{3}\u{2}\u{2}\u{2}\u{24F}\u{250}\u{5}\u{1C}'
      '\u{F}\u{2}\u{250}\u{252}\u{5}\u{22}\u{12}\u{2}\u{251}\u{253}\u{7}\u{33}'
      '\u{2}\u{2}\u{252}\u{251}\u{3}\u{2}\u{2}\u{2}\u{252}\u{253}\u{3}\u{2}'
      '\u{2}\u{2}\u{253}\u{254}\u{3}\u{2}\u{2}\u{2}\u{254}\u{256}\u{5}\u{22}'
      '\u{12}\u{2}\u{255}\u{257}\u{7}\u{33}\u{2}\u{2}\u{256}\u{255}\u{3}\u{2}'
      '\u{2}\u{2}\u{256}\u{257}\u{3}\u{2}\u{2}\u{2}\u{257}\u{259}\u{3}\u{2}'
      '\u{2}\u{2}\u{258}\u{25A}\u{5}\u{26}\u{14}\u{2}\u{259}\u{258}\u{3}\u{2}'
      '\u{2}\u{2}\u{259}\u{25A}\u{3}\u{2}\u{2}\u{2}\u{25A}\u{268}\u{3}\u{2}'
      '\u{2}\u{2}\u{25B}\u{25C}\u{5}\u{1C}\u{F}\u{2}\u{25C}\u{25E}\u{5}\u{22}'
      '\u{12}\u{2}\u{25D}\u{25F}\u{7}\u{33}\u{2}\u{2}\u{25E}\u{25D}\u{3}\u{2}'
      '\u{2}\u{2}\u{25E}\u{25F}\u{3}\u{2}\u{2}\u{2}\u{25F}\u{261}\u{3}\u{2}'
      '\u{2}\u{2}\u{260}\u{262}\u{5}\u{26}\u{14}\u{2}\u{261}\u{260}\u{3}\u{2}'
      '\u{2}\u{2}\u{261}\u{262}\u{3}\u{2}\u{2}\u{2}\u{262}\u{268}\u{3}\u{2}'
      '\u{2}\u{2}\u{263}\u{265}\u{5}\u{1C}\u{F}\u{2}\u{264}\u{266}\u{5}\u{26}'
      '\u{14}\u{2}\u{265}\u{264}\u{3}\u{2}\u{2}\u{2}\u{265}\u{266}\u{3}\u{2}'
      '\u{2}\u{2}\u{266}\u{268}\u{3}\u{2}\u{2}\u{2}\u{267}\u{23F}\u{3}\u{2}'
      '\u{2}\u{2}\u{267}\u{24F}\u{3}\u{2}\u{2}\u{2}\u{267}\u{25B}\u{3}\u{2}'
      '\u{2}\u{2}\u{267}\u{263}\u{3}\u{2}\u{2}\u{2}\u{268}\u{29}\u{3}\u{2}\u{2}'
      '\u{2}\u{269}\u{284}\u{9}\u{17}\u{2}\u{2}\u{26A}\u{284}\u{9}\u{18}\u{2}'
      '\u{2}\u{26B}\u{284}\u{9}\u{19}\u{2}\u{2}\u{26C}\u{26D}\u{9}\u{1A}\u{2}'
      '\u{2}\u{26D}\u{277}\u{9}\u{1B}\u{2}\u{2}\u{26E}\u{26F}\u{7}\u{8A}\u{2}'
      '\u{2}\u{26F}\u{277}\u{9}\u{1C}\u{2}\u{2}\u{270}\u{277}\u{7}\u{8C}\u{2}'
      '\u{2}\u{271}\u{277}\u{7}\u{8D}\u{2}\u{2}\u{272}\u{277}\u{7}\u{8E}\u{2}'
      '\u{2}\u{273}\u{277}\u{7}\u{8F}\u{2}\u{2}\u{274}\u{277}\u{7}\u{90}\u{2}'
      '\u{2}\u{275}\u{277}\u{7}\u{91}\u{2}\u{2}\u{276}\u{26C}\u{3}\u{2}\u{2}'
      '\u{2}\u{276}\u{26E}\u{3}\u{2}\u{2}\u{2}\u{276}\u{270}\u{3}\u{2}\u{2}'
      '\u{2}\u{276}\u{271}\u{3}\u{2}\u{2}\u{2}\u{276}\u{272}\u{3}\u{2}\u{2}'
      '\u{2}\u{276}\u{273}\u{3}\u{2}\u{2}\u{2}\u{276}\u{274}\u{3}\u{2}\u{2}'
      '\u{2}\u{276}\u{275}\u{3}\u{2}\u{2}\u{2}\u{277}\u{284}\u{3}\u{2}\u{2}'
      '\u{2}\u{278}\u{284}\u{9}\u{1D}\u{2}\u{2}\u{279}\u{284}\u{9}\u{1E}\u{2}'
      '\u{2}\u{27A}\u{284}\u{9}\u{1F}\u{2}\u{2}\u{27B}\u{27C}\u{7}\u{98}\u{2}'
      '\u{2}\u{27C}\u{280}\u{9}\u{20}\u{2}\u{2}\u{27D}\u{280}\u{7}\u{9B}\u{2}'
      '\u{2}\u{27E}\u{280}\u{7}\u{9C}\u{2}\u{2}\u{27F}\u{27B}\u{3}\u{2}\u{2}'
      '\u{2}\u{27F}\u{27D}\u{3}\u{2}\u{2}\u{2}\u{27F}\u{27E}\u{3}\u{2}\u{2}'
      '\u{2}\u{280}\u{284}\u{3}\u{2}\u{2}\u{2}\u{281}\u{284}\u{9}\u{21}\u{2}'
      '\u{2}\u{282}\u{284}\u{9}\u{22}\u{2}\u{2}\u{283}\u{269}\u{3}\u{2}\u{2}'
      '\u{2}\u{283}\u{26A}\u{3}\u{2}\u{2}\u{2}\u{283}\u{26B}\u{3}\u{2}\u{2}'
      '\u{2}\u{283}\u{276}\u{3}\u{2}\u{2}\u{2}\u{283}\u{278}\u{3}\u{2}\u{2}'
      '\u{2}\u{283}\u{279}\u{3}\u{2}\u{2}\u{2}\u{283}\u{27A}\u{3}\u{2}\u{2}'
      '\u{2}\u{283}\u{27F}\u{3}\u{2}\u{2}\u{2}\u{283}\u{281}\u{3}\u{2}\u{2}'
      '\u{2}\u{283}\u{282}\u{3}\u{2}\u{2}\u{2}\u{284}\u{2B}\u{3}\u{2}\u{2}\u{2}'
      '\u{285}\u{28A}\u{7}\u{22}\u{2}\u{2}\u{286}\u{28A}\u{7}\u{25}\u{2}\u{2}'
      '\u{287}\u{28A}\u{9}\u{23}\u{2}\u{2}\u{288}\u{28A}\u{9}\u{24}\u{2}\u{2}'
      '\u{289}\u{285}\u{3}\u{2}\u{2}\u{2}\u{289}\u{286}\u{3}\u{2}\u{2}\u{2}'
      '\u{289}\u{287}\u{3}\u{2}\u{2}\u{2}\u{289}\u{288}\u{3}\u{2}\u{2}\u{2}'
      '\u{28A}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{28B}\u{28D}\u{9}\u{23}\u{2}\u{2}'
      '\u{28C}\u{28E}\u{7}\u{29}\u{2}\u{2}\u{28D}\u{28C}\u{3}\u{2}\u{2}\u{2}'
      '\u{28D}\u{28E}\u{3}\u{2}\u{2}\u{2}\u{28E}\u{28F}\u{3}\u{2}\u{2}\u{2}'
      '\u{28F}\u{293}\u{7}\u{22}\u{2}\u{2}\u{290}\u{291}\u{7}\u{22}\u{2}\u{2}'
      '\u{291}\u{293}\u{7}\u{A1}\u{2}\u{2}\u{292}\u{28B}\u{3}\u{2}\u{2}\u{2}'
      '\u{292}\u{290}\u{3}\u{2}\u{2}\u{2}\u{293}\u{2B0}\u{3}\u{2}\u{2}\u{2}'
      '\u{294}\u{296}\u{9}\u{23}\u{2}\u{2}\u{295}\u{297}\u{7}\u{29}\u{2}\u{2}'
      '\u{296}\u{295}\u{3}\u{2}\u{2}\u{2}\u{296}\u{297}\u{3}\u{2}\u{2}\u{2}'
      '\u{297}\u{298}\u{3}\u{2}\u{2}\u{2}\u{298}\u{29C}\u{7}\u{25}\u{2}\u{2}'
      '\u{299}\u{29A}\u{7}\u{25}\u{2}\u{2}\u{29A}\u{29C}\u{7}\u{A1}\u{2}\u{2}'
      '\u{29B}\u{294}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{299}\u{3}\u{2}\u{2}\u{2}'
      '\u{29C}\u{2B0}\u{3}\u{2}\u{2}\u{2}\u{29D}\u{29F}\u{9}\u{24}\u{2}\u{2}'
      '\u{29E}\u{2A0}\u{7}\u{29}\u{2}\u{2}\u{29F}\u{29E}\u{3}\u{2}\u{2}\u{2}'
      '\u{29F}\u{2A0}\u{3}\u{2}\u{2}\u{2}\u{2A0}\u{2A1}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A1}\u{2A5}\u{7}\u{22}\u{2}\u{2}\u{2A2}\u{2A3}\u{7}\u{22}\u{2}\u{2}'
      '\u{2A3}\u{2A5}\u{7}\u{A3}\u{2}\u{2}\u{2A4}\u{29D}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A4}\u{2A2}\u{3}\u{2}\u{2}\u{2}\u{2A5}\u{2B0}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A6}\u{2A8}\u{9}\u{24}\u{2}\u{2}\u{2A7}\u{2A9}\u{7}\u{29}\u{2}\u{2}'
      '\u{2A8}\u{2A7}\u{3}\u{2}\u{2}\u{2}\u{2A8}\u{2A9}\u{3}\u{2}\u{2}\u{2}'
      '\u{2A9}\u{2AA}\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2AE}\u{7}\u{25}\u{2}\u{2}'
      '\u{2AB}\u{2AC}\u{7}\u{25}\u{2}\u{2}\u{2AC}\u{2AE}\u{7}\u{A3}\u{2}\u{2}'
      '\u{2AD}\u{2A6}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2AB}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AE}\u{2B0}\u{3}\u{2}\u{2}\u{2}\u{2AF}\u{292}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AF}\u{29B}\u{3}\u{2}\u{2}\u{2}\u{2AF}\u{2A4}\u{3}\u{2}\u{2}\u{2}'
      '\u{2AF}\u{2AD}\u{3}\u{2}\u{2}\u{2}\u{2B0}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{2B1}'
      '\u{2B2}\u{9}\u{25}\u{2}\u{2}\u{2B2}\u{31}\u{3}\u{2}\u{2}\u{2}\u{2B3}'
      '\u{2B4}\u{9}\u{26}\u{2}\u{2}\u{2B4}\u{33}\u{3}\u{2}\u{2}\u{2}\u{2B5}'
      '\u{2B6}\u{9}\u{27}\u{2}\u{2}\u{2B6}\u{35}\u{3}\u{2}\u{2}\u{2}\u{2B7}'
      '\u{2B8}\u{9}\u{28}\u{2}\u{2}\u{2B8}\u{37}\u{3}\u{2}\u{2}\u{2}\u{2B9}'
      '\u{2BA}\u{9}\u{29}\u{2}\u{2}\u{2BA}\u{39}\u{3}\u{2}\u{2}\u{2}\u{2BB}'
      '\u{2BC}\u{9}\u{2A}\u{2}\u{2}\u{2BC}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{2BD}'
      '\u{2BE}\u{9}\u{2B}\u{2}\u{2}\u{2BE}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{2BF}'
      '\u{2C0}\u{7}\u{B5}\u{2}\u{2}\u{2C0}\u{2C9}\u{7}\u{28}\u{2}\u{2}\u{2C1}'
      '\u{2C9}\u{7}\u{B8}\u{2}\u{2}\u{2C2}\u{2C3}\u{7}\u{B6}\u{2}\u{2}\u{2C3}'
      '\u{2C9}\u{7}\u{28}\u{2}\u{2}\u{2C4}\u{2C9}\u{7}\u{B9}\u{2}\u{2}\u{2C5}'
      '\u{2C6}\u{7}\u{B7}\u{2}\u{2}\u{2C6}\u{2C9}\u{7}\u{28}\u{2}\u{2}\u{2C7}'
      '\u{2C9}\u{7}\u{BA}\u{2}\u{2}\u{2C8}\u{2BF}\u{3}\u{2}\u{2}\u{2}\u{2C8}'
      '\u{2C1}\u{3}\u{2}\u{2}\u{2}\u{2C8}\u{2C2}\u{3}\u{2}\u{2}\u{2}\u{2C8}'
      '\u{2C4}\u{3}\u{2}\u{2}\u{2}\u{2C8}\u{2C5}\u{3}\u{2}\u{2}\u{2}\u{2C8}'
      '\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{2C9}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{42}'
      '\u{48}\u{4D}\u{4F}\u{54}\u{5A}\u{5F}\u{62}\u{65}\u{6A}\u{6E}\u{72}\u{78}'
      '\u{7D}\u{82}\u{85}\u{88}\u{8C}\u{8F}\u{93}\u{96}\u{A7}\u{AB}\u{AF}\u{B4}'
      '\u{B7}\u{C0}\u{CE}\u{D1}\u{EC}\u{F3}\u{F7}\u{F9}\u{FE}\u{102}\u{106}'
      '\u{109}\u{10E}\u{113}\u{117}\u{119}\u{11D}\u{121}\u{126}\u{12A}\u{12C}'
      '\u{130}\u{134}\u{138}\u{13A}\u{13E}\u{142}\u{147}\u{14B}\u{14D}\u{151}'
      '\u{155}\u{159}\u{15B}\u{15D}\u{170}\u{179}\u{17F}\u{18A}\u{18F}\u{195}'
      '\u{19A}\u{19D}\u{1A4}\u{1A9}\u{1AC}\u{1B2}\u{1BB}\u{1C4}\u{1C9}\u{1CB}'
      '\u{1CE}\u{1D5}\u{1DC}\u{1E1}\u{1E5}\u{1E8}\u{1F5}\u{1FA}\u{1FE}\u{203}'
      '\u{207}\u{20E}\u{216}\u{21A}\u{222}\u{226}\u{22D}\u{22F}\u{232}\u{234}'
      '\u{23D}\u{242}\u{246}\u{24A}\u{24D}\u{252}\u{256}\u{259}\u{25E}\u{261}'
      '\u{265}\u{267}\u{276}\u{27F}\u{283}\u{289}\u{28D}\u{292}\u{296}\u{29B}'
      '\u{29F}\u{2A4}\u{2A8}\u{2AD}\u{2AF}\u{2C8}';
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

class MaybeContext extends ParserRuleContext {
  MaybeContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_maybe;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitMaybe(this);
    } else {
      return visitor.visitChildren(this);
    }
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
  MaybeContext? maybe() => getRuleContext<MaybeContext>(0);
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
  MaybeContext? maybe() => getRuleContext<MaybeContext>(0);
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
