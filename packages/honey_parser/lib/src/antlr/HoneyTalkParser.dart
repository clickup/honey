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
      TOKEN_T__179 = 180,
      TOKEN_NUMBER_LITERAL = 181,
      TOKEN_BOOL_LITERAL = 182,
      TOKEN_STRING_LITERAL = 183,
      TOKEN_REGEX_LITERAL = 184,
      TOKEN_REGEX_MODIFIER = 185,
      TOKEN_THE = 186,
      TOKEN_A_AN = 187,
      TOKEN_ID = 188,
      TOKEN_ALPHA = 189,
      TOKEN_DIGIT = 190,
      TOKEN_COMMENT = 191,
      TOKEN_MULTILINE_COMMENT = 192,
      TOKEN_NEWLINE = 193,
      TOKEN_WHITESPACE = 194,
      TOKEN_THERE_IS_A = 195,
      TOKEN_THERE_IS_NO = 196,
      TOKEN_UNLEXED_CHAR = 197;

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
    "'check'",
    "'assert'",
    "'expect'",
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
    "'starts'",
    "'ends'",
    "'contains'",
    "'matches'",
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
    "'case'",
    "'sensitive'",
    "'insensitive'",
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
    "NUMBER_LITERAL",
    "BOOL_LITERAL",
    "STRING_LITERAL",
    "REGEX_LITERAL",
    "REGEX_MODIFIER",
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
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6) |
                          (BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__8) |
                          (BigInt.one << TOKEN_T__9) |
                          (BigInt.one << TOKEN_T__10) |
                          (BigInt.one << TOKEN_T__12) |
                          (BigInt.one << TOKEN_T__13) |
                          (BigInt.one << TOKEN_T__18) |
                          (BigInt.one << TOKEN_T__19) |
                          (BigInt.one << TOKEN_T__20) |
                          (BigInt.one << TOKEN_T__22) |
                          (BigInt.one << TOKEN_T__23) |
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
          ((((_la - 72)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 72)) &
                      ((BigInt.one << (TOKEN_T__71 - 72)) |
                          (BigInt.one << (TOKEN_T__72 - 72)) |
                          (BigInt.one << (TOKEN_T__73 - 72)) |
                          (BigInt.one << (TOKEN_T__74 - 72)) |
                          (BigInt.one << (TOKEN_T__76 - 72)) |
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
                          (BigInt.one << (TOKEN_T__120 - 72)) |
                          (BigInt.one << (TOKEN_T__121 - 72)) |
                          (BigInt.one << (TOKEN_T__122 - 72)) |
                          (BigInt.one << (TOKEN_T__123 - 72)) |
                          (BigInt.one << (TOKEN_T__124 - 72)) |
                          (BigInt.one << (TOKEN_T__125 - 72)) |
                          (BigInt.one << (TOKEN_T__126 - 72)) |
                          (BigInt.one << (TOKEN_T__127 - 72)) |
                          (BigInt.one << (TOKEN_T__128 - 72)) |
                          (BigInt.one << (TOKEN_T__129 - 72)) |
                          (BigInt.one << (TOKEN_T__132 - 72)) |
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
                          (BigInt.one << (TOKEN_T__168 - 136)) |
                          (BigInt.one << (TOKEN_T__169 - 136)) |
                          (BigInt.one << (TOKEN_T__170 - 136)) |
                          (BigInt.one << (TOKEN_T__171 - 136)) |
                          (BigInt.one << (TOKEN_T__172 - 136)) |
                          (BigInt.one << (TOKEN_T__173 - 136)) |
                          (BigInt.one << (TOKEN_NUMBER_LITERAL - 136)) |
                          (BigInt.one << (TOKEN_BOOL_LITERAL - 136)) |
                          (BigInt.one << (TOKEN_STRING_LITERAL - 136)) |
                          (BigInt.one << (TOKEN_REGEX_LITERAL - 136)) |
                          (BigInt.one << (TOKEN_ID - 136)) |
                          (BigInt.one << (TOKEN_THERE_IS_A - 136)) |
                          (BigInt.one << (TOKEN_THERE_IS_NO - 136)))) !=
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
      state = 97;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
        case 1:
          _localctx = StatementActionContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 86;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6))) !=
                  BigInt.zero)) {
            state = 85;
            maybe();
          }

          state = 88;
          actionStatement();
          state = 91;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__1) {
            state = 89;
            match(TOKEN_T__1);
            state = 90;
            expression(0);
          }

          break;
        case 2:
          _localctx = StatementExpressionContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 94;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__2) |
                          (BigInt.one << TOKEN_T__3) |
                          (BigInt.one << TOKEN_T__5) |
                          (BigInt.one << TOKEN_T__6))) !=
                  BigInt.zero)) {
            state = 93;
            maybe();
          }

          state = 96;
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
      state = 106;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__2:
          enterOuterAlt(_localctx, 1);
          state = 99;
          match(TOKEN_T__2);
          break;
        case TOKEN_T__3:
          enterOuterAlt(_localctx, 2);
          state = 100;
          match(TOKEN_T__3);
          state = 102;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 101;
            match(TOKEN_T__4);
          }

          break;
        case TOKEN_T__5:
          enterOuterAlt(_localctx, 3);
          state = 104;
          match(TOKEN_T__5);
          break;
        case TOKEN_T__6:
          enterOuterAlt(_localctx, 4);
          state = 105;
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
      state = 168;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          _localctx = ActionVerifyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 108;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__7) |
                          (BigInt.one << TOKEN_T__8) |
                          (BigInt.one << TOKEN_T__9) |
                          (BigInt.one << TOKEN_T__10))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 110;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__11) {
            state = 109;
            match(TOKEN_T__11);
          }

          state = 112;
          expression(0);
          break;
        case 2:
          _localctx = ActionSeeContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 116;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__12:
              state = 113;
              match(TOKEN_T__12);
              break;
            case TOKEN_T__13:
              state = 114;
              match(TOKEN_T__13);
              state = 115;
              match(TOKEN_T__14);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 118;
          expression(0);
          break;
        case 3:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 119;
          clickType();
          state = 121;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__15) {
            state = 120;
            match(TOKEN_T__15);
          }

          state = 123;
          _localctx.target = expression(0);
          state = 132;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__16) |
                          (BigInt.one << TOKEN_T__17))) !=
                  BigInt.zero)) {
            state = 129;
            errorHandler.sync(this);
            switch (tokenStream.LA(1)!) {
              case TOKEN_T__14:
                state = 124;
                match(TOKEN_T__14);
                break;
              case TOKEN_T__16:
              case TOKEN_T__17:
                state = 126;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__16) {
                  state = 125;
                  match(TOKEN_T__16);
                }

                state = 128;
                match(TOKEN_T__17);
                break;
              default:
                throw NoViableAltException(this);
            }
            state = 131;
            _localctx.offset = expression(0);
          }

          break;
        case 4:
          _localctx = ActionClickContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 134;
          clickType();
          state = 139;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_T__8) |
                              (BigInt.one << TOKEN_T__15) |
                              (BigInt.one << TOKEN_T__35) |
                              (BigInt.one << TOKEN_T__37) |
                              (BigInt.one << TOKEN_T__38))) !=
                      BigInt.zero) ||
              ((((_la - 72)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 72)) &
                          ((BigInt.one << (TOKEN_T__71 - 72)) |
                              (BigInt.one << (TOKEN_T__72 - 72)) |
                              (BigInt.one << (TOKEN_T__73 - 72)) |
                              (BigInt.one << (TOKEN_T__74 - 72)) |
                              (BigInt.one << (TOKEN_T__76 - 72)) |
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
                              (BigInt.one << (TOKEN_T__120 - 72)) |
                              (BigInt.one << (TOKEN_T__121 - 72)) |
                              (BigInt.one << (TOKEN_T__122 - 72)) |
                              (BigInt.one << (TOKEN_T__123 - 72)) |
                              (BigInt.one << (TOKEN_T__124 - 72)) |
                              (BigInt.one << (TOKEN_T__125 - 72)) |
                              (BigInt.one << (TOKEN_T__126 - 72)) |
                              (BigInt.one << (TOKEN_T__127 - 72)) |
                              (BigInt.one << (TOKEN_T__128 - 72)) |
                              (BigInt.one << (TOKEN_T__129 - 72)) |
                              (BigInt.one << (TOKEN_T__132 - 72)) |
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
                              (BigInt.one << (TOKEN_REGEX_LITERAL - 136)) |
                              (BigInt.one << (TOKEN_ID - 136)) |
                              (BigInt.one << (TOKEN_THERE_IS_A - 136)) |
                              (BigInt.one << (TOKEN_THERE_IS_NO - 136)))) !=
                      BigInt.zero)) {
            state = 136;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__15) {
              state = 135;
              match(TOKEN_T__15);
            }

            state = 138;
            _localctx.target = expression(0);
          }

          state = 146;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__14:
              state = 141;
              match(TOKEN_T__14);
              break;
            case TOKEN_T__16:
            case TOKEN_T__17:
              state = 143;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__16) {
                state = 142;
                match(TOKEN_T__16);
              }

              state = 145;
              match(TOKEN_T__17);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 148;
          _localctx.offset = expression(0);
          break;
        case 5:
          _localctx = ActionEnterContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 150;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__18 || _la == TOKEN_T__19)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 151;
          _localctx.value = expression(0);
          break;
        case 6:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 152;
          match(TOKEN_T__20);
          state = 153;
          _localctx.variable = match(TOKEN_ID);
          state = 154;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__21)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 155;
          expression(0);
          break;
        case 7:
          _localctx = ActionSetVariableContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 156;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__22 || _la == TOKEN_T__23)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 157;
          expression(0);
          state = 158;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__24 || _la == TOKEN_T__25)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 159;
          _localctx.variable = match(TOKEN_ID);
          break;
        case 8:
          _localctx = ActionWaitContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 161;
          match(TOKEN_T__26);
          state = 163;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__27) {
            state = 162;
            match(TOKEN_T__27);
          }

          state = 165;
          expression(0);
          break;
        case 9:
          _localctx = ActionPrintContext(_localctx);
          enterOuterAlt(_localctx, 9);
          state = 166;
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
          state = 167;
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
      state = 180;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__31:
        case TOKEN_T__168:
        case TOKEN_T__169:
        case TOKEN_T__170:
        case TOKEN_T__171:
        case TOKEN_T__172:
        case TOKEN_T__173:
          _localctx = ClickTypeSingleContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 171;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__31) {
            state = 170;
            match(TOKEN_T__31);
          }

          state = 173;
          click();
          break;
        case TOKEN_T__32:
          _localctx = ClickTypeDoubleContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 174;
          match(TOKEN_T__32);
          state = 175;
          click();
          break;
        case TOKEN_T__33:
          _localctx = ClickTypeLongContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 176;
          match(TOKEN_T__33);
          state = 177;
          click();
          break;
        case TOKEN_T__34:
          _localctx = ClickTypeRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 178;
          match(TOKEN_T__34);
          state = 179;
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
      state = 197;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 26, context)) {
        case 1:
          _localctx = ExpressionExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 183;
          match(TOKEN_T__35);
          state = 184;
          expression(0);
          state = 185;
          match(TOKEN_T__36);
          break;
        case 2:
          _localctx = ExpressionTermContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 187;
          term();
          break;
        case 3:
          _localctx = ExpressionNotContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 188;
          match(TOKEN_T__37);
          state = 189;
          expression(16);
          break;
        case 4:
          _localctx = ExpressionNegateContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 190;
          match(TOKEN_T__38);
          state = 191;
          expression(15);
          break;
        case 5:
          _localctx = ExpressionExistsContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 194;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_THERE_IS_A:
              state = 192;
              match(TOKEN_THERE_IS_A);
              break;
            case TOKEN_THERE_IS_NO:
              state = 193;
              _localctx.not = match(TOKEN_THERE_IS_NO);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 196;
          expression(14);
          break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 253;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 251;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 29, context)) {
            case 1:
              _localctx = ExpressionPowContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 199;
              if (!(precpred(context, 12))) {
                throw FailedPredicateException(this, "precpred(context, 12)");
              }
              state = 200;
              match(TOKEN_T__42);
              state = 201;
              expression(13);
              break;
            case 2:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 202;
              if (!(precpred(context, 11))) {
                throw FailedPredicateException(this, "precpred(context, 11)");
              }
              state = 203;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__43 || _la == TOKEN_T__44)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 204;
              expression(12);
              break;
            case 3:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 205;
              if (!(precpred(context, 10))) {
                throw FailedPredicateException(this, "precpred(context, 10)");
              }
              state = 206;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__38 || _la == TOKEN_T__45)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 207;
              expression(11);
              break;
            case 4:
              _localctx = ExpressionBinaryOpContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 208;
              if (!(precpred(context, 9))) {
                throw FailedPredicateException(this, "precpred(context, 9)");
              }
              state = 209;
              _localctx.op = tokenStream.LT(1);
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__46 || _la == TOKEN_T__47)) {
                _localctx.op = errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 210;
              expression(10);
              break;
            case 5:
              _localctx = ExpressionComparisonContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 211;
              if (!(precpred(context, 8))) {
                throw FailedPredicateException(this, "precpred(context, 8)");
              }
              state = 212;
              _localctx.op = comparisonOp();
              state = 213;
              expression(9);
              break;
            case 6:
              _localctx = ExpressionStartsWithContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 215;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }

              state = 216;
              match(TOKEN_T__48);
              state = 217;
              match(TOKEN_T__16);
              state = 219;
              expression(8);
              break;
            case 7:
              _localctx = ExpressionEndsWithContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 220;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }

              state = 221;
              match(TOKEN_T__49);
              state = 222;
              match(TOKEN_T__16);
              state = 224;
              expression(7);
              break;
            case 8:
              _localctx = ExpressionContainsContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 225;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }

              state = 226;
              match(TOKEN_T__50);
              state = 227;
              expression(6);
              break;
            case 9:
              _localctx = ExpressionMatchesContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 228;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 229;
              match(TOKEN_T__51);
              state = 230;
              expression(5);
              break;
            case 10:
              _localctx = ExpressionAndContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 231;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 232;
              match(TOKEN_T__52);
              state = 233;
              expression(3);
              break;
            case 11:
              _localctx = ExpressionOrContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 234;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 235;
              match(TOKEN_T__53);
              state = 236;
              expression(2);
              break;
            case 12:
              _localctx = ExpressionExistsContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 237;
              if (!(precpred(context, 13))) {
                throw FailedPredicateException(this, "precpred(context, 13)");
              }
              state = 240;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 27, context)) {
                case 1:
                  state = 238;
                  isAre();
                  break;
                case 2:
                  state = 239;
                  isAreNot();
                  break;
              }
              state = 242;
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
            case 13:
              _localctx = ExpressionIsAttrContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 244;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 247;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
                case 1:
                  state = 245;
                  isAre();
                  break;
                case 2:
                  state = 246;
                  isAreNot();
                  break;
              }
              state = 249;
              property();
              break;
          }
        }
        state = 255;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
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
      state = 353;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
        case 1:
          _localctx = ComparisonOpEqContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 269;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
            case 1:
              state = 256;
              match(TOKEN_T__54);
              break;
            case 2:
              state = 258;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 257;
                isAre();
              }

              state = 260;
              match(TOKEN_T__55);
              break;
            case 3:
              state = 262;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 261;
                isAre();
              }

              state = 264;
              match(TOKEN_T__56);
              state = 266;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 265;
                match(TOKEN_T__4);
              }

              break;
            case 4:
              state = 268;
              match(TOKEN_T__57);
              break;
          }
          break;
        case 2:
          _localctx = ComparisonOpNeqContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 285;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
            case 1:
              state = 271;
              match(TOKEN_T__58);
              break;
            case 2:
              state = 272;
              match(TOKEN_T__59);
              break;
            case 3:
              state = 274;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 273;
                isAre();
              }

              state = 276;
              match(TOKEN_T__60);
              break;
            case 4:
              state = 279;
              errorHandler.sync(this);
              switch (tokenStream.LA(1)!) {
                case TOKEN_T__174:
                case TOKEN_T__175:
                case TOKEN_T__176:
                case TOKEN_T__177:
                case TOKEN_T__178:
                case TOKEN_T__179:
                  state = 277;
                  isAreNot();
                  break;
                case TOKEN_T__37:
                  state = 278;
                  match(TOKEN_T__37);
                  break;
                default:
                  throw NoViableAltException(this);
              }
              state = 281;
              match(TOKEN_T__56);
              state = 283;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 282;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 3:
          _localctx = ComparisonOpGteContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 304;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 43, context)) {
            case 1:
              state = 287;
              match(TOKEN_T__61);
              break;
            case 2:
              state = 289;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 288;
                isAre();
              }

              state = 291;
              match(TOKEN_T__62);
              break;
            case 3:
              state = 293;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 292;
                isAre();
              }

              state = 295;
              match(TOKEN_T__63);
              state = 296;
              match(TOKEN_T__64);
              state = 298;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__53) {
                state = 297;
                match(TOKEN_T__53);
              }

              state = 300;
              match(TOKEN_T__56);
              state = 302;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 301;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 4:
          _localctx = ComparisonOpGtContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 318;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 47, context)) {
            case 1:
              state = 306;
              match(TOKEN_T__65);
              break;
            case 2:
              state = 308;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 307;
                isAre();
              }

              state = 310;
              match(TOKEN_T__62);
              break;
            case 3:
              state = 312;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 311;
                isAre();
              }

              state = 314;
              match(TOKEN_T__63);
              state = 316;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__64) {
                state = 315;
                match(TOKEN_T__64);
              }

              break;
          }
          break;
        case 5:
          _localctx = ComparisonOpLteContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 337;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 52, context)) {
            case 1:
              state = 320;
              match(TOKEN_T__66);
              break;
            case 2:
              state = 322;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 321;
                isAre();
              }

              state = 324;
              match(TOKEN_T__67);
              break;
            case 3:
              state = 326;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 325;
                isAre();
              }

              state = 328;
              match(TOKEN_T__68);
              state = 329;
              match(TOKEN_T__64);
              state = 331;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__53) {
                state = 330;
                match(TOKEN_T__53);
              }

              state = 333;
              match(TOKEN_T__56);
              state = 335;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__4) {
                state = 334;
                match(TOKEN_T__4);
              }

              break;
          }
          break;
        case 6:
          _localctx = ComparisonOpLtContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 351;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 56, context)) {
            case 1:
              state = 339;
              match(TOKEN_T__69);
              break;
            case 2:
              state = 341;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 340;
                isAre();
              }

              state = 343;
              match(TOKEN_T__70);
              break;
            case 3:
              state = 345;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (((((_la - 175)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 175)) &
                          ((BigInt.one << (TOKEN_T__174 - 175)) |
                              (BigInt.one << (TOKEN_T__175 - 175)) |
                              (BigInt.one << (TOKEN_T__176 - 175)))) !=
                      BigInt.zero)) {
                state = 344;
                isAre();
              }

              state = 347;
              match(TOKEN_T__68);
              state = 349;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__64) {
                state = 348;
                match(TOKEN_T__64);
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
      state = 372;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 58, context)) {
        case 1:
          _localctx = TermTermContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 355;
          match(TOKEN_T__35);
          state = 356;
          term();
          state = 357;
          match(TOKEN_T__36);
          break;
        case 2:
          _localctx = TermLiteralContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 359;
          literal();
          break;
        case 3:
          _localctx = TermNegateContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 360;
          match(TOKEN_T__38);
          state = 361;
          term();
          break;
        case 4:
          _localctx = TermFunctionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 362;
          function();
          break;
        case 5:
          _localctx = TermOrdinalContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 363;
          ordinal();
          state = 364;
          term();
          break;
        case 6:
          _localctx = TermWidgetContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 366;
          widget();
          break;
        case 7:
          _localctx = TermPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 367;
          property();
          state = 368;
          of();
          state = 369;
          term();
          break;
        case 8:
          _localctx = TermSymbolContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 371;
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
      state = 381;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__71:
        case TOKEN_T__72:
        case TOKEN_T__73:
          _localctx = BuiltinPropLengthContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 374;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 72)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 72)) &
                      ((BigInt.one << (TOKEN_T__71 - 72)) |
                          (BigInt.one << (TOKEN_T__72 - 72)) |
                          (BigInt.one << (TOKEN_T__73 - 72)))) !=
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
          state = 375;
          character();
          break;
        case TOKEN_T__166:
        case TOKEN_T__167:
          _localctx = BuiltinPropItemsContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 376;
          item();
          break;
        case TOKEN_T__162:
        case TOKEN_T__163:
          _localctx = BuiltinPropWordsContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 377;
          word();
          break;
        case TOKEN_T__164:
        case TOKEN_T__165:
          _localctx = BuiltinPropLinesContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 378;
          line();
          break;
        case TOKEN_T__8:
        case TOKEN_T__120:
        case TOKEN_T__121:
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
        case TOKEN_T__126:
        case TOKEN_T__127:
        case TOKEN_T__128:
        case TOKEN_T__129:
        case TOKEN_T__132:
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
          state = 379;
          widgetType();
          break;
        case TOKEN_ID:
          _localctx = OtherPropertyContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 380;
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
      state = 432;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
        case 1:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 383;
          match(TOKEN_T__74);
          state = 384;
          _localctx.date = term();
          state = 387;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__75) {
            state = 385;
            match(TOKEN_T__75);
            state = 386;
            _localctx.sourceFormat = term();
          }

          state = 389;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__21)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 390;
          _localctx.targetFormat = term();
          break;
        case 2:
          _localctx = FunctionFormatContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 392;
          match(TOKEN_T__74);
          state = 393;
          _localctx.date = term();
          state = 394;
          match(TOKEN_T__75);
          state = 395;
          _localctx.sourceFormat = term();
          state = 398;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 61, context)) {
            case 1:
              state = 396;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__4 || _la == TOKEN_T__21)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 397;
              _localctx.targetFormat = term();
              break;
          }
          break;
        case 3:
          _localctx = FunctionNowContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 400;
          match(TOKEN_T__76);
          state = 403;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 62, context)) {
            case 1:
              state = 401;
              match(TOKEN_T__35);
              state = 402;
              match(TOKEN_T__36);
              break;
          }
          break;
        case 4:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 405;
          match(TOKEN_ID);
          state = 406;
          match(TOKEN_T__35);
          state = 417;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_T__8) |
                              (BigInt.one << TOKEN_T__35) |
                              (BigInt.one << TOKEN_T__38))) !=
                      BigInt.zero) ||
              ((((_la - 72)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 72)) &
                          ((BigInt.one << (TOKEN_T__71 - 72)) |
                              (BigInt.one << (TOKEN_T__72 - 72)) |
                              (BigInt.one << (TOKEN_T__73 - 72)) |
                              (BigInt.one << (TOKEN_T__74 - 72)) |
                              (BigInt.one << (TOKEN_T__76 - 72)) |
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
                              (BigInt.one << (TOKEN_T__120 - 72)) |
                              (BigInt.one << (TOKEN_T__121 - 72)) |
                              (BigInt.one << (TOKEN_T__122 - 72)) |
                              (BigInt.one << (TOKEN_T__123 - 72)) |
                              (BigInt.one << (TOKEN_T__124 - 72)) |
                              (BigInt.one << (TOKEN_T__125 - 72)) |
                              (BigInt.one << (TOKEN_T__126 - 72)) |
                              (BigInt.one << (TOKEN_T__127 - 72)) |
                              (BigInt.one << (TOKEN_T__128 - 72)) |
                              (BigInt.one << (TOKEN_T__129 - 72)) |
                              (BigInt.one << (TOKEN_T__132 - 72)) |
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
                              (BigInt.one << (TOKEN_REGEX_LITERAL - 136)) |
                              (BigInt.one << (TOKEN_ID - 136)))) !=
                      BigInt.zero)) {
            state = 407;
            term();
            state = 414;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
            while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
              if (_alt == 1 + 1) {
                state = 409;
                errorHandler.sync(this);
                _la = tokenStream.LA(1)!;
                if (_la == TOKEN_T__77) {
                  state = 408;
                  match(TOKEN_T__77);
                }

                state = 411;
                term();
              }
              state = 416;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
            }
          }

          state = 419;
          match(TOKEN_T__36);
          break;
        case 5:
          _localctx = FunctionCustomContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 420;
          match(TOKEN_ID);
          state = 421;
          match(TOKEN_T__16);

          state = 422;
          term();
          state = 429;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 67, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 424;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__77) {
                state = 423;
                match(TOKEN_T__77);
              }

              state = 426;
              term();
            }
            state = 431;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 67, context);
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
      state = 442;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
          _localctx = LiteralCardinalContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 434;
          cardinalValue();
          break;
        case TOKEN_STRING_LITERAL:
          _localctx = LiteralStringContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 435;
          match(TOKEN_STRING_LITERAL);
          break;
        case TOKEN_REGEX_LITERAL:
          _localctx = LiteralRegexContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 436;
          match(TOKEN_REGEX_LITERAL);
          state = 438;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 69, context)) {
            case 1:
              state = 437;
              match(TOKEN_REGEX_MODIFIER);
              break;
          }
          break;
        case TOKEN_NUMBER_LITERAL:
          _localctx = LiteralNumberContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 440;
          match(TOKEN_NUMBER_LITERAL);
          break;
        case TOKEN_BOOL_LITERAL:
          _localctx = LiteralBoolContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 441;
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
      state = 444;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 79)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 79)) &
                  ((BigInt.one << (TOKEN_T__78 - 79)) |
                      (BigInt.one << (TOKEN_T__79 - 79)) |
                      (BigInt.one << (TOKEN_T__80 - 79)) |
                      (BigInt.one << (TOKEN_T__81 - 79)) |
                      (BigInt.one << (TOKEN_T__82 - 79)) |
                      (BigInt.one << (TOKEN_T__83 - 79)) |
                      (BigInt.one << (TOKEN_T__84 - 79)) |
                      (BigInt.one << (TOKEN_T__85 - 79)) |
                      (BigInt.one << (TOKEN_T__86 - 79)) |
                      (BigInt.one << (TOKEN_T__87 - 79)) |
                      (BigInt.one << (TOKEN_T__88 - 79)))) !=
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
      state = 446;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 90)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 90)) &
                  ((BigInt.one << (TOKEN_T__89 - 90)) |
                      (BigInt.one << (TOKEN_T__90 - 90)) |
                      (BigInt.one << (TOKEN_T__91 - 90)) |
                      (BigInt.one << (TOKEN_T__92 - 90)) |
                      (BigInt.one << (TOKEN_T__93 - 90)) |
                      (BigInt.one << (TOKEN_T__94 - 90)) |
                      (BigInt.one << (TOKEN_T__95 - 90)) |
                      (BigInt.one << (TOKEN_T__96 - 90)) |
                      (BigInt.one << (TOKEN_T__97 - 90)) |
                      (BigInt.one << (TOKEN_T__98 - 90)) |
                      (BigInt.one << (TOKEN_T__99 - 90)))) !=
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
      int _alt;
      state = 502;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 451;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 448;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 453;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 454;
          widgetNameModifier();
          state = 455;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 460;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 72, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 456;
              match(TOKEN_T__53);
              state = 457;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal);
            }
            state = 462;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 72, context);
          }
          state = 464;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 73, context)) {
            case 1:
              state = 463;
              widgetType();
              break;
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 469;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 466;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 471;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 472;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 477;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_T__53) {
            state = 473;
            match(TOKEN_T__53);
            state = 474;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal);
            state = 479;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 480;
          widgetType();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 485;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_ID) {
            state = 482;
            _localctx._ID = match(TOKEN_ID);
            _localctx.attr.add(_localctx._ID);
            state = 487;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 489;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__100 || _la == TOKEN_T__101) {
            state = 488;
            widgetNameModifier();
          }

          state = 491;
          widgetType();
          state = 500;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 79, context)) {
            case 1:
              state = 492;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal);
              state = 497;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
              while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
                if (_alt == 1) {
                  state = 493;
                  match(TOKEN_T__53);
                  state = 494;
                  _localctx._literal = literal();
                  _localctx.name.add(_localctx._literal);
                }
                state = 499;
                errorHandler.sync(this);
                _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
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

  WidgetNameModifierContext widgetNameModifier() {
    dynamic _localctx = WidgetNameModifierContext(context, state);
    enterRule(_localctx, 28, RULE_widgetNameModifier);
    try {
      state = 509;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 81, context)) {
        case 1:
          _localctx = WidgetNameExactlyContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 504;
          match(TOKEN_T__100);
          break;
        case 2:
          _localctx = WidgetNameCaseSensitiveContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 505;
          match(TOKEN_T__101);
          state = 506;
          match(TOKEN_T__102);
          break;
        case 3:
          _localctx = WidgetNameCaseInsensitiveContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 507;
          match(TOKEN_T__101);
          state = 508;
          match(TOKEN_T__103);
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

  WidgetReferenceContext widgetReference() {
    dynamic _localctx = WidgetReferenceContext(context, state);
    enterRule(_localctx, 30, RULE_widgetReference);
    try {
      state = 522;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 82, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 511;
          widgetReferencePosition();
          state = 512;
          match(TOKEN_T__35);
          state = 513;
          term();
          state = 514;
          match(TOKEN_T__36);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 516;
          widgetReferencePosition();
          state = 517;
          match(TOKEN_T__104);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 519;
          widgetReferencePosition();
          state = 520;
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
      state = 585;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
        case 1:
          _localctx = WidgetReferenceEdgeContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 524;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__24))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 525;
          singleDirection();
          state = 527;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__105) {
            state = 526;
            match(TOKEN_T__105);
          }

          state = 529;
          match(TOKEN_T__106);
          state = 531;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 530;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 2:
          _localctx = WidgetReferenceCornerContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 533;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__24))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 534;
          doubleDirection();
          state = 536;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__108) {
            state = 535;
            match(TOKEN_T__108);
          }

          state = 538;
          match(TOKEN_T__106);
          state = 540;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 539;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 3:
          _localctx = WidgetReferenceHalfContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 542;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__24))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 543;
          singleDirection();
          state = 544;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__109 || _la == TOKEN_T__110)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 545;
          match(TOKEN_T__106);
          state = 547;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 546;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 4:
          _localctx = WidgetReferenceFractionContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 549;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__24))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 550;
          ordinal();
          state = 551;
          singleDirection();
          state = 555;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__91:
              state = 552;
              _localctx.f = match(TOKEN_T__91);
              break;
            case TOKEN_T__111:
              state = 553;
              _localctx.f = match(TOKEN_T__111);
              break;
            case TOKEN_T__96:
              state = 554;
              _localctx.f = match(TOKEN_T__96);
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 557;
          match(TOKEN_T__106);
          state = 559;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 558;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 5:
          _localctx = WidgetReferencePercentageContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 561;
          _la = tokenStream.LA(1)!;
          if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_T__14) |
                          (BigInt.one << TOKEN_T__15) |
                          (BigInt.one << TOKEN_T__24))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 562;
          singleDirection();
          state = 563;
          literal();
          state = 564;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__112 || _la == TOKEN_T__113)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 565;
          match(TOKEN_T__106);
          state = 567;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 566;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 6:
          _localctx = WidgetReferenceInsideContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 569;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__24 ||
              _la == TOKEN_T__114 ||
              _la == TOKEN_T__115)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 571;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__107) {
            state = 570;
            _localctx.isParent = match(TOKEN_T__107);
          }

          break;
        case 7:
          _localctx = WidgetReferenceToContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 580;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__116:
              state = 573;
              _localctx.below = match(TOKEN_T__116);
              break;
            case TOKEN_T__117:
              state = 574;
              _localctx.above = match(TOKEN_T__117);
              break;
            case TOKEN_T__4:
              state = 575;
              match(TOKEN_T__4);
              state = 578;
              errorHandler.sync(this);
              switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
                case 1:
                  state = 576;
                  singleDirection();
                  break;
                case 2:
                  state = 577;
                  doubleDirection();
                  break;
              }
              break;
            default:
              throw NoViableAltException(this);
          }
          state = 583;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__106) {
            state = 582;
            match(TOKEN_T__106);
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
      state = 594;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 587;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__16 ||
              _la == TOKEN_T__118 ||
              _la == TOKEN_T__119)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 588;
          match(TOKEN_T__35);
          state = 589;
          expression(0);
          state = 590;
          match(TOKEN_T__36);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 592;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__16 ||
              _la == TOKEN_T__118 ||
              _la == TOKEN_T__119)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 593;
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
      state = 636;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 596;
          widgetIdent();
          state = 597;
          widgetReference();
          state = 599;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__52) {
            state = 598;
            match(TOKEN_T__52);
          }

          state = 601;
          widgetReference();
          state = 603;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__52) {
            state = 602;
            match(TOKEN_T__52);
          }

          state = 605;
          widgetReference();
          state = 607;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 99, context)) {
            case 1:
              state = 606;
              match(TOKEN_T__52);
              break;
          }
          state = 610;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
            case 1:
              state = 609;
              widgetWhere();
              break;
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 612;
          widgetIdent();
          state = 613;
          widgetReference();
          state = 615;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__52) {
            state = 614;
            match(TOKEN_T__52);
          }

          state = 617;
          widgetReference();
          state = 619;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
            case 1:
              state = 618;
              match(TOKEN_T__52);
              break;
          }
          state = 622;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 103, context)) {
            case 1:
              state = 621;
              widgetWhere();
              break;
          }
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 624;
          widgetIdent();
          state = 625;
          widgetReference();
          state = 627;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
            case 1:
              state = 626;
              match(TOKEN_T__52);
              break;
          }
          state = 630;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
            case 1:
              state = 629;
              widgetWhere();
              break;
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 632;
          widgetIdent();
          state = 634;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
            case 1:
              state = 633;
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
      state = 664;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__120:
        case TOKEN_T__121:
          _localctx = WidgetTypeWidgetContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 638;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__120 || _la == TOKEN_T__121)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__122:
        case TOKEN_T__123:
        case TOKEN_T__124:
        case TOKEN_T__125:
          _localctx = WidgetTypeButtonContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 639;
          _la = tokenStream.LA(1)!;
          if (!(((((_la - 123)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 123)) &
                      ((BigInt.one << (TOKEN_T__122 - 123)) |
                          (BigInt.one << (TOKEN_T__123 - 123)) |
                          (BigInt.one << (TOKEN_T__124 - 123)) |
                          (BigInt.one << (TOKEN_T__125 - 123)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__126:
        case TOKEN_T__127:
          _localctx = WidgetTypeLinkContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 640;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__126 || _la == TOKEN_T__127)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__128:
        case TOKEN_T__129:
        case TOKEN_T__132:
        case TOKEN_T__134:
        case TOKEN_T__135:
        case TOKEN_T__136:
        case TOKEN_T__137:
        case TOKEN_T__138:
        case TOKEN_T__139:
          _localctx = WidgetTypeTextFieldContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 651;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__128:
            case TOKEN_T__129:
              state = 641;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__128 || _la == TOKEN_T__129)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 642;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__130 || _la == TOKEN_T__131)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__132:
              state = 643;
              match(TOKEN_T__132);
              state = 644;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__128 || _la == TOKEN_T__133)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case TOKEN_T__134:
              state = 645;
              match(TOKEN_T__134);
              break;
            case TOKEN_T__135:
              state = 646;
              match(TOKEN_T__135);
              break;
            case TOKEN_T__136:
              state = 647;
              match(TOKEN_T__136);
              break;
            case TOKEN_T__137:
              state = 648;
              match(TOKEN_T__137);
              break;
            case TOKEN_T__138:
              state = 649;
              match(TOKEN_T__138);
              break;
            case TOKEN_T__139:
              state = 650;
              match(TOKEN_T__139);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case TOKEN_T__140:
        case TOKEN_T__141:
          _localctx = WidgetTypeSliderContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 653;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__140 || _la == TOKEN_T__141)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__142:
        case TOKEN_T__143:
          _localctx = WidgetTypeImageContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 654;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__142 || _la == TOKEN_T__143)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__144:
        case TOKEN_T__145:
          _localctx = WidgetTypeListContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 655;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__144 || _la == TOKEN_T__145)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__8:
        case TOKEN_T__148:
        case TOKEN_T__149:
          _localctx = WidgetTypeCheckBoxContext(_localctx);
          enterOuterAlt(_localctx, 8);
          state = 660;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__8:
              state = 656;
              match(TOKEN_T__8);
              state = 657;
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
              state = 658;
              match(TOKEN_T__148);
              break;
            case TOKEN_T__149:
              state = 659;
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
          state = 662;
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
          state = 663;
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
      state = 670;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__31:
          _localctx = SingleDirectionLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 666;
          match(TOKEN_T__31);
          break;
        case TOKEN_T__34:
          _localctx = SingleDirectionRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 667;
          match(TOKEN_T__34);
          break;
        case TOKEN_T__154:
        case TOKEN_T__155:
          _localctx = SingleDirectionTopContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 668;
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
          state = 669;
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
      state = 708;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 120, context)) {
        case 1:
          _localctx = DoubleDirectionTopLeftContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 679;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__154:
            case TOKEN_T__155:
              state = 672;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__154 || _la == TOKEN_T__155)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 674;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 673;
                match(TOKEN_T__38);
              }

              state = 676;
              match(TOKEN_T__31);
              break;
            case TOKEN_T__31:
              state = 677;
              match(TOKEN_T__31);
              state = 678;
              match(TOKEN_T__154);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 2:
          _localctx = DoubleDirectionTopRightContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 688;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__154:
            case TOKEN_T__155:
              state = 681;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__154 || _la == TOKEN_T__155)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 683;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 682;
                match(TOKEN_T__38);
              }

              state = 685;
              match(TOKEN_T__34);
              break;
            case TOKEN_T__34:
              state = 686;
              match(TOKEN_T__34);
              state = 687;
              match(TOKEN_T__154);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 3:
          _localctx = DoubleDirectionBottomLeftContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 697;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__156:
            case TOKEN_T__157:
              state = 690;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 692;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 691;
                match(TOKEN_T__38);
              }

              state = 694;
              match(TOKEN_T__31);
              break;
            case TOKEN_T__31:
              state = 695;
              match(TOKEN_T__31);
              state = 696;
              match(TOKEN_T__156);
              break;
            default:
              throw NoViableAltException(this);
          }
          break;
        case 4:
          _localctx = DoubleDirectionBottomRightContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 706;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
            case TOKEN_T__156:
            case TOKEN_T__157:
              state = 699;
              _la = tokenStream.LA(1)!;
              if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1)! == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 701;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__38) {
                state = 700;
                match(TOKEN_T__38);
              }

              state = 703;
              match(TOKEN_T__34);
              break;
            case TOKEN_T__34:
              state = 704;
              match(TOKEN_T__34);
              state = 705;
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
      state = 710;
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
      state = 712;
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
      state = 714;
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
      state = 716;
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
      state = 718;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__24 || _la == TOKEN_T__75 || _la == TOKEN_T__106)) {
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
      state = 720;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 169)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 169)) &
                  ((BigInt.one << (TOKEN_T__168 - 169)) |
                      (BigInt.one << (TOKEN_T__169 - 169)) |
                      (BigInt.one << (TOKEN_T__170 - 169)) |
                      (BigInt.one << (TOKEN_T__171 - 169)) |
                      (BigInt.one << (TOKEN_T__172 - 169)) |
                      (BigInt.one << (TOKEN_T__173 - 169)))) !=
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
      state = 722;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 175)) & ~0x3f) == 0 &&
          ((BigInt.one << (_la - 175)) &
                  ((BigInt.one << (TOKEN_T__174 - 175)) |
                      (BigInt.one << (TOKEN_T__175 - 175)) |
                      (BigInt.one << (TOKEN_T__176 - 175)))) !=
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
      state = 733;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
        case TOKEN_T__174:
          enterOuterAlt(_localctx, 1);
          state = 724;
          match(TOKEN_T__174);
          state = 725;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__177:
          enterOuterAlt(_localctx, 2);
          state = 726;
          match(TOKEN_T__177);
          break;
        case TOKEN_T__175:
          enterOuterAlt(_localctx, 3);
          state = 727;
          match(TOKEN_T__175);
          state = 728;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__178:
          enterOuterAlt(_localctx, 4);
          state = 729;
          match(TOKEN_T__178);
          break;
        case TOKEN_T__176:
          enterOuterAlt(_localctx, 5);
          state = 730;
          match(TOKEN_T__176);
          state = 731;
          match(TOKEN_T__37);
          break;
        case TOKEN_T__179:
          enterOuterAlt(_localctx, 6);
          state = 732;
          match(TOKEN_T__179);
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
        return precpred(context, 12);
      case 1:
        return precpred(context, 11);
      case 2:
        return precpred(context, 10);
      case 3:
        return precpred(context, 9);
      case 4:
        return precpred(context, 8);
      case 5:
        return precpred(context, 7);
      case 6:
        return precpred(context, 6);
      case 7:
        return precpred(context, 5);
      case 8:
        return precpred(context, 4);
      case 9:
        return precpred(context, 2);
      case 10:
        return precpred(context, 1);
      case 11:
        return precpred(context, 13);
      case 12:
        return precpred(context, 3);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{C7}\u{2E2}\u{4}\u{2}\u{9}\u{2}'
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
      '\u{2}\u{E}\u{2}\u{54}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{5}\u{3}'
      '\u{59}\u{A}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{5}\u{3}\u{5E}\u{A}\u{3}'
      '\u{3}\u{3}\u{5}\u{3}\u{61}\u{A}\u{3}\u{3}\u{3}\u{5}\u{3}\u{64}\u{A}\u{3}'
      '\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}\u{4}\u{69}\u{A}\u{4}\u{3}\u{4}\u{3}'
      '\u{4}\u{5}\u{4}\u{6D}\u{A}\u{4}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{71}\u{A}'
      '\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{77}\u{A}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{7C}\u{A}\u{5}\u{3}\u{5}\u{3}'
      '\u{5}\u{3}\u{5}\u{5}\u{5}\u{81}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{84}\u{A}'
      '\u{5}\u{3}\u{5}\u{5}\u{5}\u{87}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}'
      '\u{8B}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{8E}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{5}\u{5}\u{92}\u{A}\u{5}\u{3}\u{5}\u{5}\u{5}\u{95}\u{A}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{5}\u{5}\u{A6}\u{A}\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{AB}'
      '\u{A}\u{5}\u{3}\u{6}\u{5}\u{6}\u{AE}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}'
      '\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{B7}\u{A}\u{6}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{C5}\u{A}'
      '\u{7}\u{3}\u{7}\u{5}\u{7}\u{C8}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{F3}\u{A}\u{7}\u{3}\u{7}\u{3}'
      '\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{FA}\u{A}\u{7}\u{3}\u{7}'
      '\u{3}\u{7}\u{7}\u{7}\u{FE}\u{A}\u{7}\u{C}\u{7}\u{E}\u{7}\u{101}\u{B}'
      '\u{7}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{105}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{5}\u{8}\u{109}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{10D}\u{A}'
      '\u{8}\u{3}\u{8}\u{5}\u{8}\u{110}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{5}\u{8}\u{115}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{11A}'
      '\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{11E}\u{A}\u{8}\u{5}\u{8}\u{120}'
      '\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{124}\u{A}\u{8}\u{3}\u{8}\u{3}'
      '\u{8}\u{5}\u{8}\u{128}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}'
      '\u{12D}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{131}\u{A}\u{8}\u{5}'
      '\u{8}\u{133}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{137}\u{A}\u{8}'
      '\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{13B}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}'
      '\u{8}\u{13F}\u{A}\u{8}\u{5}\u{8}\u{141}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{5}\u{8}\u{145}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{149}\u{A}'
      '\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{14E}\u{A}\u{8}\u{3}\u{8}'
      '\u{3}\u{8}\u{5}\u{8}\u{152}\u{A}\u{8}\u{5}\u{8}\u{154}\u{A}\u{8}\u{3}'
      '\u{8}\u{3}\u{8}\u{5}\u{8}\u{158}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}'
      '\u{15C}\u{A}\u{8}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{160}\u{A}\u{8}\u{5}'
      '\u{8}\u{162}\u{A}\u{8}\u{5}\u{8}\u{164}\u{A}\u{8}\u{3}\u{9}\u{3}\u{9}'
      '\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}'
      '\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}'
      '\u{3}\u{9}\u{5}\u{9}\u{177}\u{A}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}'
      '\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{5}\u{A}\u{180}\u{A}\u{A}\u{3}\u{B}'
      '\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{186}\u{A}\u{B}\u{3}\u{B}\u{3}'
      '\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}'
      '\u{B}\u{5}\u{B}\u{191}\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}'
      '\u{196}\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{19C}'
      '\u{A}\u{B}\u{3}\u{B}\u{7}\u{B}\u{19F}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{1A2}'
      '\u{B}\u{B}\u{5}\u{B}\u{1A4}\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}'
      '\u{B}\u{3}\u{B}\u{5}\u{B}\u{1AB}\u{A}\u{B}\u{3}\u{B}\u{7}\u{B}\u{1AE}'
      '\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{1B1}\u{B}\u{B}\u{5}\u{B}\u{1B3}\u{A}'
      '\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{5}\u{C}\u{1B9}\u{A}\u{C}'
      '\u{3}\u{C}\u{3}\u{C}\u{5}\u{C}\u{1BD}\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}'
      '\u{E}\u{3}\u{E}\u{3}\u{F}\u{7}\u{F}\u{1C4}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}'
      '\u{1C7}\u{B}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{1CD}'
      '\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1D0}\u{B}\u{F}\u{3}\u{F}\u{5}\u{F}\u{1D3}'
      '\u{A}\u{F}\u{3}\u{F}\u{7}\u{F}\u{1D6}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1D9}'
      '\u{B}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{1DE}\u{A}\u{F}\u{C}'
      '\u{F}\u{E}\u{F}\u{1E1}\u{B}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}'
      '\u{1E6}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1E9}\u{B}\u{F}\u{3}\u{F}\u{5}'
      '\u{F}\u{1EC}\u{A}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}'
      '\u{1F2}\u{A}\u{F}\u{C}\u{F}\u{E}\u{F}\u{1F5}\u{B}\u{F}\u{5}\u{F}\u{1F7}'
      '\u{A}\u{F}\u{5}\u{F}\u{1F9}\u{A}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
      '\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{200}\u{A}\u{10}\u{3}\u{11}\u{3}\u{11}'
      '\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}'
      '\u{11}\u{3}\u{11}\u{3}\u{11}\u{5}\u{11}\u{20D}\u{A}\u{11}\u{3}\u{12}'
      '\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{212}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}'
      '\u{5}\u{12}\u{216}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}'
      '\u{21B}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{21F}\u{A}\u{12}'
      '\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}\u{226}'
      '\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}'
      '\u{12}\u{5}\u{12}\u{22E}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}'
      '\u{232}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
      '\u{3}\u{12}\u{5}\u{12}\u{23A}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{5}\u{12}'
      '\u{23E}\u{A}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
      '\u{5}\u{12}\u{245}\u{A}\u{12}\u{5}\u{12}\u{247}\u{A}\u{12}\u{3}\u{12}'
      '\u{5}\u{12}\u{24A}\u{A}\u{12}\u{5}\u{12}\u{24C}\u{A}\u{12}\u{3}\u{13}'
      '\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{5}'
      '\u{13}\u{255}\u{A}\u{13}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}'
      '\u{25A}\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{25E}\u{A}\u{14}'
      '\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{262}\u{A}\u{14}\u{3}\u{14}\u{5}\u{14}'
      '\u{265}\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{26A}'
      '\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{26E}\u{A}\u{14}\u{3}\u{14}'
      '\u{5}\u{14}\u{271}\u{A}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}'
      '\u{276}\u{A}\u{14}\u{3}\u{14}\u{5}\u{14}\u{279}\u{A}\u{14}\u{3}\u{14}'
      '\u{3}\u{14}\u{5}\u{14}\u{27D}\u{A}\u{14}\u{5}\u{14}\u{27F}\u{A}\u{14}'
      '\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}'
      '\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{5}\u{15}\u{28E}\u{A}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}'
      '\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{297}\u{A}\u{15}\u{3}\u{15}'
      '\u{3}\u{15}\u{5}\u{15}\u{29B}\u{A}\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}'
      '\u{3}\u{16}\u{5}\u{16}\u{2A1}\u{A}\u{16}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}'
      '\u{2A5}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{2AA}'
      '\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{2AE}\u{A}\u{17}\u{3}\u{17}'
      '\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{2B3}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}'
      '\u{5}\u{17}\u{2B7}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}'
      '\u{2BC}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{2C0}\u{A}\u{17}'
      '\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{2C5}\u{A}\u{17}\u{5}\u{17}'
      '\u{2C7}\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{1A}'
      '\u{3}\u{1A}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}\u{3}'
      '\u{1D}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}'
      '\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{5}\u{1F}\u{2E0}'
      '\u{A}\u{1F}\u{3}\u{1F}\u{4}\u{1A0}\u{1AF}\u{3}\u{C}\u{20}\u{2}\u{4}\u{6}'
      '\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}'
      '\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}\u{36}'
      '\u{38}\u{3A}\u{3C}\u{2}\u{29}\u{3}\u{2}\u{A}\u{D}\u{3}\u{2}\u{15}\u{16}'
      '\u{4}\u{2}\u{7}\u{7}\u{18}\u{18}\u{3}\u{2}\u{19}\u{1A}\u{3}\u{2}\u{1B}'
      '\u{1C}\u{3}\u{2}\u{1F}\u{21}\u{3}\u{2}\u{2E}\u{2F}\u{4}\u{2}\u{29}\u{29}'
      '\u{30}\u{30}\u{3}\u{2}\u{31}\u{32}\u{3}\u{2}\u{2A}\u{2C}\u{3}\u{2}\u{4A}'
      '\u{4C}\u{3}\u{2}\u{51}\u{5B}\u{3}\u{2}\u{5C}\u{66}\u{4}\u{2}\u{11}\u{12}'
      '\u{1B}\u{1B}\u{3}\u{2}\u{70}\u{71}\u{3}\u{2}\u{73}\u{74}\u{4}\u{2}\u{1B}'
      '\u{1B}\u{75}\u{76}\u{4}\u{2}\u{13}\u{13}\u{79}\u{7A}\u{3}\u{2}\u{7B}'
      '\u{7C}\u{3}\u{2}\u{7D}\u{80}\u{3}\u{2}\u{81}\u{82}\u{3}\u{2}\u{83}\u{84}'
      '\u{3}\u{2}\u{85}\u{86}\u{4}\u{2}\u{83}\u{83}\u{88}\u{88}\u{3}\u{2}\u{8F}'
      '\u{90}\u{3}\u{2}\u{91}\u{92}\u{3}\u{2}\u{93}\u{94}\u{3}\u{2}\u{95}\u{96}'
      '\u{3}\u{2}\u{99}\u{9A}\u{3}\u{2}\u{9B}\u{9C}\u{3}\u{2}\u{9D}\u{9E}\u{3}'
      '\u{2}\u{9F}\u{A0}\u{3}\u{2}\u{A1}\u{A4}\u{3}\u{2}\u{A5}\u{A6}\u{3}\u{2}'
      '\u{A7}\u{A8}\u{3}\u{2}\u{A9}\u{AA}\u{5}\u{2}\u{1B}\u{1B}\u{4E}\u{4E}'
      '\u{6D}\u{6D}\u{3}\u{2}\u{AB}\u{B0}\u{3}\u{2}\u{B1}\u{B3}\u{2}\u{396}'
      '\u{2}\u{46}\u{3}\u{2}\u{2}\u{2}\u{4}\u{63}\u{3}\u{2}\u{2}\u{2}\u{6}\u{6C}'
      '\u{3}\u{2}\u{2}\u{2}\u{8}\u{AA}\u{3}\u{2}\u{2}\u{2}\u{A}\u{B6}\u{3}\u{2}'
      '\u{2}\u{2}\u{C}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{E}\u{163}\u{3}\u{2}\u{2}'
      '\u{2}\u{10}\u{176}\u{3}\u{2}\u{2}\u{2}\u{12}\u{17F}\u{3}\u{2}\u{2}\u{2}'
      '\u{14}\u{1B2}\u{3}\u{2}\u{2}\u{2}\u{16}\u{1BC}\u{3}\u{2}\u{2}\u{2}\u{18}'
      '\u{1BE}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{1C0}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{1F8}'
      '\u{3}\u{2}\u{2}\u{2}\u{1E}\u{1FF}\u{3}\u{2}\u{2}\u{2}\u{20}\u{20C}\u{3}'
      '\u{2}\u{2}\u{2}\u{22}\u{24B}\u{3}\u{2}\u{2}\u{2}\u{24}\u{254}\u{3}\u{2}'
      '\u{2}\u{2}\u{26}\u{27E}\u{3}\u{2}\u{2}\u{2}\u{28}\u{29A}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A}\u{2A0}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{2C6}\u{3}\u{2}\u{2}\u{2}'
      '\u{2E}\u{2C8}\u{3}\u{2}\u{2}\u{2}\u{30}\u{2CA}\u{3}\u{2}\u{2}\u{2}\u{32}'
      '\u{2CC}\u{3}\u{2}\u{2}\u{2}\u{34}\u{2CE}\u{3}\u{2}\u{2}\u{2}\u{36}\u{2D0}'
      '\u{3}\u{2}\u{2}\u{2}\u{38}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{2D4}\u{3}'
      '\u{2}\u{2}\u{2}\u{3C}\u{2DF}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{40}\u{5}\u{4}'
      '\u{3}\u{2}\u{3F}\u{41}\u{7}\u{3}\u{2}\u{2}\u{40}\u{3F}\u{3}\u{2}\u{2}'
      '\u{2}\u{40}\u{41}\u{3}\u{2}\u{2}\u{2}\u{41}\u{42}\u{3}\u{2}\u{2}\u{2}'
      '\u{42}\u{43}\u{7}\u{C3}\u{2}\u{2}\u{43}\u{45}\u{3}\u{2}\u{2}\u{2}\u{44}'
      '\u{3E}\u{3}\u{2}\u{2}\u{2}\u{45}\u{48}\u{3}\u{2}\u{2}\u{2}\u{46}\u{44}'
      '\u{3}\u{2}\u{2}\u{2}\u{46}\u{47}\u{3}\u{2}\u{2}\u{2}\u{47}\u{4D}\u{3}'
      '\u{2}\u{2}\u{2}\u{48}\u{46}\u{3}\u{2}\u{2}\u{2}\u{49}\u{4B}\u{5}\u{4}'
      '\u{3}\u{2}\u{4A}\u{4C}\u{7}\u{3}\u{2}\u{2}\u{4B}\u{4A}\u{3}\u{2}\u{2}'
      '\u{2}\u{4B}\u{4C}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{4E}\u{3}\u{2}\u{2}\u{2}'
      '\u{4D}\u{49}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4E}\u{3}\u{2}\u{2}\u{2}\u{4E}'
      '\u{52}\u{3}\u{2}\u{2}\u{2}\u{4F}\u{51}\u{7}\u{C3}\u{2}\u{2}\u{50}\u{4F}'
      '\u{3}\u{2}\u{2}\u{2}\u{51}\u{54}\u{3}\u{2}\u{2}\u{2}\u{52}\u{50}\u{3}'
      '\u{2}\u{2}\u{2}\u{52}\u{53}\u{3}\u{2}\u{2}\u{2}\u{53}\u{55}\u{3}\u{2}'
      '\u{2}\u{2}\u{54}\u{52}\u{3}\u{2}\u{2}\u{2}\u{55}\u{56}\u{7}\u{2}\u{2}'
      '\u{3}\u{56}\u{3}\u{3}\u{2}\u{2}\u{2}\u{57}\u{59}\u{5}\u{6}\u{4}\u{2}'
      '\u{58}\u{57}\u{3}\u{2}\u{2}\u{2}\u{58}\u{59}\u{3}\u{2}\u{2}\u{2}\u{59}'
      '\u{5A}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{5D}\u{5}\u{8}\u{5}\u{2}\u{5B}\u{5C}'
      '\u{7}\u{4}\u{2}\u{2}\u{5C}\u{5E}\u{5}\u{C}\u{7}\u{2}\u{5D}\u{5B}\u{3}'
      '\u{2}\u{2}\u{2}\u{5D}\u{5E}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{64}\u{3}\u{2}'
      '\u{2}\u{2}\u{5F}\u{61}\u{5}\u{6}\u{4}\u{2}\u{60}\u{5F}\u{3}\u{2}\u{2}'
      '\u{2}\u{60}\u{61}\u{3}\u{2}\u{2}\u{2}\u{61}\u{62}\u{3}\u{2}\u{2}\u{2}'
      '\u{62}\u{64}\u{5}\u{C}\u{7}\u{2}\u{63}\u{58}\u{3}\u{2}\u{2}\u{2}\u{63}'
      '\u{60}\u{3}\u{2}\u{2}\u{2}\u{64}\u{5}\u{3}\u{2}\u{2}\u{2}\u{65}\u{6D}'
      '\u{7}\u{5}\u{2}\u{2}\u{66}\u{68}\u{7}\u{6}\u{2}\u{2}\u{67}\u{69}\u{7}'
      '\u{7}\u{2}\u{2}\u{68}\u{67}\u{3}\u{2}\u{2}\u{2}\u{68}\u{69}\u{3}\u{2}'
      '\u{2}\u{2}\u{69}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{6D}\u{7}\u{8}\u{2}'
      '\u{2}\u{6B}\u{6D}\u{7}\u{9}\u{2}\u{2}\u{6C}\u{65}\u{3}\u{2}\u{2}\u{2}'
      '\u{6C}\u{66}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{6A}\u{3}\u{2}\u{2}\u{2}\u{6C}'
      '\u{6B}\u{3}\u{2}\u{2}\u{2}\u{6D}\u{7}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{70}'
      '\u{9}\u{2}\u{2}\u{2}\u{6F}\u{71}\u{7}\u{E}\u{2}\u{2}\u{70}\u{6F}\u{3}'
      '\u{2}\u{2}\u{2}\u{70}\u{71}\u{3}\u{2}\u{2}\u{2}\u{71}\u{72}\u{3}\u{2}'
      '\u{2}\u{2}\u{72}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{73}\u{77}\u{7}\u{F}\u{2}'
      '\u{2}\u{74}\u{75}\u{7}\u{10}\u{2}\u{2}\u{75}\u{77}\u{7}\u{11}\u{2}\u{2}'
      '\u{76}\u{73}\u{3}\u{2}\u{2}\u{2}\u{76}\u{74}\u{3}\u{2}\u{2}\u{2}\u{77}'
      '\u{78}\u{3}\u{2}\u{2}\u{2}\u{78}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{79}\u{7B}'
      '\u{5}\u{A}\u{6}\u{2}\u{7A}\u{7C}\u{7}\u{12}\u{2}\u{2}\u{7B}\u{7A}\u{3}'
      '\u{2}\u{2}\u{2}\u{7B}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{7D}\u{3}\u{2}'
      '\u{2}\u{2}\u{7D}\u{86}\u{5}\u{C}\u{7}\u{2}\u{7E}\u{84}\u{7}\u{11}\u{2}'
      '\u{2}\u{7F}\u{81}\u{7}\u{13}\u{2}\u{2}\u{80}\u{7F}\u{3}\u{2}\u{2}\u{2}'
      '\u{80}\u{81}\u{3}\u{2}\u{2}\u{2}\u{81}\u{82}\u{3}\u{2}\u{2}\u{2}\u{82}'
      '\u{84}\u{7}\u{14}\u{2}\u{2}\u{83}\u{7E}\u{3}\u{2}\u{2}\u{2}\u{83}\u{80}'
      '\u{3}\u{2}\u{2}\u{2}\u{84}\u{85}\u{3}\u{2}\u{2}\u{2}\u{85}\u{87}\u{5}'
      '\u{C}\u{7}\u{2}\u{86}\u{83}\u{3}\u{2}\u{2}\u{2}\u{86}\u{87}\u{3}\u{2}'
      '\u{2}\u{2}\u{87}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{88}\u{8D}\u{5}\u{A}\u{6}'
      '\u{2}\u{89}\u{8B}\u{7}\u{12}\u{2}\u{2}\u{8A}\u{89}\u{3}\u{2}\u{2}\u{2}'
      '\u{8A}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{8B}\u{8C}\u{3}\u{2}\u{2}\u{2}\u{8C}'
      '\u{8E}\u{5}\u{C}\u{7}\u{2}\u{8D}\u{8A}\u{3}\u{2}\u{2}\u{2}\u{8D}\u{8E}'
      '\u{3}\u{2}\u{2}\u{2}\u{8E}\u{94}\u{3}\u{2}\u{2}\u{2}\u{8F}\u{95}\u{7}'
      '\u{11}\u{2}\u{2}\u{90}\u{92}\u{7}\u{13}\u{2}\u{2}\u{91}\u{90}\u{3}\u{2}'
      '\u{2}\u{2}\u{91}\u{92}\u{3}\u{2}\u{2}\u{2}\u{92}\u{93}\u{3}\u{2}\u{2}'
      '\u{2}\u{93}\u{95}\u{7}\u{14}\u{2}\u{2}\u{94}\u{8F}\u{3}\u{2}\u{2}\u{2}'
      '\u{94}\u{91}\u{3}\u{2}\u{2}\u{2}\u{95}\u{96}\u{3}\u{2}\u{2}\u{2}\u{96}'
      '\u{97}\u{5}\u{C}\u{7}\u{2}\u{97}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{98}\u{99}'
      '\u{9}\u{3}\u{2}\u{2}\u{99}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{9A}\u{9B}\u{7}'
      '\u{17}\u{2}\u{2}\u{9B}\u{9C}\u{7}\u{BE}\u{2}\u{2}\u{9C}\u{9D}\u{9}\u{4}'
      '\u{2}\u{2}\u{9D}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{9E}\u{9F}\u{9}\u{5}\u{2}'
      '\u{2}\u{9F}\u{A0}\u{5}\u{C}\u{7}\u{2}\u{A0}\u{A1}\u{9}\u{6}\u{2}\u{2}'
      '\u{A1}\u{A2}\u{7}\u{BE}\u{2}\u{2}\u{A2}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{A3}'
      '\u{A5}\u{7}\u{1D}\u{2}\u{2}\u{A4}\u{A6}\u{7}\u{1E}\u{2}\u{2}\u{A5}\u{A4}'
      '\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A6}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{A7}\u{3}'
      '\u{2}\u{2}\u{2}\u{A7}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{A8}\u{A9}\u{9}\u{7}'
      '\u{2}\u{2}\u{A9}\u{AB}\u{5}\u{C}\u{7}\u{2}\u{AA}\u{6E}\u{3}\u{2}\u{2}'
      '\u{2}\u{AA}\u{76}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{79}\u{3}\u{2}\u{2}\u{2}'
      '\u{AA}\u{88}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{98}\u{3}\u{2}\u{2}\u{2}\u{AA}'
      '\u{9A}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{9E}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{A3}'
      '\u{3}\u{2}\u{2}\u{2}\u{AA}\u{A8}\u{3}\u{2}\u{2}\u{2}\u{AB}\u{9}\u{3}'
      '\u{2}\u{2}\u{2}\u{AC}\u{AE}\u{7}\u{22}\u{2}\u{2}\u{AD}\u{AC}\u{3}\u{2}'
      '\u{2}\u{2}\u{AD}\u{AE}\u{3}\u{2}\u{2}\u{2}\u{AE}\u{AF}\u{3}\u{2}\u{2}'
      '\u{2}\u{AF}\u{B7}\u{5}\u{38}\u{1D}\u{2}\u{B0}\u{B1}\u{7}\u{23}\u{2}\u{2}'
      '\u{B1}\u{B7}\u{5}\u{38}\u{1D}\u{2}\u{B2}\u{B3}\u{7}\u{24}\u{2}\u{2}\u{B3}'
      '\u{B7}\u{5}\u{38}\u{1D}\u{2}\u{B4}\u{B5}\u{7}\u{25}\u{2}\u{2}\u{B5}\u{B7}'
      '\u{5}\u{38}\u{1D}\u{2}\u{B6}\u{AD}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{B0}\u{3}'
      '\u{2}\u{2}\u{2}\u{B6}\u{B2}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{B4}\u{3}\u{2}'
      '\u{2}\u{2}\u{B7}\u{B}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{B9}\u{8}\u{7}\u{1}'
      '\u{2}\u{B9}\u{BA}\u{7}\u{26}\u{2}\u{2}\u{BA}\u{BB}\u{5}\u{C}\u{7}\u{2}'
      '\u{BB}\u{BC}\u{7}\u{27}\u{2}\u{2}\u{BC}\u{C8}\u{3}\u{2}\u{2}\u{2}\u{BD}'
      '\u{C8}\u{5}\u{10}\u{9}\u{2}\u{BE}\u{BF}\u{7}\u{28}\u{2}\u{2}\u{BF}\u{C8}'
      '\u{5}\u{C}\u{7}\u{12}\u{C0}\u{C1}\u{7}\u{29}\u{2}\u{2}\u{C1}\u{C8}\u{5}'
      '\u{C}\u{7}\u{11}\u{C2}\u{C5}\u{7}\u{C5}\u{2}\u{2}\u{C3}\u{C5}\u{7}\u{C6}'
      '\u{2}\u{2}\u{C4}\u{C2}\u{3}\u{2}\u{2}\u{2}\u{C4}\u{C3}\u{3}\u{2}\u{2}'
      '\u{2}\u{C5}\u{C6}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{C8}\u{5}\u{C}\u{7}\u{10}'
      '\u{C7}\u{B8}\u{3}\u{2}\u{2}\u{2}\u{C7}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{C7}'
      '\u{BE}\u{3}\u{2}\u{2}\u{2}\u{C7}\u{C0}\u{3}\u{2}\u{2}\u{2}\u{C7}\u{C4}'
      '\u{3}\u{2}\u{2}\u{2}\u{C8}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{C9}\u{CA}\u{C}'
      '\u{E}\u{2}\u{2}\u{CA}\u{CB}\u{7}\u{2D}\u{2}\u{2}\u{CB}\u{FE}\u{5}\u{C}'
      '\u{7}\u{F}\u{CC}\u{CD}\u{C}\u{D}\u{2}\u{2}\u{CD}\u{CE}\u{9}\u{8}\u{2}'
      '\u{2}\u{CE}\u{FE}\u{5}\u{C}\u{7}\u{E}\u{CF}\u{D0}\u{C}\u{C}\u{2}\u{2}'
      '\u{D0}\u{D1}\u{9}\u{9}\u{2}\u{2}\u{D1}\u{FE}\u{5}\u{C}\u{7}\u{D}\u{D2}'
      '\u{D3}\u{C}\u{B}\u{2}\u{2}\u{D3}\u{D4}\u{9}\u{A}\u{2}\u{2}\u{D4}\u{FE}'
      '\u{5}\u{C}\u{7}\u{C}\u{D5}\u{D6}\u{C}\u{A}\u{2}\u{2}\u{D6}\u{D7}\u{5}'
      '\u{E}\u{8}\u{2}\u{D7}\u{D8}\u{5}\u{C}\u{7}\u{B}\u{D8}\u{FE}\u{3}\u{2}'
      '\u{2}\u{2}\u{D9}\u{DA}\u{C}\u{9}\u{2}\u{2}\u{DA}\u{DB}\u{7}\u{33}\u{2}'
      '\u{2}\u{DB}\u{DC}\u{7}\u{13}\u{2}\u{2}\u{DC}\u{DD}\u{3}\u{2}\u{2}\u{2}'
      '\u{DD}\u{FE}\u{5}\u{C}\u{7}\u{A}\u{DE}\u{DF}\u{C}\u{8}\u{2}\u{2}\u{DF}'
      '\u{E0}\u{7}\u{34}\u{2}\u{2}\u{E0}\u{E1}\u{7}\u{13}\u{2}\u{2}\u{E1}\u{E2}'
      '\u{3}\u{2}\u{2}\u{2}\u{E2}\u{FE}\u{5}\u{C}\u{7}\u{9}\u{E3}\u{E4}\u{C}'
      '\u{7}\u{2}\u{2}\u{E4}\u{E5}\u{7}\u{35}\u{2}\u{2}\u{E5}\u{FE}\u{5}\u{C}'
      '\u{7}\u{8}\u{E6}\u{E7}\u{C}\u{6}\u{2}\u{2}\u{E7}\u{E8}\u{7}\u{36}\u{2}'
      '\u{2}\u{E8}\u{FE}\u{5}\u{C}\u{7}\u{7}\u{E9}\u{EA}\u{C}\u{4}\u{2}\u{2}'
      '\u{EA}\u{EB}\u{7}\u{37}\u{2}\u{2}\u{EB}\u{FE}\u{5}\u{C}\u{7}\u{5}\u{EC}'
      '\u{ED}\u{C}\u{3}\u{2}\u{2}\u{ED}\u{EE}\u{7}\u{38}\u{2}\u{2}\u{EE}\u{FE}'
      '\u{5}\u{C}\u{7}\u{4}\u{EF}\u{F2}\u{C}\u{F}\u{2}\u{2}\u{F0}\u{F3}\u{5}'
      '\u{3A}\u{1E}\u{2}\u{F1}\u{F3}\u{5}\u{3C}\u{1F}\u{2}\u{F2}\u{F0}\u{3}'
      '\u{2}\u{2}\u{2}\u{F2}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{F3}\u{F4}\u{3}\u{2}'
      '\u{2}\u{2}\u{F4}\u{F5}\u{9}\u{B}\u{2}\u{2}\u{F5}\u{FE}\u{3}\u{2}\u{2}'
      '\u{2}\u{F6}\u{F9}\u{C}\u{5}\u{2}\u{2}\u{F7}\u{FA}\u{5}\u{3A}\u{1E}\u{2}'
      '\u{F8}\u{FA}\u{5}\u{3C}\u{1F}\u{2}\u{F9}\u{F7}\u{3}\u{2}\u{2}\u{2}\u{F9}'
      '\u{F8}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{FB}\u{FC}'
      '\u{5}\u{12}\u{A}\u{2}\u{FC}\u{FE}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{C9}\u{3}'
      '\u{2}\u{2}\u{2}\u{FD}\u{CC}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{CF}\u{3}\u{2}'
      '\u{2}\u{2}\u{FD}\u{D2}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{D5}\u{3}\u{2}\u{2}'
      '\u{2}\u{FD}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{DE}\u{3}\u{2}\u{2}\u{2}'
      '\u{FD}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{E6}\u{3}\u{2}\u{2}\u{2}\u{FD}'
      '\u{E9}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{EC}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{EF}'
      '\u{3}\u{2}\u{2}\u{2}\u{FD}\u{F6}\u{3}\u{2}\u{2}\u{2}\u{FE}\u{101}\u{3}'
      '\u{2}\u{2}\u{2}\u{FF}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{FF}\u{100}\u{3}\u{2}'
      '\u{2}\u{2}\u{100}\u{D}\u{3}\u{2}\u{2}\u{2}\u{101}\u{FF}\u{3}\u{2}\u{2}'
      '\u{2}\u{102}\u{110}\u{7}\u{39}\u{2}\u{2}\u{103}\u{105}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{104}\u{103}\u{3}\u{2}\u{2}\u{2}\u{104}\u{105}\u{3}\u{2}\u{2}'
      '\u{2}\u{105}\u{106}\u{3}\u{2}\u{2}\u{2}\u{106}\u{110}\u{7}\u{3A}\u{2}'
      '\u{2}\u{107}\u{109}\u{5}\u{3A}\u{1E}\u{2}\u{108}\u{107}\u{3}\u{2}\u{2}'
      '\u{2}\u{108}\u{109}\u{3}\u{2}\u{2}\u{2}\u{109}\u{10A}\u{3}\u{2}\u{2}'
      '\u{2}\u{10A}\u{10C}\u{7}\u{3B}\u{2}\u{2}\u{10B}\u{10D}\u{7}\u{7}\u{2}'
      '\u{2}\u{10C}\u{10B}\u{3}\u{2}\u{2}\u{2}\u{10C}\u{10D}\u{3}\u{2}\u{2}'
      '\u{2}\u{10D}\u{110}\u{3}\u{2}\u{2}\u{2}\u{10E}\u{110}\u{7}\u{3C}\u{2}'
      '\u{2}\u{10F}\u{102}\u{3}\u{2}\u{2}\u{2}\u{10F}\u{104}\u{3}\u{2}\u{2}'
      '\u{2}\u{10F}\u{108}\u{3}\u{2}\u{2}\u{2}\u{10F}\u{10E}\u{3}\u{2}\u{2}'
      '\u{2}\u{110}\u{164}\u{3}\u{2}\u{2}\u{2}\u{111}\u{120}\u{7}\u{3D}\u{2}'
      '\u{2}\u{112}\u{120}\u{7}\u{3E}\u{2}\u{2}\u{113}\u{115}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{114}\u{113}\u{3}\u{2}\u{2}\u{2}\u{114}\u{115}\u{3}\u{2}\u{2}'
      '\u{2}\u{115}\u{116}\u{3}\u{2}\u{2}\u{2}\u{116}\u{120}\u{7}\u{3F}\u{2}'
      '\u{2}\u{117}\u{11A}\u{5}\u{3C}\u{1F}\u{2}\u{118}\u{11A}\u{7}\u{28}\u{2}'
      '\u{2}\u{119}\u{117}\u{3}\u{2}\u{2}\u{2}\u{119}\u{118}\u{3}\u{2}\u{2}'
      '\u{2}\u{11A}\u{11B}\u{3}\u{2}\u{2}\u{2}\u{11B}\u{11D}\u{7}\u{3B}\u{2}'
      '\u{2}\u{11C}\u{11E}\u{7}\u{7}\u{2}\u{2}\u{11D}\u{11C}\u{3}\u{2}\u{2}'
      '\u{2}\u{11D}\u{11E}\u{3}\u{2}\u{2}\u{2}\u{11E}\u{120}\u{3}\u{2}\u{2}'
      '\u{2}\u{11F}\u{111}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{112}\u{3}\u{2}\u{2}'
      '\u{2}\u{11F}\u{114}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{119}\u{3}\u{2}\u{2}'
      '\u{2}\u{120}\u{164}\u{3}\u{2}\u{2}\u{2}\u{121}\u{133}\u{7}\u{40}\u{2}'
      '\u{2}\u{122}\u{124}\u{5}\u{3A}\u{1E}\u{2}\u{123}\u{122}\u{3}\u{2}\u{2}'
      '\u{2}\u{123}\u{124}\u{3}\u{2}\u{2}\u{2}\u{124}\u{125}\u{3}\u{2}\u{2}'
      '\u{2}\u{125}\u{133}\u{7}\u{41}\u{2}\u{2}\u{126}\u{128}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{127}\u{126}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{3}\u{2}\u{2}'
      '\u{2}\u{128}\u{129}\u{3}\u{2}\u{2}\u{2}\u{129}\u{12A}\u{7}\u{42}\u{2}'
      '\u{2}\u{12A}\u{12C}\u{7}\u{43}\u{2}\u{2}\u{12B}\u{12D}\u{7}\u{38}\u{2}'
      '\u{2}\u{12C}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12D}\u{3}\u{2}\u{2}'
      '\u{2}\u{12D}\u{12E}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{130}\u{7}\u{3B}\u{2}'
      '\u{2}\u{12F}\u{131}\u{7}\u{7}\u{2}\u{2}\u{130}\u{12F}\u{3}\u{2}\u{2}'
      '\u{2}\u{130}\u{131}\u{3}\u{2}\u{2}\u{2}\u{131}\u{133}\u{3}\u{2}\u{2}'
      '\u{2}\u{132}\u{121}\u{3}\u{2}\u{2}\u{2}\u{132}\u{123}\u{3}\u{2}\u{2}'
      '\u{2}\u{132}\u{127}\u{3}\u{2}\u{2}\u{2}\u{133}\u{164}\u{3}\u{2}\u{2}'
      '\u{2}\u{134}\u{141}\u{7}\u{44}\u{2}\u{2}\u{135}\u{137}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{136}\u{135}\u{3}\u{2}\u{2}\u{2}\u{136}\u{137}\u{3}\u{2}\u{2}'
      '\u{2}\u{137}\u{138}\u{3}\u{2}\u{2}\u{2}\u{138}\u{141}\u{7}\u{41}\u{2}'
      '\u{2}\u{139}\u{13B}\u{5}\u{3A}\u{1E}\u{2}\u{13A}\u{139}\u{3}\u{2}\u{2}'
      '\u{2}\u{13A}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{13C}\u{3}\u{2}\u{2}'
      '\u{2}\u{13C}\u{13E}\u{7}\u{42}\u{2}\u{2}\u{13D}\u{13F}\u{7}\u{43}\u{2}'
      '\u{2}\u{13E}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13E}\u{13F}\u{3}\u{2}\u{2}'
      '\u{2}\u{13F}\u{141}\u{3}\u{2}\u{2}\u{2}\u{140}\u{134}\u{3}\u{2}\u{2}'
      '\u{2}\u{140}\u{136}\u{3}\u{2}\u{2}\u{2}\u{140}\u{13A}\u{3}\u{2}\u{2}'
      '\u{2}\u{141}\u{164}\u{3}\u{2}\u{2}\u{2}\u{142}\u{154}\u{7}\u{45}\u{2}'
      '\u{2}\u{143}\u{145}\u{5}\u{3A}\u{1E}\u{2}\u{144}\u{143}\u{3}\u{2}\u{2}'
      '\u{2}\u{144}\u{145}\u{3}\u{2}\u{2}\u{2}\u{145}\u{146}\u{3}\u{2}\u{2}'
      '\u{2}\u{146}\u{154}\u{7}\u{46}\u{2}\u{2}\u{147}\u{149}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{148}\u{147}\u{3}\u{2}\u{2}\u{2}\u{148}\u{149}\u{3}\u{2}\u{2}'
      '\u{2}\u{149}\u{14A}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{14B}\u{7}\u{47}\u{2}'
      '\u{2}\u{14B}\u{14D}\u{7}\u{43}\u{2}\u{2}\u{14C}\u{14E}\u{7}\u{38}\u{2}'
      '\u{2}\u{14D}\u{14C}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{14E}\u{3}\u{2}\u{2}'
      '\u{2}\u{14E}\u{14F}\u{3}\u{2}\u{2}\u{2}\u{14F}\u{151}\u{7}\u{3B}\u{2}'
      '\u{2}\u{150}\u{152}\u{7}\u{7}\u{2}\u{2}\u{151}\u{150}\u{3}\u{2}\u{2}'
      '\u{2}\u{151}\u{152}\u{3}\u{2}\u{2}\u{2}\u{152}\u{154}\u{3}\u{2}\u{2}'
      '\u{2}\u{153}\u{142}\u{3}\u{2}\u{2}\u{2}\u{153}\u{144}\u{3}\u{2}\u{2}'
      '\u{2}\u{153}\u{148}\u{3}\u{2}\u{2}\u{2}\u{154}\u{164}\u{3}\u{2}\u{2}'
      '\u{2}\u{155}\u{162}\u{7}\u{48}\u{2}\u{2}\u{156}\u{158}\u{5}\u{3A}\u{1E}'
      '\u{2}\u{157}\u{156}\u{3}\u{2}\u{2}\u{2}\u{157}\u{158}\u{3}\u{2}\u{2}'
      '\u{2}\u{158}\u{159}\u{3}\u{2}\u{2}\u{2}\u{159}\u{162}\u{7}\u{49}\u{2}'
      '\u{2}\u{15A}\u{15C}\u{5}\u{3A}\u{1E}\u{2}\u{15B}\u{15A}\u{3}\u{2}\u{2}'
      '\u{2}\u{15B}\u{15C}\u{3}\u{2}\u{2}\u{2}\u{15C}\u{15D}\u{3}\u{2}\u{2}'
      '\u{2}\u{15D}\u{15F}\u{7}\u{47}\u{2}\u{2}\u{15E}\u{160}\u{7}\u{43}\u{2}'
      '\u{2}\u{15F}\u{15E}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{160}\u{3}\u{2}\u{2}'
      '\u{2}\u{160}\u{162}\u{3}\u{2}\u{2}\u{2}\u{161}\u{155}\u{3}\u{2}\u{2}'
      '\u{2}\u{161}\u{157}\u{3}\u{2}\u{2}\u{2}\u{161}\u{15B}\u{3}\u{2}\u{2}'
      '\u{2}\u{162}\u{164}\u{3}\u{2}\u{2}\u{2}\u{163}\u{10F}\u{3}\u{2}\u{2}'
      '\u{2}\u{163}\u{11F}\u{3}\u{2}\u{2}\u{2}\u{163}\u{132}\u{3}\u{2}\u{2}'
      '\u{2}\u{163}\u{140}\u{3}\u{2}\u{2}\u{2}\u{163}\u{153}\u{3}\u{2}\u{2}'
      '\u{2}\u{163}\u{161}\u{3}\u{2}\u{2}\u{2}\u{164}\u{F}\u{3}\u{2}\u{2}\u{2}'
      '\u{165}\u{166}\u{7}\u{26}\u{2}\u{2}\u{166}\u{167}\u{5}\u{10}\u{9}\u{2}'
      '\u{167}\u{168}\u{7}\u{27}\u{2}\u{2}\u{168}\u{177}\u{3}\u{2}\u{2}\u{2}'
      '\u{169}\u{177}\u{5}\u{16}\u{C}\u{2}\u{16A}\u{16B}\u{7}\u{29}\u{2}\u{2}'
      '\u{16B}\u{177}\u{5}\u{10}\u{9}\u{2}\u{16C}\u{177}\u{5}\u{14}\u{B}\u{2}'
      '\u{16D}\u{16E}\u{5}\u{1A}\u{E}\u{2}\u{16E}\u{16F}\u{5}\u{10}\u{9}\u{2}'
      '\u{16F}\u{177}\u{3}\u{2}\u{2}\u{2}\u{170}\u{177}\u{5}\u{26}\u{14}\u{2}'
      '\u{171}\u{172}\u{5}\u{12}\u{A}\u{2}\u{172}\u{173}\u{5}\u{36}\u{1C}\u{2}'
      '\u{173}\u{174}\u{5}\u{10}\u{9}\u{2}\u{174}\u{177}\u{3}\u{2}\u{2}\u{2}'
      '\u{175}\u{177}\u{7}\u{BE}\u{2}\u{2}\u{176}\u{165}\u{3}\u{2}\u{2}\u{2}'
      '\u{176}\u{169}\u{3}\u{2}\u{2}\u{2}\u{176}\u{16A}\u{3}\u{2}\u{2}\u{2}'
      '\u{176}\u{16C}\u{3}\u{2}\u{2}\u{2}\u{176}\u{16D}\u{3}\u{2}\u{2}\u{2}'
      '\u{176}\u{170}\u{3}\u{2}\u{2}\u{2}\u{176}\u{171}\u{3}\u{2}\u{2}\u{2}'
      '\u{176}\u{175}\u{3}\u{2}\u{2}\u{2}\u{177}\u{11}\u{3}\u{2}\u{2}\u{2}\u{178}'
      '\u{180}\u{9}\u{C}\u{2}\u{2}\u{179}\u{180}\u{5}\u{2E}\u{18}\u{2}\u{17A}'
      '\u{180}\u{5}\u{34}\u{1B}\u{2}\u{17B}\u{180}\u{5}\u{30}\u{19}\u{2}\u{17C}'
      '\u{180}\u{5}\u{32}\u{1A}\u{2}\u{17D}\u{180}\u{5}\u{28}\u{15}\u{2}\u{17E}'
      '\u{180}\u{7}\u{BE}\u{2}\u{2}\u{17F}\u{178}\u{3}\u{2}\u{2}\u{2}\u{17F}'
      '\u{179}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{17A}\u{3}\u{2}\u{2}\u{2}\u{17F}'
      '\u{17B}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{17C}\u{3}\u{2}\u{2}\u{2}\u{17F}'
      '\u{17D}\u{3}\u{2}\u{2}\u{2}\u{17F}\u{17E}\u{3}\u{2}\u{2}\u{2}\u{180}'
      '\u{13}\u{3}\u{2}\u{2}\u{2}\u{181}\u{182}\u{7}\u{4D}\u{2}\u{2}\u{182}'
      '\u{185}\u{5}\u{10}\u{9}\u{2}\u{183}\u{184}\u{7}\u{4E}\u{2}\u{2}\u{184}'
      '\u{186}\u{5}\u{10}\u{9}\u{2}\u{185}\u{183}\u{3}\u{2}\u{2}\u{2}\u{185}'
      '\u{186}\u{3}\u{2}\u{2}\u{2}\u{186}\u{187}\u{3}\u{2}\u{2}\u{2}\u{187}'
      '\u{188}\u{9}\u{4}\u{2}\u{2}\u{188}\u{189}\u{5}\u{10}\u{9}\u{2}\u{189}'
      '\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{18A}\u{18B}\u{7}\u{4D}\u{2}\u{2}\u{18B}'
      '\u{18C}\u{5}\u{10}\u{9}\u{2}\u{18C}\u{18D}\u{7}\u{4E}\u{2}\u{2}\u{18D}'
      '\u{190}\u{5}\u{10}\u{9}\u{2}\u{18E}\u{18F}\u{9}\u{4}\u{2}\u{2}\u{18F}'
      '\u{191}\u{5}\u{10}\u{9}\u{2}\u{190}\u{18E}\u{3}\u{2}\u{2}\u{2}\u{190}'
      '\u{191}\u{3}\u{2}\u{2}\u{2}\u{191}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{192}'
      '\u{195}\u{7}\u{4F}\u{2}\u{2}\u{193}\u{194}\u{7}\u{26}\u{2}\u{2}\u{194}'
      '\u{196}\u{7}\u{27}\u{2}\u{2}\u{195}\u{193}\u{3}\u{2}\u{2}\u{2}\u{195}'
      '\u{196}\u{3}\u{2}\u{2}\u{2}\u{196}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{197}'
      '\u{198}\u{7}\u{BE}\u{2}\u{2}\u{198}\u{1A3}\u{7}\u{26}\u{2}\u{2}\u{199}'
      '\u{1A0}\u{5}\u{10}\u{9}\u{2}\u{19A}\u{19C}\u{7}\u{50}\u{2}\u{2}\u{19B}'
      '\u{19A}\u{3}\u{2}\u{2}\u{2}\u{19B}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{19C}'
      '\u{19D}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{19F}\u{5}\u{10}\u{9}\u{2}\u{19E}'
      '\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19F}\u{1A2}\u{3}\u{2}\u{2}\u{2}\u{1A0}'
      '\u{1A1}\u{3}\u{2}\u{2}\u{2}\u{1A0}\u{19E}\u{3}\u{2}\u{2}\u{2}\u{1A1}'
      '\u{1A4}\u{3}\u{2}\u{2}\u{2}\u{1A2}\u{1A0}\u{3}\u{2}\u{2}\u{2}\u{1A3}'
      '\u{199}\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A4}\u{3}\u{2}\u{2}\u{2}\u{1A4}'
      '\u{1A5}\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1B3}\u{7}\u{27}\u{2}\u{2}\u{1A6}'
      '\u{1A7}\u{7}\u{BE}\u{2}\u{2}\u{1A7}\u{1A8}\u{7}\u{13}\u{2}\u{2}\u{1A8}'
      '\u{1AF}\u{5}\u{10}\u{9}\u{2}\u{1A9}\u{1AB}\u{7}\u{50}\u{2}\u{2}\u{1AA}'
      '\u{1A9}\u{3}\u{2}\u{2}\u{2}\u{1AA}\u{1AB}\u{3}\u{2}\u{2}\u{2}\u{1AB}'
      '\u{1AC}\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{1AE}\u{5}\u{10}\u{9}\u{2}\u{1AD}'
      '\u{1AA}\u{3}\u{2}\u{2}\u{2}\u{1AE}\u{1B1}\u{3}\u{2}\u{2}\u{2}\u{1AF}'
      '\u{1B0}\u{3}\u{2}\u{2}\u{2}\u{1AF}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1B0}'
      '\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{1B1}\u{1AF}\u{3}\u{2}\u{2}\u{2}\u{1B2}'
      '\u{181}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{18A}\u{3}\u{2}\u{2}\u{2}\u{1B2}'
      '\u{192}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{197}\u{3}\u{2}\u{2}\u{2}\u{1B2}'
      '\u{1A6}\u{3}\u{2}\u{2}\u{2}\u{1B3}\u{15}\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1BD}'
      '\u{5}\u{18}\u{D}\u{2}\u{1B5}\u{1BD}\u{7}\u{B9}\u{2}\u{2}\u{1B6}\u{1B8}'
      '\u{7}\u{BA}\u{2}\u{2}\u{1B7}\u{1B9}\u{7}\u{BB}\u{2}\u{2}\u{1B8}\u{1B7}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B8}\u{1B9}\u{3}\u{2}\u{2}\u{2}\u{1B9}\u{1BD}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1BD}\u{7}\u{B7}\u{2}\u{2}\u{1BB}\u{1BD}'
      '\u{7}\u{B8}\u{2}\u{2}\u{1BC}\u{1B4}\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1B5}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1B6}\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1BA}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1BB}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{17}\u{3}'
      '\u{2}\u{2}\u{2}\u{1BE}\u{1BF}\u{9}\u{D}\u{2}\u{2}\u{1BF}\u{19}\u{3}\u{2}'
      '\u{2}\u{2}\u{1C0}\u{1C1}\u{9}\u{E}\u{2}\u{2}\u{1C1}\u{1B}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C2}\u{1C4}\u{7}\u{BE}\u{2}\u{2}\u{1C3}\u{1C2}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C4}\u{1C7}\u{3}\u{2}\u{2}\u{2}\u{1C5}\u{1C3}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C5}\u{1C6}\u{3}\u{2}\u{2}\u{2}\u{1C6}\u{1C8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C7}\u{1C5}\u{3}\u{2}\u{2}\u{2}\u{1C8}\u{1C9}\u{5}\u{1E}\u{10}'
      '\u{2}\u{1C9}\u{1CE}\u{5}\u{16}\u{C}\u{2}\u{1CA}\u{1CB}\u{7}\u{38}\u{2}'
      '\u{2}\u{1CB}\u{1CD}\u{5}\u{16}\u{C}\u{2}\u{1CC}\u{1CA}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CD}\u{1D0}\u{3}\u{2}\u{2}\u{2}\u{1CE}\u{1CC}\u{3}\u{2}\u{2}'
      '\u{2}\u{1CE}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1CF}\u{1D2}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D0}\u{1CE}\u{3}\u{2}\u{2}\u{2}\u{1D1}\u{1D3}\u{5}\u{28}\u{15}'
      '\u{2}\u{1D2}\u{1D1}\u{3}\u{2}\u{2}\u{2}\u{1D2}\u{1D3}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D3}\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{1D4}\u{1D6}\u{7}\u{BE}\u{2}'
      '\u{2}\u{1D5}\u{1D4}\u{3}\u{2}\u{2}\u{2}\u{1D6}\u{1D9}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D7}\u{1D5}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{1D8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1D8}\u{1DA}\u{3}\u{2}\u{2}\u{2}\u{1D9}\u{1D7}\u{3}\u{2}\u{2}'
      '\u{2}\u{1DA}\u{1DF}\u{5}\u{16}\u{C}\u{2}\u{1DB}\u{1DC}\u{7}\u{38}\u{2}'
      '\u{2}\u{1DC}\u{1DE}\u{5}\u{16}\u{C}\u{2}\u{1DD}\u{1DB}\u{3}\u{2}\u{2}'
      '\u{2}\u{1DE}\u{1E1}\u{3}\u{2}\u{2}\u{2}\u{1DF}\u{1DD}\u{3}\u{2}\u{2}'
      '\u{2}\u{1DF}\u{1E0}\u{3}\u{2}\u{2}\u{2}\u{1E0}\u{1E2}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E1}\u{1DF}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E3}\u{5}\u{28}\u{15}'
      '\u{2}\u{1E3}\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{1E4}\u{1E6}\u{7}\u{BE}\u{2}'
      '\u{2}\u{1E5}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{1E6}\u{1E9}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E7}\u{1E5}\u{3}\u{2}\u{2}\u{2}\u{1E7}\u{1E8}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E8}\u{1EB}\u{3}\u{2}\u{2}\u{2}\u{1E9}\u{1E7}\u{3}\u{2}\u{2}'
      '\u{2}\u{1EA}\u{1EC}\u{5}\u{1E}\u{10}\u{2}\u{1EB}\u{1EA}\u{3}\u{2}\u{2}'
      '\u{2}\u{1EB}\u{1EC}\u{3}\u{2}\u{2}\u{2}\u{1EC}\u{1ED}\u{3}\u{2}\u{2}'
      '\u{2}\u{1ED}\u{1F6}\u{5}\u{28}\u{15}\u{2}\u{1EE}\u{1F3}\u{5}\u{16}\u{C}'
      '\u{2}\u{1EF}\u{1F0}\u{7}\u{38}\u{2}\u{2}\u{1F0}\u{1F2}\u{5}\u{16}\u{C}'
      '\u{2}\u{1F1}\u{1EF}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F3}\u{1F1}\u{3}\u{2}\u{2}\u{2}\u{1F3}\u{1F4}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F4}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F5}\u{1F3}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F6}\u{1EE}\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{1F7}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F7}\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{1F8}\u{1C5}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F8}\u{1D7}\u{3}\u{2}\u{2}\u{2}\u{1F8}\u{1E7}\u{3}\u{2}\u{2}'
      '\u{2}\u{1F9}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{1FA}\u{200}\u{7}\u{67}\u{2}'
      '\u{2}\u{1FB}\u{1FC}\u{7}\u{68}\u{2}\u{2}\u{1FC}\u{200}\u{7}\u{69}\u{2}'
      '\u{2}\u{1FD}\u{1FE}\u{7}\u{68}\u{2}\u{2}\u{1FE}\u{200}\u{7}\u{6A}\u{2}'
      '\u{2}\u{1FF}\u{1FA}\u{3}\u{2}\u{2}\u{2}\u{1FF}\u{1FB}\u{3}\u{2}\u{2}'
      '\u{2}\u{1FF}\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{200}\u{1F}\u{3}\u{2}\u{2}\u{2}'
      '\u{201}\u{202}\u{5}\u{22}\u{12}\u{2}\u{202}\u{203}\u{7}\u{26}\u{2}\u{2}'
      '\u{203}\u{204}\u{5}\u{10}\u{9}\u{2}\u{204}\u{205}\u{7}\u{27}\u{2}\u{2}'
      '\u{205}\u{20D}\u{3}\u{2}\u{2}\u{2}\u{206}\u{207}\u{5}\u{22}\u{12}\u{2}'
      '\u{207}\u{208}\u{7}\u{6B}\u{2}\u{2}\u{208}\u{20D}\u{3}\u{2}\u{2}\u{2}'
      '\u{209}\u{20A}\u{5}\u{22}\u{12}\u{2}\u{20A}\u{20B}\u{5}\u{10}\u{9}\u{2}'
      '\u{20B}\u{20D}\u{3}\u{2}\u{2}\u{2}\u{20C}\u{201}\u{3}\u{2}\u{2}\u{2}'
      '\u{20C}\u{206}\u{3}\u{2}\u{2}\u{2}\u{20C}\u{209}\u{3}\u{2}\u{2}\u{2}'
      '\u{20D}\u{21}\u{3}\u{2}\u{2}\u{2}\u{20E}\u{20F}\u{9}\u{F}\u{2}\u{2}\u{20F}'
      '\u{211}\u{5}\u{2A}\u{16}\u{2}\u{210}\u{212}\u{7}\u{6C}\u{2}\u{2}\u{211}'
      '\u{210}\u{3}\u{2}\u{2}\u{2}\u{211}\u{212}\u{3}\u{2}\u{2}\u{2}\u{212}'
      '\u{213}\u{3}\u{2}\u{2}\u{2}\u{213}\u{215}\u{7}\u{6D}\u{2}\u{2}\u{214}'
      '\u{216}\u{7}\u{6E}\u{2}\u{2}\u{215}\u{214}\u{3}\u{2}\u{2}\u{2}\u{215}'
      '\u{216}\u{3}\u{2}\u{2}\u{2}\u{216}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{217}'
      '\u{218}\u{9}\u{F}\u{2}\u{2}\u{218}\u{21A}\u{5}\u{2C}\u{17}\u{2}\u{219}'
      '\u{21B}\u{7}\u{6F}\u{2}\u{2}\u{21A}\u{219}\u{3}\u{2}\u{2}\u{2}\u{21A}'
      '\u{21B}\u{3}\u{2}\u{2}\u{2}\u{21B}\u{21C}\u{3}\u{2}\u{2}\u{2}\u{21C}'
      '\u{21E}\u{7}\u{6D}\u{2}\u{2}\u{21D}\u{21F}\u{7}\u{6E}\u{2}\u{2}\u{21E}'
      '\u{21D}\u{3}\u{2}\u{2}\u{2}\u{21E}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{21F}'
      '\u{24C}\u{3}\u{2}\u{2}\u{2}\u{220}\u{221}\u{9}\u{F}\u{2}\u{2}\u{221}'
      '\u{222}\u{5}\u{2A}\u{16}\u{2}\u{222}\u{223}\u{9}\u{10}\u{2}\u{2}\u{223}'
      '\u{225}\u{7}\u{6D}\u{2}\u{2}\u{224}\u{226}\u{7}\u{6E}\u{2}\u{2}\u{225}'
      '\u{224}\u{3}\u{2}\u{2}\u{2}\u{225}\u{226}\u{3}\u{2}\u{2}\u{2}\u{226}'
      '\u{24C}\u{3}\u{2}\u{2}\u{2}\u{227}\u{228}\u{9}\u{F}\u{2}\u{2}\u{228}'
      '\u{229}\u{5}\u{1A}\u{E}\u{2}\u{229}\u{22D}\u{5}\u{2A}\u{16}\u{2}\u{22A}'
      '\u{22E}\u{7}\u{5E}\u{2}\u{2}\u{22B}\u{22E}\u{7}\u{72}\u{2}\u{2}\u{22C}'
      '\u{22E}\u{7}\u{63}\u{2}\u{2}\u{22D}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{22D}'
      '\u{22B}\u{3}\u{2}\u{2}\u{2}\u{22D}\u{22C}\u{3}\u{2}\u{2}\u{2}\u{22E}'
      '\u{22F}\u{3}\u{2}\u{2}\u{2}\u{22F}\u{231}\u{7}\u{6D}\u{2}\u{2}\u{230}'
      '\u{232}\u{7}\u{6E}\u{2}\u{2}\u{231}\u{230}\u{3}\u{2}\u{2}\u{2}\u{231}'
      '\u{232}\u{3}\u{2}\u{2}\u{2}\u{232}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{233}'
      '\u{234}\u{9}\u{F}\u{2}\u{2}\u{234}\u{235}\u{5}\u{2A}\u{16}\u{2}\u{235}'
      '\u{236}\u{5}\u{16}\u{C}\u{2}\u{236}\u{237}\u{9}\u{11}\u{2}\u{2}\u{237}'
      '\u{239}\u{7}\u{6D}\u{2}\u{2}\u{238}\u{23A}\u{7}\u{6E}\u{2}\u{2}\u{239}'
      '\u{238}\u{3}\u{2}\u{2}\u{2}\u{239}\u{23A}\u{3}\u{2}\u{2}\u{2}\u{23A}'
      '\u{24C}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{23D}\u{9}\u{12}\u{2}\u{2}\u{23C}'
      '\u{23E}\u{7}\u{6E}\u{2}\u{2}\u{23D}\u{23C}\u{3}\u{2}\u{2}\u{2}\u{23D}'
      '\u{23E}\u{3}\u{2}\u{2}\u{2}\u{23E}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{23F}'
      '\u{247}\u{7}\u{77}\u{2}\u{2}\u{240}\u{247}\u{7}\u{78}\u{2}\u{2}\u{241}'
      '\u{244}\u{7}\u{7}\u{2}\u{2}\u{242}\u{245}\u{5}\u{2A}\u{16}\u{2}\u{243}'
      '\u{245}\u{5}\u{2C}\u{17}\u{2}\u{244}\u{242}\u{3}\u{2}\u{2}\u{2}\u{244}'
      '\u{243}\u{3}\u{2}\u{2}\u{2}\u{245}\u{247}\u{3}\u{2}\u{2}\u{2}\u{246}'
      '\u{23F}\u{3}\u{2}\u{2}\u{2}\u{246}\u{240}\u{3}\u{2}\u{2}\u{2}\u{246}'
      '\u{241}\u{3}\u{2}\u{2}\u{2}\u{247}\u{249}\u{3}\u{2}\u{2}\u{2}\u{248}'
      '\u{24A}\u{7}\u{6D}\u{2}\u{2}\u{249}\u{248}\u{3}\u{2}\u{2}\u{2}\u{249}'
      '\u{24A}\u{3}\u{2}\u{2}\u{2}\u{24A}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{24B}'
      '\u{20E}\u{3}\u{2}\u{2}\u{2}\u{24B}\u{217}\u{3}\u{2}\u{2}\u{2}\u{24B}'
      '\u{220}\u{3}\u{2}\u{2}\u{2}\u{24B}\u{227}\u{3}\u{2}\u{2}\u{2}\u{24B}'
      '\u{233}\u{3}\u{2}\u{2}\u{2}\u{24B}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{24B}'
      '\u{246}\u{3}\u{2}\u{2}\u{2}\u{24C}\u{23}\u{3}\u{2}\u{2}\u{2}\u{24D}\u{24E}'
      '\u{9}\u{13}\u{2}\u{2}\u{24E}\u{24F}\u{7}\u{26}\u{2}\u{2}\u{24F}\u{250}'
      '\u{5}\u{C}\u{7}\u{2}\u{250}\u{251}\u{7}\u{27}\u{2}\u{2}\u{251}\u{255}'
      '\u{3}\u{2}\u{2}\u{2}\u{252}\u{253}\u{9}\u{13}\u{2}\u{2}\u{253}\u{255}'
      '\u{5}\u{C}\u{7}\u{2}\u{254}\u{24D}\u{3}\u{2}\u{2}\u{2}\u{254}\u{252}'
      '\u{3}\u{2}\u{2}\u{2}\u{255}\u{25}\u{3}\u{2}\u{2}\u{2}\u{256}\u{257}\u{5}'
      '\u{1C}\u{F}\u{2}\u{257}\u{259}\u{5}\u{20}\u{11}\u{2}\u{258}\u{25A}\u{7}'
      '\u{37}\u{2}\u{2}\u{259}\u{258}\u{3}\u{2}\u{2}\u{2}\u{259}\u{25A}\u{3}'
      '\u{2}\u{2}\u{2}\u{25A}\u{25B}\u{3}\u{2}\u{2}\u{2}\u{25B}\u{25D}\u{5}'
      '\u{20}\u{11}\u{2}\u{25C}\u{25E}\u{7}\u{37}\u{2}\u{2}\u{25D}\u{25C}\u{3}'
      '\u{2}\u{2}\u{2}\u{25D}\u{25E}\u{3}\u{2}\u{2}\u{2}\u{25E}\u{25F}\u{3}'
      '\u{2}\u{2}\u{2}\u{25F}\u{261}\u{5}\u{20}\u{11}\u{2}\u{260}\u{262}\u{7}'
      '\u{37}\u{2}\u{2}\u{261}\u{260}\u{3}\u{2}\u{2}\u{2}\u{261}\u{262}\u{3}'
      '\u{2}\u{2}\u{2}\u{262}\u{264}\u{3}\u{2}\u{2}\u{2}\u{263}\u{265}\u{5}'
      '\u{24}\u{13}\u{2}\u{264}\u{263}\u{3}\u{2}\u{2}\u{2}\u{264}\u{265}\u{3}'
      '\u{2}\u{2}\u{2}\u{265}\u{27F}\u{3}\u{2}\u{2}\u{2}\u{266}\u{267}\u{5}'
      '\u{1C}\u{F}\u{2}\u{267}\u{269}\u{5}\u{20}\u{11}\u{2}\u{268}\u{26A}\u{7}'
      '\u{37}\u{2}\u{2}\u{269}\u{268}\u{3}\u{2}\u{2}\u{2}\u{269}\u{26A}\u{3}'
      '\u{2}\u{2}\u{2}\u{26A}\u{26B}\u{3}\u{2}\u{2}\u{2}\u{26B}\u{26D}\u{5}'
      '\u{20}\u{11}\u{2}\u{26C}\u{26E}\u{7}\u{37}\u{2}\u{2}\u{26D}\u{26C}\u{3}'
      '\u{2}\u{2}\u{2}\u{26D}\u{26E}\u{3}\u{2}\u{2}\u{2}\u{26E}\u{270}\u{3}'
      '\u{2}\u{2}\u{2}\u{26F}\u{271}\u{5}\u{24}\u{13}\u{2}\u{270}\u{26F}\u{3}'
      '\u{2}\u{2}\u{2}\u{270}\u{271}\u{3}\u{2}\u{2}\u{2}\u{271}\u{27F}\u{3}'
      '\u{2}\u{2}\u{2}\u{272}\u{273}\u{5}\u{1C}\u{F}\u{2}\u{273}\u{275}\u{5}'
      '\u{20}\u{11}\u{2}\u{274}\u{276}\u{7}\u{37}\u{2}\u{2}\u{275}\u{274}\u{3}'
      '\u{2}\u{2}\u{2}\u{275}\u{276}\u{3}\u{2}\u{2}\u{2}\u{276}\u{278}\u{3}'
      '\u{2}\u{2}\u{2}\u{277}\u{279}\u{5}\u{24}\u{13}\u{2}\u{278}\u{277}\u{3}'
      '\u{2}\u{2}\u{2}\u{278}\u{279}\u{3}\u{2}\u{2}\u{2}\u{279}\u{27F}\u{3}'
      '\u{2}\u{2}\u{2}\u{27A}\u{27C}\u{5}\u{1C}\u{F}\u{2}\u{27B}\u{27D}\u{5}'
      '\u{24}\u{13}\u{2}\u{27C}\u{27B}\u{3}\u{2}\u{2}\u{2}\u{27C}\u{27D}\u{3}'
      '\u{2}\u{2}\u{2}\u{27D}\u{27F}\u{3}\u{2}\u{2}\u{2}\u{27E}\u{256}\u{3}'
      '\u{2}\u{2}\u{2}\u{27E}\u{266}\u{3}\u{2}\u{2}\u{2}\u{27E}\u{272}\u{3}'
      '\u{2}\u{2}\u{2}\u{27E}\u{27A}\u{3}\u{2}\u{2}\u{2}\u{27F}\u{27}\u{3}\u{2}'
      '\u{2}\u{2}\u{280}\u{29B}\u{9}\u{14}\u{2}\u{2}\u{281}\u{29B}\u{9}\u{15}'
      '\u{2}\u{2}\u{282}\u{29B}\u{9}\u{16}\u{2}\u{2}\u{283}\u{284}\u{9}\u{17}'
      '\u{2}\u{2}\u{284}\u{28E}\u{9}\u{18}\u{2}\u{2}\u{285}\u{286}\u{7}\u{87}'
      '\u{2}\u{2}\u{286}\u{28E}\u{9}\u{19}\u{2}\u{2}\u{287}\u{28E}\u{7}\u{89}'
      '\u{2}\u{2}\u{288}\u{28E}\u{7}\u{8A}\u{2}\u{2}\u{289}\u{28E}\u{7}\u{8B}'
      '\u{2}\u{2}\u{28A}\u{28E}\u{7}\u{8C}\u{2}\u{2}\u{28B}\u{28E}\u{7}\u{8D}'
      '\u{2}\u{2}\u{28C}\u{28E}\u{7}\u{8E}\u{2}\u{2}\u{28D}\u{283}\u{3}\u{2}'
      '\u{2}\u{2}\u{28D}\u{285}\u{3}\u{2}\u{2}\u{2}\u{28D}\u{287}\u{3}\u{2}'
      '\u{2}\u{2}\u{28D}\u{288}\u{3}\u{2}\u{2}\u{2}\u{28D}\u{289}\u{3}\u{2}'
      '\u{2}\u{2}\u{28D}\u{28A}\u{3}\u{2}\u{2}\u{2}\u{28D}\u{28B}\u{3}\u{2}'
      '\u{2}\u{2}\u{28D}\u{28C}\u{3}\u{2}\u{2}\u{2}\u{28E}\u{29B}\u{3}\u{2}'
      '\u{2}\u{2}\u{28F}\u{29B}\u{9}\u{1A}\u{2}\u{2}\u{290}\u{29B}\u{9}\u{1B}'
      '\u{2}\u{2}\u{291}\u{29B}\u{9}\u{1C}\u{2}\u{2}\u{292}\u{293}\u{7}\u{B}'
      '\u{2}\u{2}\u{293}\u{297}\u{9}\u{1D}\u{2}\u{2}\u{294}\u{297}\u{7}\u{97}'
      '\u{2}\u{2}\u{295}\u{297}\u{7}\u{98}\u{2}\u{2}\u{296}\u{292}\u{3}\u{2}'
      '\u{2}\u{2}\u{296}\u{294}\u{3}\u{2}\u{2}\u{2}\u{296}\u{295}\u{3}\u{2}'
      '\u{2}\u{2}\u{297}\u{29B}\u{3}\u{2}\u{2}\u{2}\u{298}\u{29B}\u{9}\u{1E}'
      '\u{2}\u{2}\u{299}\u{29B}\u{9}\u{1F}\u{2}\u{2}\u{29A}\u{280}\u{3}\u{2}'
      '\u{2}\u{2}\u{29A}\u{281}\u{3}\u{2}\u{2}\u{2}\u{29A}\u{282}\u{3}\u{2}'
      '\u{2}\u{2}\u{29A}\u{28D}\u{3}\u{2}\u{2}\u{2}\u{29A}\u{28F}\u{3}\u{2}'
      '\u{2}\u{2}\u{29A}\u{290}\u{3}\u{2}\u{2}\u{2}\u{29A}\u{291}\u{3}\u{2}'
      '\u{2}\u{2}\u{29A}\u{296}\u{3}\u{2}\u{2}\u{2}\u{29A}\u{298}\u{3}\u{2}'
      '\u{2}\u{2}\u{29A}\u{299}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{29}\u{3}\u{2}\u{2}'
      '\u{2}\u{29C}\u{2A1}\u{7}\u{22}\u{2}\u{2}\u{29D}\u{2A1}\u{7}\u{25}\u{2}'
      '\u{2}\u{29E}\u{2A1}\u{9}\u{20}\u{2}\u{2}\u{29F}\u{2A1}\u{9}\u{21}\u{2}'
      '\u{2}\u{2A0}\u{29C}\u{3}\u{2}\u{2}\u{2}\u{2A0}\u{29D}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A0}\u{29E}\u{3}\u{2}\u{2}\u{2}\u{2A0}\u{29F}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A1}\u{2B}\u{3}\u{2}\u{2}\u{2}\u{2A2}\u{2A4}\u{9}\u{20}\u{2}'
      '\u{2}\u{2A3}\u{2A5}\u{7}\u{29}\u{2}\u{2}\u{2A4}\u{2A3}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A4}\u{2A5}\u{3}\u{2}\u{2}\u{2}\u{2A5}\u{2A6}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A6}\u{2AA}\u{7}\u{22}\u{2}\u{2}\u{2A7}\u{2A8}\u{7}\u{22}\u{2}'
      '\u{2}\u{2A8}\u{2AA}\u{7}\u{9D}\u{2}\u{2}\u{2A9}\u{2A2}\u{3}\u{2}\u{2}'
      '\u{2}\u{2A9}\u{2A7}\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2C7}\u{3}\u{2}\u{2}'
      '\u{2}\u{2AB}\u{2AD}\u{9}\u{20}\u{2}\u{2}\u{2AC}\u{2AE}\u{7}\u{29}\u{2}'
      '\u{2}\u{2AD}\u{2AC}\u{3}\u{2}\u{2}\u{2}\u{2AD}\u{2AE}\u{3}\u{2}\u{2}'
      '\u{2}\u{2AE}\u{2AF}\u{3}\u{2}\u{2}\u{2}\u{2AF}\u{2B3}\u{7}\u{25}\u{2}'
      '\u{2}\u{2B0}\u{2B1}\u{7}\u{25}\u{2}\u{2}\u{2B1}\u{2B3}\u{7}\u{9D}\u{2}'
      '\u{2}\u{2B2}\u{2AB}\u{3}\u{2}\u{2}\u{2}\u{2B2}\u{2B0}\u{3}\u{2}\u{2}'
      '\u{2}\u{2B3}\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{2B4}\u{2B6}\u{9}\u{21}\u{2}'
      '\u{2}\u{2B5}\u{2B7}\u{7}\u{29}\u{2}\u{2}\u{2B6}\u{2B5}\u{3}\u{2}\u{2}'
      '\u{2}\u{2B6}\u{2B7}\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B8}\u{3}\u{2}\u{2}'
      '\u{2}\u{2B8}\u{2BC}\u{7}\u{22}\u{2}\u{2}\u{2B9}\u{2BA}\u{7}\u{22}\u{2}'
      '\u{2}\u{2BA}\u{2BC}\u{7}\u{9F}\u{2}\u{2}\u{2BB}\u{2B4}\u{3}\u{2}\u{2}'
      '\u{2}\u{2BB}\u{2B9}\u{3}\u{2}\u{2}\u{2}\u{2BC}\u{2C7}\u{3}\u{2}\u{2}'
      '\u{2}\u{2BD}\u{2BF}\u{9}\u{21}\u{2}\u{2}\u{2BE}\u{2C0}\u{7}\u{29}\u{2}'
      '\u{2}\u{2BF}\u{2BE}\u{3}\u{2}\u{2}\u{2}\u{2BF}\u{2C0}\u{3}\u{2}\u{2}'
      '\u{2}\u{2C0}\u{2C1}\u{3}\u{2}\u{2}\u{2}\u{2C1}\u{2C5}\u{7}\u{25}\u{2}'
      '\u{2}\u{2C2}\u{2C3}\u{7}\u{25}\u{2}\u{2}\u{2C3}\u{2C5}\u{7}\u{9F}\u{2}'
      '\u{2}\u{2C4}\u{2BD}\u{3}\u{2}\u{2}\u{2}\u{2C4}\u{2C2}\u{3}\u{2}\u{2}'
      '\u{2}\u{2C5}\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{2C6}\u{2A9}\u{3}\u{2}\u{2}'
      '\u{2}\u{2C6}\u{2B2}\u{3}\u{2}\u{2}\u{2}\u{2C6}\u{2BB}\u{3}\u{2}\u{2}'
      '\u{2}\u{2C6}\u{2C4}\u{3}\u{2}\u{2}\u{2}\u{2C7}\u{2D}\u{3}\u{2}\u{2}\u{2}'
      '\u{2C8}\u{2C9}\u{9}\u{22}\u{2}\u{2}\u{2C9}\u{2F}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CA}\u{2CB}\u{9}\u{23}\u{2}\u{2}\u{2CB}\u{31}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CC}\u{2CD}\u{9}\u{24}\u{2}\u{2}\u{2CD}\u{33}\u{3}\u{2}\u{2}\u{2}'
      '\u{2CE}\u{2CF}\u{9}\u{25}\u{2}\u{2}\u{2CF}\u{35}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D0}\u{2D1}\u{9}\u{26}\u{2}\u{2}\u{2D1}\u{37}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D2}\u{2D3}\u{9}\u{27}\u{2}\u{2}\u{2D3}\u{39}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D4}\u{2D5}\u{9}\u{28}\u{2}\u{2}\u{2D5}\u{3B}\u{3}\u{2}\u{2}\u{2}'
      '\u{2D6}\u{2D7}\u{7}\u{B1}\u{2}\u{2}\u{2D7}\u{2E0}\u{7}\u{28}\u{2}\u{2}'
      '\u{2D8}\u{2E0}\u{7}\u{B4}\u{2}\u{2}\u{2D9}\u{2DA}\u{7}\u{B2}\u{2}\u{2}'
      '\u{2DA}\u{2E0}\u{7}\u{28}\u{2}\u{2}\u{2DB}\u{2E0}\u{7}\u{B5}\u{2}\u{2}'
      '\u{2DC}\u{2DD}\u{7}\u{B3}\u{2}\u{2}\u{2DD}\u{2E0}\u{7}\u{28}\u{2}\u{2}'
      '\u{2DE}\u{2E0}\u{7}\u{B6}\u{2}\u{2}\u{2DF}\u{2D6}\u{3}\u{2}\u{2}\u{2}'
      '\u{2DF}\u{2D8}\u{3}\u{2}\u{2}\u{2}\u{2DF}\u{2D9}\u{3}\u{2}\u{2}\u{2}'
      '\u{2DF}\u{2DB}\u{3}\u{2}\u{2}\u{2}\u{2DF}\u{2DC}\u{3}\u{2}\u{2}\u{2}'
      '\u{2DF}\u{2DE}\u{3}\u{2}\u{2}\u{2}\u{2E0}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{7C}'
      '\u{40}\u{46}\u{4B}\u{4D}\u{52}\u{58}\u{5D}\u{60}\u{63}\u{68}\u{6C}\u{70}'
      '\u{76}\u{7B}\u{80}\u{83}\u{86}\u{8A}\u{8D}\u{91}\u{94}\u{A5}\u{AA}\u{AD}'
      '\u{B6}\u{C4}\u{C7}\u{F2}\u{F9}\u{FD}\u{FF}\u{104}\u{108}\u{10C}\u{10F}'
      '\u{114}\u{119}\u{11D}\u{11F}\u{123}\u{127}\u{12C}\u{130}\u{132}\u{136}'
      '\u{13A}\u{13E}\u{140}\u{144}\u{148}\u{14D}\u{151}\u{153}\u{157}\u{15B}'
      '\u{15F}\u{161}\u{163}\u{176}\u{17F}\u{185}\u{190}\u{195}\u{19B}\u{1A0}'
      '\u{1A3}\u{1AA}\u{1AF}\u{1B2}\u{1B8}\u{1BC}\u{1C5}\u{1CE}\u{1D2}\u{1D7}'
      '\u{1DF}\u{1E7}\u{1EB}\u{1F3}\u{1F6}\u{1F8}\u{1FF}\u{20C}\u{211}\u{215}'
      '\u{21A}\u{21E}\u{225}\u{22D}\u{231}\u{239}\u{23D}\u{244}\u{246}\u{249}'
      '\u{24B}\u{254}\u{259}\u{25D}\u{261}\u{264}\u{269}\u{26D}\u{270}\u{275}'
      '\u{278}\u{27C}\u{27E}\u{28D}\u{296}\u{29A}\u{2A0}\u{2A4}\u{2A9}\u{2AD}'
      '\u{2B2}\u{2B6}\u{2BB}\u{2BF}\u{2C4}\u{2C6}\u{2DF}';
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
  LiteralContext? _literal;
  var name = <LiteralContext>[];
  WidgetNameModifierContext? widgetNameModifier() =>
      getRuleContext<WidgetNameModifierContext>(0);
  List<LiteralContext> literals() => getRuleContexts<LiteralContext>();
  LiteralContext? literal(int i) => getRuleContext<LiteralContext>(i);
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

class ExpressionContainsContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionContainsContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionContains(this);
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

class ExpressionEndsWithContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionEndsWithContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionEndsWith(this);
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

class ExpressionStartsWithContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionStartsWithContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionStartsWith(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class ExpressionMatchesContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionMatchesContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitExpressionMatches(this);
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

class LiteralRegexContext extends LiteralContext {
  TerminalNode? REGEX_LITERAL() =>
      getToken(HoneyTalkParser.TOKEN_REGEX_LITERAL, 0);
  TerminalNode? REGEX_MODIFIER() =>
      getToken(HoneyTalkParser.TOKEN_REGEX_MODIFIER, 0);
  LiteralRegexContext(LiteralContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitLiteralRegex(this);
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

class WidgetNameCaseSensitiveContext extends WidgetNameModifierContext {
  WidgetNameCaseSensitiveContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameCaseSensitive(this);
    } else {
      return visitor.visitChildren(this);
    }
  }
}

class WidgetNameCaseInsensitiveContext extends WidgetNameModifierContext {
  WidgetNameCaseInsensitiveContext(WidgetNameModifierContext ctx) {
    copyFrom(ctx);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
      return visitor.visitWidgetNameCaseInsensitive(this);
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
