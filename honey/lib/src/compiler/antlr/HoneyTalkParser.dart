// Generated from HoneyTalk.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkVisitor.dart';
import 'HoneyTalkBaseVisitor.dart';
const int RULE_script = 0, RULE_statement = 1, RULE_maybe = 2, RULE_actionStatement = 3, 
          RULE_clickType = 4, RULE_swipeType = 5, RULE_expression = 6, RULE_comparisonOp = 7, 
          RULE_term = 8, RULE_property = 9, RULE_function = 10, RULE_handler = 11, 
          RULE_literal = 12, RULE_cardinalValue = 13, RULE_ordinal = 14, 
          RULE_widgetIdent = 15, RULE_widgetNameModifier = 16, RULE_widgetReference = 17, 
          RULE_widgetReferencePosition = 18, RULE_widgetWhere = 19, RULE_widget = 20, 
          RULE_widgetType = 21, RULE_singleDirection = 22, RULE_doubleDirection = 23, 
          RULE_character = 24, RULE_word = 25, RULE_line = 26, RULE_item = 27, 
          RULE_of = 28, RULE_click = 29, RULE_swipe = 30, RULE_isAre = 31, 
          RULE_isAreNot = 32;
class HoneyTalkParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.11.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_T__29 = 30, 
                   TOKEN_T__30 = 31, TOKEN_T__31 = 32, TOKEN_T__32 = 33, 
                   TOKEN_T__33 = 34, TOKEN_T__34 = 35, TOKEN_T__35 = 36, 
                   TOKEN_T__36 = 37, TOKEN_T__37 = 38, TOKEN_T__38 = 39, 
                   TOKEN_T__39 = 40, TOKEN_T__40 = 41, TOKEN_T__41 = 42, 
                   TOKEN_T__42 = 43, TOKEN_T__43 = 44, TOKEN_T__44 = 45, 
                   TOKEN_T__45 = 46, TOKEN_T__46 = 47, TOKEN_T__47 = 48, 
                   TOKEN_T__48 = 49, TOKEN_T__49 = 50, TOKEN_T__50 = 51, 
                   TOKEN_T__51 = 52, TOKEN_T__52 = 53, TOKEN_T__53 = 54, 
                   TOKEN_T__54 = 55, TOKEN_T__55 = 56, TOKEN_T__56 = 57, 
                   TOKEN_T__57 = 58, TOKEN_T__58 = 59, TOKEN_T__59 = 60, 
                   TOKEN_T__60 = 61, TOKEN_T__61 = 62, TOKEN_T__62 = 63, 
                   TOKEN_T__63 = 64, TOKEN_T__64 = 65, TOKEN_T__65 = 66, 
                   TOKEN_T__66 = 67, TOKEN_T__67 = 68, TOKEN_T__68 = 69, 
                   TOKEN_T__69 = 70, TOKEN_T__70 = 71, TOKEN_T__71 = 72, 
                   TOKEN_T__72 = 73, TOKEN_T__73 = 74, TOKEN_T__74 = 75, 
                   TOKEN_T__75 = 76, TOKEN_T__76 = 77, TOKEN_T__77 = 78, 
                   TOKEN_T__78 = 79, TOKEN_T__79 = 80, TOKEN_T__80 = 81, 
                   TOKEN_T__81 = 82, TOKEN_T__82 = 83, TOKEN_T__83 = 84, 
                   TOKEN_T__84 = 85, TOKEN_T__85 = 86, TOKEN_T__86 = 87, 
                   TOKEN_T__87 = 88, TOKEN_T__88 = 89, TOKEN_T__89 = 90, 
                   TOKEN_T__90 = 91, TOKEN_T__91 = 92, TOKEN_T__92 = 93, 
                   TOKEN_T__93 = 94, TOKEN_T__94 = 95, TOKEN_T__95 = 96, 
                   TOKEN_T__96 = 97, TOKEN_T__97 = 98, TOKEN_T__98 = 99, 
                   TOKEN_T__99 = 100, TOKEN_T__100 = 101, TOKEN_T__101 = 102, 
                   TOKEN_T__102 = 103, TOKEN_T__103 = 104, TOKEN_T__104 = 105, 
                   TOKEN_T__105 = 106, TOKEN_T__106 = 107, TOKEN_T__107 = 108, 
                   TOKEN_T__108 = 109, TOKEN_T__109 = 110, TOKEN_T__110 = 111, 
                   TOKEN_T__111 = 112, TOKEN_T__112 = 113, TOKEN_T__113 = 114, 
                   TOKEN_T__114 = 115, TOKEN_T__115 = 116, TOKEN_T__116 = 117, 
                   TOKEN_T__117 = 118, TOKEN_T__118 = 119, TOKEN_T__119 = 120, 
                   TOKEN_T__120 = 121, TOKEN_T__121 = 122, TOKEN_T__122 = 123, 
                   TOKEN_T__123 = 124, TOKEN_T__124 = 125, TOKEN_T__125 = 126, 
                   TOKEN_T__126 = 127, TOKEN_T__127 = 128, TOKEN_T__128 = 129, 
                   TOKEN_T__129 = 130, TOKEN_T__130 = 131, TOKEN_T__131 = 132, 
                   TOKEN_T__132 = 133, TOKEN_T__133 = 134, TOKEN_T__134 = 135, 
                   TOKEN_T__135 = 136, TOKEN_T__136 = 137, TOKEN_T__137 = 138, 
                   TOKEN_T__138 = 139, TOKEN_T__139 = 140, TOKEN_T__140 = 141, 
                   TOKEN_T__141 = 142, TOKEN_T__142 = 143, TOKEN_T__143 = 144, 
                   TOKEN_T__144 = 145, TOKEN_T__145 = 146, TOKEN_T__146 = 147, 
                   TOKEN_T__147 = 148, TOKEN_T__148 = 149, TOKEN_T__149 = 150, 
                   TOKEN_T__150 = 151, TOKEN_T__151 = 152, TOKEN_T__152 = 153, 
                   TOKEN_T__153 = 154, TOKEN_T__154 = 155, TOKEN_T__155 = 156, 
                   TOKEN_T__156 = 157, TOKEN_T__157 = 158, TOKEN_T__158 = 159, 
                   TOKEN_T__159 = 160, TOKEN_T__160 = 161, TOKEN_T__161 = 162, 
                   TOKEN_T__162 = 163, TOKEN_T__163 = 164, TOKEN_T__164 = 165, 
                   TOKEN_T__165 = 166, TOKEN_T__166 = 167, TOKEN_T__167 = 168, 
                   TOKEN_T__168 = 169, TOKEN_T__169 = 170, TOKEN_T__170 = 171, 
                   TOKEN_T__171 = 172, TOKEN_T__172 = 173, TOKEN_T__173 = 174, 
                   TOKEN_T__174 = 175, TOKEN_T__175 = 176, TOKEN_T__176 = 177, 
                   TOKEN_T__177 = 178, TOKEN_T__178 = 179, TOKEN_T__179 = 180, 
                   TOKEN_T__180 = 181, TOKEN_T__181 = 182, TOKEN_T__182 = 183, 
                   TOKEN_T__183 = 184, TOKEN_T__184 = 185, TOKEN_T__185 = 186, 
                   TOKEN_T__186 = 187, TOKEN_T__187 = 188, TOKEN_T__188 = 189, 
                   TOKEN_NUMBER_LITERAL = 190, TOKEN_BOOL_LITERAL = 191, 
                   TOKEN_STRING_LITERAL = 192, TOKEN_REGEX_LITERAL = 193, 
                   TOKEN_REGEX_MODIFIER = 194, TOKEN_THE = 195, TOKEN_A_AN = 196, 
                   TOKEN_ID = 197, TOKEN_ALPHA = 198, TOKEN_DIGIT = 199, 
                   TOKEN_COMMENT = 200, TOKEN_MULTILINE_COMMENT = 201, TOKEN_NEWLINE = 202, 
                   TOKEN_WHITESPACE = 203, TOKEN_UNLEXED_CHAR = 204;

  @override
  final List<String> ruleNames = [
    'script', 'statement', 'maybe', 'actionStatement', 'clickType', 'swipeType', 
    'expression', 'comparisonOp', 'term', 'property', 'function', 'handler', 
    'literal', 'cardinalValue', 'ordinal', 'widgetIdent', 'widgetNameModifier', 
    'widgetReference', 'widgetReferencePosition', 'widgetWhere', 'widget', 
    'widgetType', 'singleDirection', 'doubleDirection', 'character', 'word', 
    'line', 'item', 'of', 'click', 'swipe', 'isAre', 'isAreNot'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'.'", "'if'", "'maybe'", "'try'", "'to'", "'optional'", "'optionally'", 
      "'verify'", "'check'", "'assert'", "'expect'", "'test'", "'make'", 
      "'sure'", "'that'", "'see'", "'look'", "'at'", "'on'", "'with'", "'offset'", 
      "'enter'", "'type'", "'set'", "'as'", "'put'", "'store'", "'in'", 
      "'into'", "'wait'", "'for'", "'print'", "'output'", "'message'", "'by'", 
      "'left'", "'double'", "'long'", "'right'", "'up'", "'down'", "'('", 
      "')'", "'not'", "'-'", "'there'", "'is'", "'visible'", "'exist'", 
      "'exists'", "'^'", "'/'", "'*'", "'+'", "'&&'", "'&'", "'starts'", 
      "'ends'", "'contains'", "'matches'", "'and'", "'or'", "'='", "'eq'", 
      "'equal'", "'equals'", "'!='", "'<>'", "'neq'", "'>='", "'gte'", "'greater'", 
      "'than'", "'<'", "'<='", "'lte'", "'less'", "'>'", "'lt'", "'length'", 
      "'number'", "'count'", "'size'", "'format'", "'from'", "'now'", "','", 
      "'zero'", "'one'", "'two'", "'three'", "'four'", "'five'", "'six'", 
      "'seven'", "'eight'", "'nine'", "'ten'", "'first'", "'second'", "'third'", 
      "'fourth'", "'fifth'", "'sixth'", "'seventh'", "'eighth'", "'ninth'", 
      "'tenth'", "'last'", "'exactly'", "'case'", "'sensitive'", "'insensitive'", 
      "'screen'", "'edge'", "'of'", "'parent'", "'corner'", "'half'", "'side'", 
      "'quarter'", "'%'", "'percent'", "'within'", "'inside'", "'below'", 
      "'above'", "'where'", "'whose'", "'widget'", "'widgets'", "'button'", 
      "'buttons'", "'btn'", "'btns'", "'link'", "'links'", "'text'", "'input'", 
      "'field'", "'fields'", "'edit'", "'texts'", "'textfield'", "'textfields'", 
      "'inputfield'", "'inputfields'", "'edittext'", "'edittexts'", "'slider'", 
      "'sliders'", "'image'", "'images'", "'box'", "'boxes'", "'checkbox'", 
      "'checkboxes'", "'switch'", "'switches'", "'header'", "'headers'", 
      "'top'", "'upper'", "'bottom'", "'lower'", "'character'", "'characters'", 
      "'char'", "'chars'", "'word'", "'words'", "'line'", "'lines'", "'item'", 
      "'items'", "'click'", "'tap'", "'press'", "'push'", "'hit'", "'slam'", 
      "'swipe'", "'slide'", "'scroll'", "'are'", "'does'", "'isn't'", "'aren't'", 
      "'doesn't'", null, null, null, null, null, "'the'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, "NUMBER_LITERAL", "BOOL_LITERAL", "STRING_LITERAL", 
      "REGEX_LITERAL", "REGEX_MODIFIER", "THE", "A_AN", "ID", "ALPHA", "DIGIT", 
      "COMMENT", "MULTILINE_COMMENT", "NEWLINE", "WHITESPACE", "UNLEXED_CHAR"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'HoneyTalk.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  HoneyTalkParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ScriptContext script() {
    dynamic _localctx = ScriptContext(context, state);
    enterRule(_localctx, 0, RULE_script);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 74;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 66;
          statement();
          state = 68;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__0) {
            state = 67;
            match(TOKEN_T__0);
          }

          state = 70;
          match(TOKEN_NEWLINE); 
        }
        state = 76;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      }
      state = 81;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((_la) & ~0x3f) == 0 && ((1 << _la) & 128605510385624) != 0 || (((_la - 80)) & ~0x3f) == 0 && ((1 << (_la - 80)) & 5763481627422359391) != 0 || (((_la - 144)) & ~0x3f) == 0 && ((1 << (_la - 144)) & 10064929436726271) != 0) {
        state = 77;
        statement();
        state = 79;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__0) {
          state = 78;
          match(TOKEN_T__0);
        }

      }

      state = 86;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 83;
        match(TOKEN_NEWLINE);
        state = 88;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 89;
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
      state = 103;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
      case 1:
        _localctx = StatementActionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 92;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 216) != 0) {
          state = 91;
          maybe();
        }

        state = 94;
        actionStatement();
        state = 97;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__1) {
          state = 95;
          match(TOKEN_T__1);
          state = 96;
          expression(0);
        }

        break;
      case 2:
        _localctx = StatementExpressionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 100;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 216) != 0) {
          state = 99;
          maybe();
        }

        state = 102;
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
      state = 112;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 1);
        state = 105;
        match(TOKEN_T__2);
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 2);
        state = 106;
        match(TOKEN_T__3);
        state = 108;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__4) {
          state = 107;
          match(TOKEN_T__4);
        }

        break;
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 3);
        state = 110;
        match(TOKEN_T__5);
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 4);
        state = 111;
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
      state = 220;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 32, context)) {
      case 1:
        _localctx = ActionVerifyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 121;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__7:
          state = 114;
          match(TOKEN_T__7);
          break;
        case TOKEN_T__8:
          state = 115;
          match(TOKEN_T__8);
          break;
        case TOKEN_T__9:
          state = 116;
          match(TOKEN_T__9);
          break;
        case TOKEN_T__10:
          state = 117;
          match(TOKEN_T__10);
          break;
        case TOKEN_T__11:
          state = 118;
          match(TOKEN_T__11);
          break;
        case TOKEN_T__12:
          state = 119;
          match(TOKEN_T__12);
          state = 120;
          match(TOKEN_T__13);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 124;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__14) {
          state = 123;
          match(TOKEN_T__14);
        }

        state = 126;
        expression(0);
        break;
      case 2:
        _localctx = ActionSeeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 130;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__15:
          state = 127;
          match(TOKEN_T__15);
          break;
        case TOKEN_T__16:
          state = 128;
          match(TOKEN_T__16);
          state = 129;
          match(TOKEN_T__17);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 132;
        expression(0);
        break;
      case 3:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 133;
        clickType();
        state = 135;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__18) {
          state = 134;
          match(TOKEN_T__18);
        }

        state = 137;
        _localctx.target = expression(0);
        state = 146;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 3407872) != 0) {
          state = 143;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__17:
            state = 138;
            match(TOKEN_T__17);
            break;
          case TOKEN_T__19:
          case TOKEN_T__20:
            state = 140;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__19) {
              state = 139;
              match(TOKEN_T__19);
            }

            state = 142;
            match(TOKEN_T__20);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 145;
          _localctx.offset = expression(0);
        }

        break;
      case 4:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 148;
        clickType();
        state = 153;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 127543349346816) != 0 || (((_la - 80)) & ~0x3f) == 0 && ((1 << (_la - 80)) & 5763481627422359391) != 0 || (((_la - 144)) & ~0x3f) == 0 && ((1 << (_la - 144)) & 10062734708438015) != 0) {
          state = 150;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__18) {
            state = 149;
            match(TOKEN_T__18);
          }

          state = 152;
          _localctx.target = expression(0);
        }

        state = 160;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__17:
          state = 155;
          match(TOKEN_T__17);
          break;
        case TOKEN_T__19:
        case TOKEN_T__20:
          state = 157;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__19) {
            state = 156;
            match(TOKEN_T__19);
          }

          state = 159;
          match(TOKEN_T__20);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 162;
        _localctx.offset = expression(0);
        break;
      case 5:
        _localctx = ActionEnterContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 164;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__21 || _la == TOKEN_T__22)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 165;
        _localctx.value = expression(0);
        break;
      case 6:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 166;
        match(TOKEN_T__23);
        state = 167;
        _localctx.variable = match(TOKEN_ID);
        state = 168;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__24)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 169;
        expression(0);
        break;
      case 7:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 170;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__26)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 171;
        expression(0);
        state = 172;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__27 || _la == TOKEN_T__28)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 173;
        _localctx.variable = match(TOKEN_ID);
        break;
      case 8:
        _localctx = ActionWaitContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 175;
        match(TOKEN_T__29);
        state = 177;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__30) {
          state = 176;
          match(TOKEN_T__30);
        }

        state = 179;
        expression(0);
        break;
      case 9:
        _localctx = ActionPrintContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 180;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 30064771072) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 181;
        expression(0);
        break;
      case 10:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 182;
        swipeType();
        state = 184;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__18) {
          state = 183;
          match(TOKEN_T__18);
        }

        state = 186;
        _localctx.target = expression(0);
        state = 195;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 3407872) != 0) {
          state = 192;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__17:
            state = 187;
            match(TOKEN_T__17);
            break;
          case TOKEN_T__19:
          case TOKEN_T__20:
            state = 189;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__19) {
              state = 188;
              match(TOKEN_T__19);
            }

            state = 191;
            match(TOKEN_T__20);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 194;
          _localctx.offset = expression(0);
        }

        state = 198;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__34) {
          state = 197;
          match(TOKEN_T__34);
        }

        state = 200;
        _localctx.pixels = expression(0);
        break;
      case 11:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 202;
        swipeType();
        state = 207;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 127543349346816) != 0 || (((_la - 80)) & ~0x3f) == 0 && ((1 << (_la - 80)) & 5763481627422359391) != 0 || (((_la - 144)) & ~0x3f) == 0 && ((1 << (_la - 144)) & 10062734708438015) != 0) {
          state = 204;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__18) {
            state = 203;
            match(TOKEN_T__18);
          }

          state = 206;
          _localctx.target = expression(0);
        }

        state = 214;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__17:
          state = 209;
          match(TOKEN_T__17);
          break;
        case TOKEN_T__19:
        case TOKEN_T__20:
          state = 211;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__19) {
            state = 210;
            match(TOKEN_T__19);
          }

          state = 213;
          match(TOKEN_T__20);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 216;
        _localctx.offset = expression(0);

        state = 217;
        match(TOKEN_T__34);
        state = 218;
        _localctx.pixels = expression(0);
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
      state = 232;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__35:
      case TOKEN_T__175:
      case TOKEN_T__176:
      case TOKEN_T__177:
      case TOKEN_T__178:
      case TOKEN_T__179:
      case TOKEN_T__180:
        _localctx = ClickTypeSingleContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 223;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__35) {
          state = 222;
          match(TOKEN_T__35);
        }

        state = 225;
        click();
        break;
      case TOKEN_T__36:
        _localctx = ClickTypeDoubleContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 226;
        match(TOKEN_T__36);
        state = 227;
        click();
        break;
      case TOKEN_T__37:
        _localctx = ClickTypeLongContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 228;
        match(TOKEN_T__37);
        state = 229;
        click();
        break;
      case TOKEN_T__38:
        _localctx = ClickTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 230;
        match(TOKEN_T__38);
        state = 231;
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

  SwipeTypeContext swipeType() {
    dynamic _localctx = SwipeTypeContext(context, state);
    enterRule(_localctx, 10, RULE_swipeType);
    int _la;
    try {
      state = 247;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
      case 1:
        _localctx = SwipeTypeLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 234;
        swipe();
        state = 236;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__35) {
          state = 235;
          match(TOKEN_T__35);
        }

        break;
      case 2:
        _localctx = SwipeTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 238;
        swipe();
        state = 239;
        match(TOKEN_T__38);
        break;
      case 3:
        _localctx = SwipeTypeUpContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 241;
        swipe();
        state = 242;
        match(TOKEN_T__39);
        break;
      case 4:
        _localctx = SwipeTypeDownContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 244;
        swipe();
        state = 245;
        match(TOKEN_T__40);
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

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 12;
    enterRecursionRule(_localctx, 12, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 265;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 250;
        match(TOKEN_T__41);
        state = 251;
        expression(0);
        state = 252;
        match(TOKEN_T__42);
        break;
      case 2:
        _localctx = ExpressionTermContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 254;
        term();
        break;
      case 3:
        _localctx = ExpressionNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 255;
        match(TOKEN_T__43);
        state = 256;
        expression(16);
        break;
      case 4:
        _localctx = ExpressionNegateContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 257;
        match(TOKEN_T__44);
        state = 258;
        expression(15);
        break;
      case 5:
        _localctx = ExpressionExistsContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 259;
        match(TOKEN_T__45);
        state = 260;
        match(TOKEN_T__46);
        state = 262;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          state = 261;
          _localctx.not = match(TOKEN_T__43);
          break;
        }
        state = 264;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 321;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 319;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 41, context)) {
          case 1:
            _localctx = ExpressionPowContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 267;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 268;
            match(TOKEN_T__50);
            state = 269;
            expression(13);
            break;
          case 2:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 270;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 271;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__51 || _la == TOKEN_T__52)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 272;
            expression(12);
            break;
          case 3:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 273;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 274;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__44 || _la == TOKEN_T__53)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 275;
            expression(11);
            break;
          case 4:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 276;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 277;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__54 || _la == TOKEN_T__55)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 278;
            expression(10);
            break;
          case 5:
            _localctx = ExpressionComparisonContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 279;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 280;
            _localctx.op = comparisonOp();
            state = 281;
            expression(9);
            break;
          case 6:
            _localctx = ExpressionStartsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 283;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }

            state = 284;
            match(TOKEN_T__56);
            state = 285;
            match(TOKEN_T__19);
            state = 287;
            expression(8);
            break;
          case 7:
            _localctx = ExpressionEndsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 288;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }

            state = 289;
            match(TOKEN_T__57);
            state = 290;
            match(TOKEN_T__19);
            state = 292;
            expression(7);
            break;
          case 8:
            _localctx = ExpressionContainsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 293;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }

            state = 294;
            match(TOKEN_T__58);
            state = 295;
            expression(6);
            break;
          case 9:
            _localctx = ExpressionMatchesContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 296;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 297;
            match(TOKEN_T__59);
            state = 298;
            expression(5);
            break;
          case 10:
            _localctx = ExpressionAndContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 299;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 300;
            match(TOKEN_T__60);
            state = 301;
            expression(3);
            break;
          case 11:
            _localctx = ExpressionOrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 302;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 303;
            match(TOKEN_T__61);
            state = 304;
            expression(2);
            break;
          case 12:
            _localctx = ExpressionExistsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 305;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 308;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
            case 1:
              state = 306;
              isAre();
              break;
            case 2:
              state = 307;
              isAreNot();
              break;
            }
            state = 310;
            _la = tokenStream.LA(1)!;
            if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 1970324836974592) != 0)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          case 13:
            _localctx = ExpressionIsAttrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 312;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 315;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
            case 1:
              state = 313;
              isAre();
              break;
            case 2:
              state = 314;
              isAreNot();
              break;
            }
            state = 317;
            property();
            break;
          } 
        }
        state = 323;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
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
    enterRule(_localctx, 14, RULE_comparisonOp);
    int _la;
    try {
      state = 421;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 69, context)) {
      case 1:
        _localctx = ComparisonOpEqContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 337;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 46, context)) {
        case 1:
          state = 324;
          match(TOKEN_T__62);
          break;
        case 2:
          state = 326;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 325;
            isAre();
          }

          state = 328;
          match(TOKEN_T__63);
          break;
        case 3:
          state = 330;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 329;
            isAre();
          }

          state = 332;
          match(TOKEN_T__64);
          state = 334;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 333;
            match(TOKEN_T__4);
          }

          break;
        case 4:
          state = 336;
          match(TOKEN_T__65);
          break;
        }
        break;
      case 2:
        _localctx = ComparisonOpNeqContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 353;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 50, context)) {
        case 1:
          state = 339;
          match(TOKEN_T__66);
          break;
        case 2:
          state = 340;
          match(TOKEN_T__67);
          break;
        case 3:
          state = 342;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 341;
            isAre();
          }

          state = 344;
          match(TOKEN_T__68);
          break;
        case 4:
          state = 347;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__46:
          case TOKEN_T__184:
          case TOKEN_T__185:
          case TOKEN_T__186:
          case TOKEN_T__187:
          case TOKEN_T__188:
            state = 345;
            isAreNot();
            break;
          case TOKEN_T__43:
            state = 346;
            match(TOKEN_T__43);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 349;
          match(TOKEN_T__64);
          state = 351;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 350;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 3:
        _localctx = ComparisonOpGteContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 372;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 55, context)) {
        case 1:
          state = 355;
          match(TOKEN_T__69);
          break;
        case 2:
          state = 357;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 356;
            isAre();
          }

          state = 359;
          match(TOKEN_T__70);
          break;
        case 3:
          state = 361;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 360;
            isAre();
          }

          state = 363;
          match(TOKEN_T__71);
          state = 364;
          match(TOKEN_T__72);
          state = 366;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__61) {
            state = 365;
            match(TOKEN_T__61);
          }

          state = 368;
          match(TOKEN_T__64);
          state = 370;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 369;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 4:
        _localctx = ComparisonOpGtContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 386;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 59, context)) {
        case 1:
          state = 374;
          match(TOKEN_T__73);
          break;
        case 2:
          state = 376;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 375;
            isAre();
          }

          state = 378;
          match(TOKEN_T__70);
          break;
        case 3:
          state = 380;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 379;
            isAre();
          }

          state = 382;
          match(TOKEN_T__71);
          state = 384;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__72) {
            state = 383;
            match(TOKEN_T__72);
          }

          break;
        }
        break;
      case 5:
        _localctx = ComparisonOpLteContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 405;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 64, context)) {
        case 1:
          state = 388;
          match(TOKEN_T__74);
          break;
        case 2:
          state = 390;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 389;
            isAre();
          }

          state = 392;
          match(TOKEN_T__75);
          break;
        case 3:
          state = 394;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 393;
            isAre();
          }

          state = 396;
          match(TOKEN_T__76);
          state = 397;
          match(TOKEN_T__72);
          state = 399;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__61) {
            state = 398;
            match(TOKEN_T__61);
          }

          state = 401;
          match(TOKEN_T__64);
          state = 403;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 402;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 6:
        _localctx = ComparisonOpLtContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 419;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
        case 1:
          state = 407;
          match(TOKEN_T__77);
          break;
        case 2:
          state = 409;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 408;
            isAre();
          }

          state = 411;
          match(TOKEN_T__78);
          break;
        case 3:
          state = 413;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185) {
            state = 412;
            isAre();
          }

          state = 415;
          match(TOKEN_T__76);
          state = 417;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__72) {
            state = 416;
            match(TOKEN_T__72);
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
    enterRule(_localctx, 16, RULE_term);
    try {
      state = 440;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 70, context)) {
      case 1:
        _localctx = TermTermContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 423;
        match(TOKEN_T__41);
        state = 424;
        term();
        state = 425;
        match(TOKEN_T__42);
        break;
      case 2:
        _localctx = TermLiteralContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 427;
        literal();
        break;
      case 3:
        _localctx = TermNegateContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 428;
        match(TOKEN_T__44);
        state = 429;
        term();
        break;
      case 4:
        _localctx = TermFunctionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 430;
        function();
        break;
      case 5:
        _localctx = TermOrdinalContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 431;
        ordinal();
        state = 432;
        term();
        break;
      case 6:
        _localctx = TermWidgetContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 434;
        widget();
        break;
      case 7:
        _localctx = TermPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 435;
        property();
        state = 436;
        of();
        state = 437;
        term();
        break;
      case 8:
        _localctx = TermSymbolContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 439;
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
    enterRule(_localctx, 18, RULE_property);
    int _la;
    try {
      state = 448;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__79:
      case TOKEN_T__80:
      case TOKEN_T__81:
      case TOKEN_T__82:
        _localctx = BuiltinPropLengthContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 442;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 80)) & ~0x3f) == 0 && ((1 << (_la - 80)) & 15) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__165:
      case TOKEN_T__166:
      case TOKEN_T__167:
      case TOKEN_T__168:
        _localctx = BuiltinPropCharsContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 443;
        character();
        break;
      case TOKEN_T__173:
      case TOKEN_T__174:
        _localctx = BuiltinPropItemsContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 444;
        item();
        break;
      case TOKEN_T__169:
      case TOKEN_T__170:
        _localctx = BuiltinPropWordsContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 445;
        word();
        break;
      case TOKEN_T__171:
      case TOKEN_T__172:
        _localctx = BuiltinPropLinesContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 446;
        line();
        break;
      case TOKEN_ID:
        _localctx = OtherPropertyContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 447;
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
    enterRule(_localctx, 20, RULE_function);
    int _la;
    try {
      int _alt;
      state = 499;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
      case 1:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 450;
        match(TOKEN_T__83);
        state = 451;
        _localctx.date = term();
        state = 454;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__84) {
          state = 452;
          match(TOKEN_T__84);
          state = 453;
          _localctx.sourceFormat = term();
        }

        state = 456;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__24)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 457;
        _localctx.targetFormat = term();
        break;
      case 2:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 459;
        match(TOKEN_T__83);
        state = 460;
        _localctx.date = term();
        state = 461;
        match(TOKEN_T__84);
        state = 462;
        _localctx.sourceFormat = term();
        state = 465;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 73, context)) {
        case 1:
          state = 463;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__24)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 464;
          _localctx.targetFormat = term();
          break;
        }
        break;
      case 3:
        _localctx = FunctionNowContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 467;
        match(TOKEN_T__85);
        state = 470;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 74, context)) {
        case 1:
          state = 468;
          match(TOKEN_T__41);
          state = 469;
          match(TOKEN_T__42);
          break;
        }
        break;
      case 4:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 472;
        match(TOKEN_ID);
        state = 473;
        match(TOKEN_T__41);
        state = 484;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 39582418600448) != 0 || (((_la - 80)) & ~0x3f) == 0 && ((1 << (_la - 80)) & 5763481627422359391) != 0 || (((_la - 144)) & ~0x3f) == 0 && ((1 << (_la - 144)) & 10062734708438015) != 0) {
          state = 474;
          term();
          state = 481;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 76, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 476;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__86) {
                state = 475;
                match(TOKEN_T__86);
              }

              state = 478;
              term(); 
            }
            state = 483;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 76, context);
          }
        }

        state = 486;
        match(TOKEN_T__42);
        break;
      case 5:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 487;
        match(TOKEN_ID);
        state = 488;
        match(TOKEN_T__19);

        state = 489;
        term();
        state = 496;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 79, context);
        while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1 + 1) {
            state = 491;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__86) {
              state = 490;
              match(TOKEN_T__86);
            }

            state = 493;
            term(); 
          }
          state = 498;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 79, context);
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

  HandlerContext handler() {
    dynamic _localctx = HandlerContext(context, state);
    enterRule(_localctx, 22, RULE_handler);
    try {
      enterOuterAlt(_localctx, 1);
      state = 501;
      match(TOKEN_T__18);
      state = 502;
      _localctx.name = match(TOKEN_ID);


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
    enterRule(_localctx, 24, RULE_literal);
    try {
      state = 513;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
        _localctx = LiteralCardinalContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 505;
        cardinalValue();
        break;
      case TOKEN_STRING_LITERAL:
        _localctx = LiteralStringContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 506;
        match(TOKEN_STRING_LITERAL);
        break;
      case TOKEN_REGEX_LITERAL:
        _localctx = LiteralRegexContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 507;
        match(TOKEN_REGEX_LITERAL);
        state = 509;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 81, context)) {
        case 1:
          state = 508;
          match(TOKEN_REGEX_MODIFIER);
          break;
        }
        break;
      case TOKEN_NUMBER_LITERAL:
        _localctx = LiteralNumberContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 511;
        match(TOKEN_NUMBER_LITERAL);
        break;
      case TOKEN_BOOL_LITERAL:
        _localctx = LiteralBoolContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 512;
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
    enterRule(_localctx, 26, RULE_cardinalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 515;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 88)) & ~0x3f) == 0 && ((1 << (_la - 88)) & 2047) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 28, RULE_ordinal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 517;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 99)) & ~0x3f) == 0 && ((1 << (_la - 99)) & 2047) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 30, RULE_widgetIdent);
    int _la;
    try {
      int _alt;
      state = 573;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 522;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 519;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 524;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 525;
        widgetNameModifier();
        state = 526;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 531;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 84, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 527;
            match(TOKEN_T__61);
            state = 528;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal); 
          }
          state = 533;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 84, context);
        }
        state = 535;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 85, context)) {
        case 1:
          state = 534;
          widgetType();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 540;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 537;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 542;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 543;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 548;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__61) {
          state = 544;
          match(TOKEN_T__61);
          state = 545;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 550;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 551;
        widgetType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 556;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 553;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 558;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 560;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__109 || _la == TOKEN_T__110) {
          state = 559;
          widgetNameModifier();
        }

        state = 562;
        widgetType();
        state = 571;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 91, context)) {
        case 1:
          state = 563;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 568;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 90, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 564;
              match(TOKEN_T__61);
              state = 565;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal); 
            }
            state = 570;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 90, context);
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
    enterRule(_localctx, 32, RULE_widgetNameModifier);
    try {
      state = 580;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 93, context)) {
      case 1:
        _localctx = WidgetNameExactlyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 575;
        match(TOKEN_T__109);
        break;
      case 2:
        _localctx = WidgetNameCaseSensitiveContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 576;
        match(TOKEN_T__110);
        state = 577;
        match(TOKEN_T__111);
        break;
      case 3:
        _localctx = WidgetNameCaseInsensitiveContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 578;
        match(TOKEN_T__110);
        state = 579;
        match(TOKEN_T__112);
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
    enterRule(_localctx, 34, RULE_widgetReference);
    try {
      state = 593;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 94, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 582;
        widgetReferencePosition();
        state = 583;
        match(TOKEN_T__41);
        state = 584;
        term();
        state = 585;
        match(TOKEN_T__42);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 587;
        widgetReferencePosition();
        state = 588;
        match(TOKEN_T__113);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 590;
        widgetReferencePosition();
        state = 591;
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
    enterRule(_localctx, 36, RULE_widgetReferencePosition);
    int _la;
    try {
      state = 656;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
      case 1:
        _localctx = WidgetReferenceEdgeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 595;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 269221888) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 596;
        singleDirection();
        state = 598;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__114) {
          state = 597;
          match(TOKEN_T__114);
        }

        state = 600;
        match(TOKEN_T__115);
        state = 602;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 601;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 2:
        _localctx = WidgetReferenceCornerContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 604;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 269221888) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 605;
        doubleDirection();
        state = 607;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__117) {
          state = 606;
          match(TOKEN_T__117);
        }

        state = 609;
        match(TOKEN_T__115);
        state = 611;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 610;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 3:
        _localctx = WidgetReferenceHalfContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 613;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 269221888) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 614;
        singleDirection();
        state = 615;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__118 || _la == TOKEN_T__119)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 616;
        match(TOKEN_T__115);
        state = 618;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 617;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 4:
        _localctx = WidgetReferenceFractionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 620;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 269221888) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 621;
        ordinal();
        state = 622;
        singleDirection();
        state = 626;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__100:
          state = 623;
          _localctx.f = match(TOKEN_T__100);
          break;
        case TOKEN_T__120:
          state = 624;
          _localctx.f = match(TOKEN_T__120);
          break;
        case TOKEN_T__105:
          state = 625;
          _localctx.f = match(TOKEN_T__105);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 628;
        match(TOKEN_T__115);
        state = 630;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 629;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 5:
        _localctx = WidgetReferencePercentageContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 632;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 269221888) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 633;
        singleDirection();
        state = 634;
        literal();
        state = 635;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__121 || _la == TOKEN_T__122)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 636;
        match(TOKEN_T__115);
        state = 638;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 637;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 6:
        _localctx = WidgetReferenceInsideContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 640;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__27 || _la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 642;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__116) {
          state = 641;
          _localctx.isParent = match(TOKEN_T__116);
        }

        break;
      case 7:
        _localctx = WidgetReferenceToContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 651;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__125:
          state = 644;
          _localctx.below = match(TOKEN_T__125);
          break;
        case TOKEN_T__126:
          state = 645;
          _localctx.above = match(TOKEN_T__126);
          break;
        case TOKEN_T__4:
          state = 646;
          match(TOKEN_T__4);
          state = 649;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
          case 1:
            state = 647;
            singleDirection();
            break;
          case 2:
            state = 648;
            doubleDirection();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 654;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__115) {
          state = 653;
          match(TOKEN_T__115);
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
    enterRule(_localctx, 38, RULE_widgetWhere);
    int _la;
    try {
      state = 665;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 108, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 658;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__19 || _la == TOKEN_T__127 || _la == TOKEN_T__128)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 659;
        match(TOKEN_T__41);
        state = 660;
        expression(0);
        state = 661;
        match(TOKEN_T__42);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 663;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__19 || _la == TOKEN_T__127 || _la == TOKEN_T__128)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 664;
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
    enterRule(_localctx, 40, RULE_widget);
    int _la;
    try {
      state = 707;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 119, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 667;
        widgetIdent();
        state = 668;
        widgetReference();
        state = 670;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__60) {
          state = 669;
          match(TOKEN_T__60);
        }

        state = 672;
        widgetReference();
        state = 674;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__60) {
          state = 673;
          match(TOKEN_T__60);
        }

        state = 676;
        widgetReference();
        state = 678;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 111, context)) {
        case 1:
          state = 677;
          match(TOKEN_T__60);
          break;
        }
        state = 681;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 112, context)) {
        case 1:
          state = 680;
          widgetWhere();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 683;
        widgetIdent();
        state = 684;
        widgetReference();
        state = 686;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__60) {
          state = 685;
          match(TOKEN_T__60);
        }

        state = 688;
        widgetReference();
        state = 690;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 114, context)) {
        case 1:
          state = 689;
          match(TOKEN_T__60);
          break;
        }
        state = 693;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 115, context)) {
        case 1:
          state = 692;
          widgetWhere();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 695;
        widgetIdent();
        state = 696;
        widgetReference();
        state = 698;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 116, context)) {
        case 1:
          state = 697;
          match(TOKEN_T__60);
          break;
        }
        state = 701;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 117, context)) {
        case 1:
          state = 700;
          widgetWhere();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 703;
        widgetIdent();
        state = 705;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 118, context)) {
        case 1:
          state = 704;
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
    enterRule(_localctx, 42, RULE_widgetType);
    int _la;
    try {
      state = 734;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__129:
      case TOKEN_T__130:
        _localctx = WidgetTypeWidgetContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 709;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__129 || _la == TOKEN_T__130)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__131:
      case TOKEN_T__132:
      case TOKEN_T__133:
      case TOKEN_T__134:
        _localctx = WidgetTypeButtonContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 710;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 132)) & ~0x3f) == 0 && ((1 << (_la - 132)) & 15) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__135:
      case TOKEN_T__136:
        _localctx = WidgetTypeLinkContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 711;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__135 || _la == TOKEN_T__136)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__137:
      case TOKEN_T__138:
      case TOKEN_T__141:
      case TOKEN_T__143:
      case TOKEN_T__144:
      case TOKEN_T__145:
      case TOKEN_T__146:
      case TOKEN_T__147:
      case TOKEN_T__148:
        _localctx = WidgetTypeTextFieldContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 722;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__137:
        case TOKEN_T__138:
          state = 712;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__137 || _la == TOKEN_T__138)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 713;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__139 || _la == TOKEN_T__140)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__141:
          state = 714;
          match(TOKEN_T__141);
          state = 715;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__137 || _la == TOKEN_T__142)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__143:
          state = 716;
          match(TOKEN_T__143);
          break;
        case TOKEN_T__144:
          state = 717;
          match(TOKEN_T__144);
          break;
        case TOKEN_T__145:
          state = 718;
          match(TOKEN_T__145);
          break;
        case TOKEN_T__146:
          state = 719;
          match(TOKEN_T__146);
          break;
        case TOKEN_T__147:
          state = 720;
          match(TOKEN_T__147);
          break;
        case TOKEN_T__148:
          state = 721;
          match(TOKEN_T__148);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__149:
      case TOKEN_T__150:
        _localctx = WidgetTypeSliderContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 724;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__149 || _la == TOKEN_T__150)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__151:
      case TOKEN_T__152:
        _localctx = WidgetTypeImageContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 725;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__151 || _la == TOKEN_T__152)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__8:
      case TOKEN_T__155:
      case TOKEN_T__156:
        _localctx = WidgetTypeCheckBoxContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 730;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__8:
          state = 726;
          match(TOKEN_T__8);
          state = 727;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__153 || _la == TOKEN_T__154)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__155:
          state = 728;
          match(TOKEN_T__155);
          break;
        case TOKEN_T__156:
          state = 729;
          match(TOKEN_T__156);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__157:
      case TOKEN_T__158:
        _localctx = WidgetTypeSwitchContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 732;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__157 || _la == TOKEN_T__158)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__159:
      case TOKEN_T__160:
        _localctx = WidgetTypeHeaderContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 733;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 44, RULE_singleDirection);
    int _la;
    try {
      state = 740;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__35:
        _localctx = SingleDirectionLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 736;
        match(TOKEN_T__35);
        break;
      case TOKEN_T__38:
        _localctx = SingleDirectionRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 737;
        match(TOKEN_T__38);
        break;
      case TOKEN_T__39:
      case TOKEN_T__161:
      case TOKEN_T__162:
        _localctx = SingleDirectionTopContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 738;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__39 || _la == TOKEN_T__161 || _la == TOKEN_T__162)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__40:
      case TOKEN_T__163:
      case TOKEN_T__164:
        _localctx = SingleDirectionBottomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 739;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__40 || _la == TOKEN_T__163 || _la == TOKEN_T__164)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 46, RULE_doubleDirection);
    int _la;
    try {
      state = 778;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 132, context)) {
      case 1:
        _localctx = DoubleDirectionTopLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 749;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 742;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 744;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 743;
            match(TOKEN_T__44);
          }

          state = 746;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 747;
          match(TOKEN_T__35);
          state = 748;
          match(TOKEN_T__161);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        _localctx = DoubleDirectionTopRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 758;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 751;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 753;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 752;
            match(TOKEN_T__44);
          }

          state = 755;
          match(TOKEN_T__38);
          break;
        case TOKEN_T__38:
          state = 756;
          match(TOKEN_T__38);
          state = 757;
          match(TOKEN_T__161);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 3:
        _localctx = DoubleDirectionBottomLeftContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 767;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__163:
        case TOKEN_T__164:
          state = 760;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__163 || _la == TOKEN_T__164)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 762;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 761;
            match(TOKEN_T__44);
          }

          state = 764;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 765;
          match(TOKEN_T__35);
          state = 766;
          match(TOKEN_T__163);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = DoubleDirectionBottomRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 776;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__163:
        case TOKEN_T__164:
          state = 769;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__163 || _la == TOKEN_T__164)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 771;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44) {
            state = 770;
            match(TOKEN_T__44);
          }

          state = 773;
          match(TOKEN_T__38);
          break;
        case TOKEN_T__38:
          state = 774;
          match(TOKEN_T__38);
          state = 775;
          match(TOKEN_T__163);
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
    enterRule(_localctx, 48, RULE_character);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 780;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 166)) & ~0x3f) == 0 && ((1 << (_la - 166)) & 15) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 50, RULE_word);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 782;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__169 || _la == TOKEN_T__170)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 52, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 784;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__171 || _la == TOKEN_T__172)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 54, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 786;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__173 || _la == TOKEN_T__174)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 56, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 788;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__27 || _la == TOKEN_T__84 || _la == TOKEN_T__115)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 58, RULE_click);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 790;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 176)) & ~0x3f) == 0 && ((1 << (_la - 176)) & 63) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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

  SwipeContext swipe() {
    dynamic _localctx = SwipeContext(context, state);
    enterRule(_localctx, 60, RULE_swipe);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 792;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 182)) & ~0x3f) == 0 && ((1 << (_la - 182)) & 7) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 62, RULE_isAre);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 794;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__46 || _la == TOKEN_T__184 || _la == TOKEN_T__185)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
    enterRule(_localctx, 64, RULE_isAreNot);
    try {
      state = 805;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__46:
        enterOuterAlt(_localctx, 1);
        state = 796;
        match(TOKEN_T__46);
        state = 797;
        match(TOKEN_T__43);
        break;
      case TOKEN_T__186:
        enterOuterAlt(_localctx, 2);
        state = 798;
        match(TOKEN_T__186);
        break;
      case TOKEN_T__184:
        enterOuterAlt(_localctx, 3);
        state = 799;
        match(TOKEN_T__184);
        state = 800;
        match(TOKEN_T__43);
        break;
      case TOKEN_T__187:
        enterOuterAlt(_localctx, 4);
        state = 801;
        match(TOKEN_T__187);
        break;
      case TOKEN_T__185:
        enterOuterAlt(_localctx, 5);
        state = 802;
        match(TOKEN_T__185);
        state = 803;
        match(TOKEN_T__43);
        break;
      case TOKEN_T__188:
        enterOuterAlt(_localctx, 6);
        state = 804;
        match(TOKEN_T__188);
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
    case 6:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 12);
      case 1: return precpred(context, 11);
      case 2: return precpred(context, 10);
      case 3: return precpred(context, 9);
      case 4: return precpred(context, 8);
      case 5: return precpred(context, 7);
      case 6: return precpred(context, 6);
      case 7: return precpred(context, 5);
      case 8: return precpred(context, 4);
      case 9: return precpred(context, 2);
      case 10: return precpred(context, 1);
      case 11: return precpred(context, 13);
      case 12: return precpred(context, 3);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,204,808,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
      6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
      2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,
      20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,
      7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,1,0,1,0,3,0,
      69,8,0,1,0,1,0,5,0,73,8,0,10,0,12,0,76,9,0,1,0,1,0,3,0,80,8,0,3,0,
      82,8,0,1,0,5,0,85,8,0,10,0,12,0,88,9,0,1,0,1,0,1,1,3,1,93,8,1,1,1,
      1,1,1,1,3,1,98,8,1,1,1,3,1,101,8,1,1,1,3,1,104,8,1,1,2,1,2,1,2,3,2,
      109,8,2,1,2,1,2,3,2,113,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,3,122,8,
      3,1,3,3,3,125,8,3,1,3,1,3,1,3,1,3,3,3,131,8,3,1,3,1,3,1,3,3,3,136,
      8,3,1,3,1,3,1,3,3,3,141,8,3,1,3,3,3,144,8,3,1,3,3,3,147,8,3,1,3,1,
      3,3,3,151,8,3,1,3,3,3,154,8,3,1,3,1,3,3,3,158,8,3,1,3,3,3,161,8,3,
      1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,3,178,
      8,3,1,3,1,3,1,3,1,3,1,3,3,3,185,8,3,1,3,1,3,1,3,3,3,190,8,3,1,3,3,
      3,193,8,3,1,3,3,3,196,8,3,1,3,3,3,199,8,3,1,3,1,3,1,3,1,3,3,3,205,
      8,3,1,3,3,3,208,8,3,1,3,1,3,3,3,212,8,3,1,3,3,3,215,8,3,1,3,1,3,1,
      3,1,3,3,3,221,8,3,1,4,3,4,224,8,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,
      233,8,4,1,5,1,5,3,5,237,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,
      5,248,8,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,
      263,8,6,1,6,3,6,266,8,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,
      1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,309,8,
      6,1,6,1,6,1,6,1,6,1,6,3,6,316,8,6,1,6,1,6,5,6,320,8,6,10,6,12,6,323,
      9,6,1,7,1,7,3,7,327,8,7,1,7,1,7,3,7,331,8,7,1,7,1,7,3,7,335,8,7,1,
      7,3,7,338,8,7,1,7,1,7,1,7,3,7,343,8,7,1,7,1,7,1,7,3,7,348,8,7,1,7,
      1,7,3,7,352,8,7,3,7,354,8,7,1,7,1,7,3,7,358,8,7,1,7,1,7,3,7,362,8,
      7,1,7,1,7,1,7,3,7,367,8,7,1,7,1,7,3,7,371,8,7,3,7,373,8,7,1,7,1,7,
      3,7,377,8,7,1,7,1,7,3,7,381,8,7,1,7,1,7,3,7,385,8,7,3,7,387,8,7,1,
      7,1,7,3,7,391,8,7,1,7,1,7,3,7,395,8,7,1,7,1,7,1,7,3,7,400,8,7,1,7,
      1,7,3,7,404,8,7,3,7,406,8,7,1,7,1,7,3,7,410,8,7,1,7,1,7,3,7,414,8,
      7,1,7,1,7,3,7,418,8,7,3,7,420,8,7,3,7,422,8,7,1,8,1,8,1,8,1,8,1,8,
      1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,441,8,8,1,9,1,
      9,1,9,1,9,1,9,1,9,3,9,449,8,9,1,10,1,10,1,10,1,10,3,10,455,8,10,1,
      10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,3,10,466,8,10,1,10,1,10,
      1,10,3,10,471,8,10,1,10,1,10,1,10,1,10,3,10,477,8,10,1,10,5,10,480,
      8,10,10,10,12,10,483,9,10,3,10,485,8,10,1,10,1,10,1,10,1,10,1,10,3,
      10,492,8,10,1,10,5,10,495,8,10,10,10,12,10,498,9,10,3,10,500,8,10,
      1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,3,12,510,8,12,1,12,1,12,3,
      12,514,8,12,1,13,1,13,1,14,1,14,1,15,5,15,521,8,15,10,15,12,15,524,
      9,15,1,15,1,15,1,15,1,15,5,15,530,8,15,10,15,12,15,533,9,15,1,15,3,
      15,536,8,15,1,15,5,15,539,8,15,10,15,12,15,542,9,15,1,15,1,15,1,15,
      5,15,547,8,15,10,15,12,15,550,9,15,1,15,1,15,1,15,5,15,555,8,15,10,
      15,12,15,558,9,15,1,15,3,15,561,8,15,1,15,1,15,1,15,1,15,5,15,567,
      8,15,10,15,12,15,570,9,15,3,15,572,8,15,3,15,574,8,15,1,16,1,16,1,
      16,1,16,1,16,3,16,581,8,16,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,
      1,17,1,17,1,17,3,17,594,8,17,1,18,1,18,1,18,3,18,599,8,18,1,18,1,18,
      3,18,603,8,18,1,18,1,18,1,18,3,18,608,8,18,1,18,1,18,3,18,612,8,18,
      1,18,1,18,1,18,1,18,1,18,3,18,619,8,18,1,18,1,18,1,18,1,18,1,18,1,
      18,3,18,627,8,18,1,18,1,18,3,18,631,8,18,1,18,1,18,1,18,1,18,1,18,
      1,18,3,18,639,8,18,1,18,1,18,3,18,643,8,18,1,18,1,18,1,18,1,18,1,18,
      3,18,650,8,18,3,18,652,8,18,1,18,3,18,655,8,18,3,18,657,8,18,1,19,
      1,19,1,19,1,19,1,19,1,19,1,19,3,19,666,8,19,1,20,1,20,1,20,3,20,671,
      8,20,1,20,1,20,3,20,675,8,20,1,20,1,20,3,20,679,8,20,1,20,3,20,682,
      8,20,1,20,1,20,1,20,3,20,687,8,20,1,20,1,20,3,20,691,8,20,1,20,3,20,
      694,8,20,1,20,1,20,1,20,3,20,699,8,20,1,20,3,20,702,8,20,1,20,1,20,
      3,20,706,8,20,3,20,708,8,20,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,
      1,21,1,21,1,21,1,21,1,21,3,21,723,8,21,1,21,1,21,1,21,1,21,1,21,1,
      21,3,21,731,8,21,1,21,1,21,3,21,735,8,21,1,22,1,22,1,22,1,22,3,22,
      741,8,22,1,23,1,23,3,23,745,8,23,1,23,1,23,1,23,3,23,750,8,23,1,23,
      1,23,3,23,754,8,23,1,23,1,23,1,23,3,23,759,8,23,1,23,1,23,3,23,763,
      8,23,1,23,1,23,1,23,3,23,768,8,23,1,23,1,23,3,23,772,8,23,1,23,1,23,
      1,23,3,23,777,8,23,3,23,779,8,23,1,24,1,24,1,25,1,25,1,26,1,26,1,27,
      1,27,1,28,1,28,1,29,1,29,1,30,1,30,1,31,1,31,1,32,1,32,1,32,1,32,1,
      32,1,32,1,32,1,32,1,32,3,32,806,8,32,1,32,2,481,496,1,12,33,0,2,4,
      6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,
      52,54,56,58,60,62,64,0,40,1,0,22,23,2,0,5,5,25,25,1,0,26,27,1,0,28,
      29,1,0,32,34,1,0,52,53,2,0,45,45,54,54,1,0,55,56,1,0,48,50,1,0,80,
      83,1,0,88,98,1,0,99,109,2,0,18,19,28,28,1,0,119,120,1,0,122,123,2,
      0,28,28,124,125,2,0,20,20,128,129,1,0,130,131,1,0,132,135,1,0,136,
      137,1,0,138,139,1,0,140,141,2,0,138,138,143,143,1,0,150,151,1,0,152,
      153,1,0,154,155,1,0,158,159,1,0,160,161,2,0,40,40,162,163,2,0,41,41,
      164,165,1,0,162,163,1,0,164,165,1,0,166,169,1,0,170,171,1,0,172,173,
      1,0,174,175,3,0,28,28,85,85,116,116,1,0,176,181,1,0,182,184,2,0,47,
      47,185,186,1003,0,74,1,0,0,0,2,103,1,0,0,0,4,112,1,0,0,0,6,220,1,0,
      0,0,8,232,1,0,0,0,10,247,1,0,0,0,12,265,1,0,0,0,14,421,1,0,0,0,16,
      440,1,0,0,0,18,448,1,0,0,0,20,499,1,0,0,0,22,501,1,0,0,0,24,513,1,
      0,0,0,26,515,1,0,0,0,28,517,1,0,0,0,30,573,1,0,0,0,32,580,1,0,0,0,
      34,593,1,0,0,0,36,656,1,0,0,0,38,665,1,0,0,0,40,707,1,0,0,0,42,734,
      1,0,0,0,44,740,1,0,0,0,46,778,1,0,0,0,48,780,1,0,0,0,50,782,1,0,0,
      0,52,784,1,0,0,0,54,786,1,0,0,0,56,788,1,0,0,0,58,790,1,0,0,0,60,792,
      1,0,0,0,62,794,1,0,0,0,64,805,1,0,0,0,66,68,3,2,1,0,67,69,5,1,0,0,
      68,67,1,0,0,0,68,69,1,0,0,0,69,70,1,0,0,0,70,71,5,202,0,0,71,73,1,
      0,0,0,72,66,1,0,0,0,73,76,1,0,0,0,74,72,1,0,0,0,74,75,1,0,0,0,75,81,
      1,0,0,0,76,74,1,0,0,0,77,79,3,2,1,0,78,80,5,1,0,0,79,78,1,0,0,0,79,
      80,1,0,0,0,80,82,1,0,0,0,81,77,1,0,0,0,81,82,1,0,0,0,82,86,1,0,0,0,
      83,85,5,202,0,0,84,83,1,0,0,0,85,88,1,0,0,0,86,84,1,0,0,0,86,87,1,
      0,0,0,87,89,1,0,0,0,88,86,1,0,0,0,89,90,5,0,0,1,90,1,1,0,0,0,91,93,
      3,4,2,0,92,91,1,0,0,0,92,93,1,0,0,0,93,94,1,0,0,0,94,97,3,6,3,0,95,
      96,5,2,0,0,96,98,3,12,6,0,97,95,1,0,0,0,97,98,1,0,0,0,98,104,1,0,0,
      0,99,101,3,4,2,0,100,99,1,0,0,0,100,101,1,0,0,0,101,102,1,0,0,0,102,
      104,3,12,6,0,103,92,1,0,0,0,103,100,1,0,0,0,104,3,1,0,0,0,105,113,
      5,3,0,0,106,108,5,4,0,0,107,109,5,5,0,0,108,107,1,0,0,0,108,109,1,
      0,0,0,109,113,1,0,0,0,110,113,5,6,0,0,111,113,5,7,0,0,112,105,1,0,
      0,0,112,106,1,0,0,0,112,110,1,0,0,0,112,111,1,0,0,0,113,5,1,0,0,0,
      114,122,5,8,0,0,115,122,5,9,0,0,116,122,5,10,0,0,117,122,5,11,0,0,
      118,122,5,12,0,0,119,120,5,13,0,0,120,122,5,14,0,0,121,114,1,0,0,0,
      121,115,1,0,0,0,121,116,1,0,0,0,121,117,1,0,0,0,121,118,1,0,0,0,121,
      119,1,0,0,0,122,124,1,0,0,0,123,125,5,15,0,0,124,123,1,0,0,0,124,125,
      1,0,0,0,125,126,1,0,0,0,126,221,3,12,6,0,127,131,5,16,0,0,128,129,
      5,17,0,0,129,131,5,18,0,0,130,127,1,0,0,0,130,128,1,0,0,0,131,132,
      1,0,0,0,132,221,3,12,6,0,133,135,3,8,4,0,134,136,5,19,0,0,135,134,
      1,0,0,0,135,136,1,0,0,0,136,137,1,0,0,0,137,146,3,12,6,0,138,144,5,
      18,0,0,139,141,5,20,0,0,140,139,1,0,0,0,140,141,1,0,0,0,141,142,1,
      0,0,0,142,144,5,21,0,0,143,138,1,0,0,0,143,140,1,0,0,0,144,145,1,0,
      0,0,145,147,3,12,6,0,146,143,1,0,0,0,146,147,1,0,0,0,147,221,1,0,0,
      0,148,153,3,8,4,0,149,151,5,19,0,0,150,149,1,0,0,0,150,151,1,0,0,0,
      151,152,1,0,0,0,152,154,3,12,6,0,153,150,1,0,0,0,153,154,1,0,0,0,154,
      160,1,0,0,0,155,161,5,18,0,0,156,158,5,20,0,0,157,156,1,0,0,0,157,
      158,1,0,0,0,158,159,1,0,0,0,159,161,5,21,0,0,160,155,1,0,0,0,160,157,
      1,0,0,0,161,162,1,0,0,0,162,163,3,12,6,0,163,221,1,0,0,0,164,165,7,
      0,0,0,165,221,3,12,6,0,166,167,5,24,0,0,167,168,5,197,0,0,168,169,
      7,1,0,0,169,221,3,12,6,0,170,171,7,2,0,0,171,172,3,12,6,0,172,173,
      7,3,0,0,173,174,5,197,0,0,174,221,1,0,0,0,175,177,5,30,0,0,176,178,
      5,31,0,0,177,176,1,0,0,0,177,178,1,0,0,0,178,179,1,0,0,0,179,221,3,
      12,6,0,180,181,7,4,0,0,181,221,3,12,6,0,182,184,3,10,5,0,183,185,5,
      19,0,0,184,183,1,0,0,0,184,185,1,0,0,0,185,186,1,0,0,0,186,195,3,12,
      6,0,187,193,5,18,0,0,188,190,5,20,0,0,189,188,1,0,0,0,189,190,1,0,
      0,0,190,191,1,0,0,0,191,193,5,21,0,0,192,187,1,0,0,0,192,189,1,0,0,
      0,193,194,1,0,0,0,194,196,3,12,6,0,195,192,1,0,0,0,195,196,1,0,0,0,
      196,198,1,0,0,0,197,199,5,35,0,0,198,197,1,0,0,0,198,199,1,0,0,0,199,
      200,1,0,0,0,200,201,3,12,6,0,201,221,1,0,0,0,202,207,3,10,5,0,203,
      205,5,19,0,0,204,203,1,0,0,0,204,205,1,0,0,0,205,206,1,0,0,0,206,208,
      3,12,6,0,207,204,1,0,0,0,207,208,1,0,0,0,208,214,1,0,0,0,209,215,5,
      18,0,0,210,212,5,20,0,0,211,210,1,0,0,0,211,212,1,0,0,0,212,213,1,
      0,0,0,213,215,5,21,0,0,214,209,1,0,0,0,214,211,1,0,0,0,215,216,1,0,
      0,0,216,217,3,12,6,0,217,218,5,35,0,0,218,219,3,12,6,0,219,221,1,0,
      0,0,220,121,1,0,0,0,220,130,1,0,0,0,220,133,1,0,0,0,220,148,1,0,0,
      0,220,164,1,0,0,0,220,166,1,0,0,0,220,170,1,0,0,0,220,175,1,0,0,0,
      220,180,1,0,0,0,220,182,1,0,0,0,220,202,1,0,0,0,221,7,1,0,0,0,222,
      224,5,36,0,0,223,222,1,0,0,0,223,224,1,0,0,0,224,225,1,0,0,0,225,233,
      3,58,29,0,226,227,5,37,0,0,227,233,3,58,29,0,228,229,5,38,0,0,229,
      233,3,58,29,0,230,231,5,39,0,0,231,233,3,58,29,0,232,223,1,0,0,0,232,
      226,1,0,0,0,232,228,1,0,0,0,232,230,1,0,0,0,233,9,1,0,0,0,234,236,
      3,60,30,0,235,237,5,36,0,0,236,235,1,0,0,0,236,237,1,0,0,0,237,248,
      1,0,0,0,238,239,3,60,30,0,239,240,5,39,0,0,240,248,1,0,0,0,241,242,
      3,60,30,0,242,243,5,40,0,0,243,248,1,0,0,0,244,245,3,60,30,0,245,246,
      5,41,0,0,246,248,1,0,0,0,247,234,1,0,0,0,247,238,1,0,0,0,247,241,1,
      0,0,0,247,244,1,0,0,0,248,11,1,0,0,0,249,250,6,6,-1,0,250,251,5,42,
      0,0,251,252,3,12,6,0,252,253,5,43,0,0,253,266,1,0,0,0,254,266,3,16,
      8,0,255,256,5,44,0,0,256,266,3,12,6,16,257,258,5,45,0,0,258,266,3,
      12,6,15,259,260,5,46,0,0,260,262,5,47,0,0,261,263,5,44,0,0,262,261,
      1,0,0,0,262,263,1,0,0,0,263,264,1,0,0,0,264,266,3,12,6,14,265,249,
      1,0,0,0,265,254,1,0,0,0,265,255,1,0,0,0,265,257,1,0,0,0,265,259,1,
      0,0,0,266,321,1,0,0,0,267,268,10,12,0,0,268,269,5,51,0,0,269,320,3,
      12,6,13,270,271,10,11,0,0,271,272,7,5,0,0,272,320,3,12,6,12,273,274,
      10,10,0,0,274,275,7,6,0,0,275,320,3,12,6,11,276,277,10,9,0,0,277,278,
      7,7,0,0,278,320,3,12,6,10,279,280,10,8,0,0,280,281,3,14,7,0,281,282,
      3,12,6,9,282,320,1,0,0,0,283,284,10,7,0,0,284,285,5,57,0,0,285,286,
      5,20,0,0,286,287,1,0,0,0,287,320,3,12,6,8,288,289,10,6,0,0,289,290,
      5,58,0,0,290,291,5,20,0,0,291,292,1,0,0,0,292,320,3,12,6,7,293,294,
      10,5,0,0,294,295,5,59,0,0,295,320,3,12,6,6,296,297,10,4,0,0,297,298,
      5,60,0,0,298,320,3,12,6,5,299,300,10,2,0,0,300,301,5,61,0,0,301,320,
      3,12,6,3,302,303,10,1,0,0,303,304,5,62,0,0,304,320,3,12,6,2,305,308,
      10,13,0,0,306,309,3,62,31,0,307,309,3,64,32,0,308,306,1,0,0,0,308,
      307,1,0,0,0,309,310,1,0,0,0,310,311,7,8,0,0,311,320,1,0,0,0,312,315,
      10,3,0,0,313,316,3,62,31,0,314,316,3,64,32,0,315,313,1,0,0,0,315,314,
      1,0,0,0,316,317,1,0,0,0,317,318,3,18,9,0,318,320,1,0,0,0,319,267,1,
      0,0,0,319,270,1,0,0,0,319,273,1,0,0,0,319,276,1,0,0,0,319,279,1,0,
      0,0,319,283,1,0,0,0,319,288,1,0,0,0,319,293,1,0,0,0,319,296,1,0,0,
      0,319,299,1,0,0,0,319,302,1,0,0,0,319,305,1,0,0,0,319,312,1,0,0,0,
      320,323,1,0,0,0,321,319,1,0,0,0,321,322,1,0,0,0,322,13,1,0,0,0,323,
      321,1,0,0,0,324,338,5,63,0,0,325,327,3,62,31,0,326,325,1,0,0,0,326,
      327,1,0,0,0,327,328,1,0,0,0,328,338,5,64,0,0,329,331,3,62,31,0,330,
      329,1,0,0,0,330,331,1,0,0,0,331,332,1,0,0,0,332,334,5,65,0,0,333,335,
      5,5,0,0,334,333,1,0,0,0,334,335,1,0,0,0,335,338,1,0,0,0,336,338,5,
      66,0,0,337,324,1,0,0,0,337,326,1,0,0,0,337,330,1,0,0,0,337,336,1,0,
      0,0,338,422,1,0,0,0,339,354,5,67,0,0,340,354,5,68,0,0,341,343,3,62,
      31,0,342,341,1,0,0,0,342,343,1,0,0,0,343,344,1,0,0,0,344,354,5,69,
      0,0,345,348,3,64,32,0,346,348,5,44,0,0,347,345,1,0,0,0,347,346,1,0,
      0,0,348,349,1,0,0,0,349,351,5,65,0,0,350,352,5,5,0,0,351,350,1,0,0,
      0,351,352,1,0,0,0,352,354,1,0,0,0,353,339,1,0,0,0,353,340,1,0,0,0,
      353,342,1,0,0,0,353,347,1,0,0,0,354,422,1,0,0,0,355,373,5,70,0,0,356,
      358,3,62,31,0,357,356,1,0,0,0,357,358,1,0,0,0,358,359,1,0,0,0,359,
      373,5,71,0,0,360,362,3,62,31,0,361,360,1,0,0,0,361,362,1,0,0,0,362,
      363,1,0,0,0,363,364,5,72,0,0,364,366,5,73,0,0,365,367,5,62,0,0,366,
      365,1,0,0,0,366,367,1,0,0,0,367,368,1,0,0,0,368,370,5,65,0,0,369,371,
      5,5,0,0,370,369,1,0,0,0,370,371,1,0,0,0,371,373,1,0,0,0,372,355,1,
      0,0,0,372,357,1,0,0,0,372,361,1,0,0,0,373,422,1,0,0,0,374,387,5,74,
      0,0,375,377,3,62,31,0,376,375,1,0,0,0,376,377,1,0,0,0,377,378,1,0,
      0,0,378,387,5,71,0,0,379,381,3,62,31,0,380,379,1,0,0,0,380,381,1,0,
      0,0,381,382,1,0,0,0,382,384,5,72,0,0,383,385,5,73,0,0,384,383,1,0,
      0,0,384,385,1,0,0,0,385,387,1,0,0,0,386,374,1,0,0,0,386,376,1,0,0,
      0,386,380,1,0,0,0,387,422,1,0,0,0,388,406,5,75,0,0,389,391,3,62,31,
      0,390,389,1,0,0,0,390,391,1,0,0,0,391,392,1,0,0,0,392,406,5,76,0,0,
      393,395,3,62,31,0,394,393,1,0,0,0,394,395,1,0,0,0,395,396,1,0,0,0,
      396,397,5,77,0,0,397,399,5,73,0,0,398,400,5,62,0,0,399,398,1,0,0,0,
      399,400,1,0,0,0,400,401,1,0,0,0,401,403,5,65,0,0,402,404,5,5,0,0,403,
      402,1,0,0,0,403,404,1,0,0,0,404,406,1,0,0,0,405,388,1,0,0,0,405,390,
      1,0,0,0,405,394,1,0,0,0,406,422,1,0,0,0,407,420,5,78,0,0,408,410,3,
      62,31,0,409,408,1,0,0,0,409,410,1,0,0,0,410,411,1,0,0,0,411,420,5,
      79,0,0,412,414,3,62,31,0,413,412,1,0,0,0,413,414,1,0,0,0,414,415,1,
      0,0,0,415,417,5,77,0,0,416,418,5,73,0,0,417,416,1,0,0,0,417,418,1,
      0,0,0,418,420,1,0,0,0,419,407,1,0,0,0,419,409,1,0,0,0,419,413,1,0,
      0,0,420,422,1,0,0,0,421,337,1,0,0,0,421,353,1,0,0,0,421,372,1,0,0,
      0,421,386,1,0,0,0,421,405,1,0,0,0,421,419,1,0,0,0,422,15,1,0,0,0,423,
      424,5,42,0,0,424,425,3,16,8,0,425,426,5,43,0,0,426,441,1,0,0,0,427,
      441,3,24,12,0,428,429,5,45,0,0,429,441,3,16,8,0,430,441,3,20,10,0,
      431,432,3,28,14,0,432,433,3,16,8,0,433,441,1,0,0,0,434,441,3,40,20,
      0,435,436,3,18,9,0,436,437,3,56,28,0,437,438,3,16,8,0,438,441,1,0,
      0,0,439,441,5,197,0,0,440,423,1,0,0,0,440,427,1,0,0,0,440,428,1,0,
      0,0,440,430,1,0,0,0,440,431,1,0,0,0,440,434,1,0,0,0,440,435,1,0,0,
      0,440,439,1,0,0,0,441,17,1,0,0,0,442,449,7,9,0,0,443,449,3,48,24,0,
      444,449,3,54,27,0,445,449,3,50,25,0,446,449,3,52,26,0,447,449,5,197,
      0,0,448,442,1,0,0,0,448,443,1,0,0,0,448,444,1,0,0,0,448,445,1,0,0,
      0,448,446,1,0,0,0,448,447,1,0,0,0,449,19,1,0,0,0,450,451,5,84,0,0,
      451,454,3,16,8,0,452,453,5,85,0,0,453,455,3,16,8,0,454,452,1,0,0,0,
      454,455,1,0,0,0,455,456,1,0,0,0,456,457,7,1,0,0,457,458,3,16,8,0,458,
      500,1,0,0,0,459,460,5,84,0,0,460,461,3,16,8,0,461,462,5,85,0,0,462,
      465,3,16,8,0,463,464,7,1,0,0,464,466,3,16,8,0,465,463,1,0,0,0,465,
      466,1,0,0,0,466,500,1,0,0,0,467,470,5,86,0,0,468,469,5,42,0,0,469,
      471,5,43,0,0,470,468,1,0,0,0,470,471,1,0,0,0,471,500,1,0,0,0,472,473,
      5,197,0,0,473,484,5,42,0,0,474,481,3,16,8,0,475,477,5,87,0,0,476,475,
      1,0,0,0,476,477,1,0,0,0,477,478,1,0,0,0,478,480,3,16,8,0,479,476,1,
      0,0,0,480,483,1,0,0,0,481,482,1,0,0,0,481,479,1,0,0,0,482,485,1,0,
      0,0,483,481,1,0,0,0,484,474,1,0,0,0,484,485,1,0,0,0,485,486,1,0,0,
      0,486,500,5,43,0,0,487,488,5,197,0,0,488,489,5,20,0,0,489,496,3,16,
      8,0,490,492,5,87,0,0,491,490,1,0,0,0,491,492,1,0,0,0,492,493,1,0,0,
      0,493,495,3,16,8,0,494,491,1,0,0,0,495,498,1,0,0,0,496,497,1,0,0,0,
      496,494,1,0,0,0,497,500,1,0,0,0,498,496,1,0,0,0,499,450,1,0,0,0,499,
      459,1,0,0,0,499,467,1,0,0,0,499,472,1,0,0,0,499,487,1,0,0,0,500,21,
      1,0,0,0,501,502,5,19,0,0,502,503,5,197,0,0,503,504,1,0,0,0,504,23,
      1,0,0,0,505,514,3,26,13,0,506,514,5,192,0,0,507,509,5,193,0,0,508,
      510,5,194,0,0,509,508,1,0,0,0,509,510,1,0,0,0,510,514,1,0,0,0,511,
      514,5,190,0,0,512,514,5,191,0,0,513,505,1,0,0,0,513,506,1,0,0,0,513,
      507,1,0,0,0,513,511,1,0,0,0,513,512,1,0,0,0,514,25,1,0,0,0,515,516,
      7,10,0,0,516,27,1,0,0,0,517,518,7,11,0,0,518,29,1,0,0,0,519,521,5,
      197,0,0,520,519,1,0,0,0,521,524,1,0,0,0,522,520,1,0,0,0,522,523,1,
      0,0,0,523,525,1,0,0,0,524,522,1,0,0,0,525,526,3,32,16,0,526,531,3,
      24,12,0,527,528,5,62,0,0,528,530,3,24,12,0,529,527,1,0,0,0,530,533,
      1,0,0,0,531,529,1,0,0,0,531,532,1,0,0,0,532,535,1,0,0,0,533,531,1,
      0,0,0,534,536,3,42,21,0,535,534,1,0,0,0,535,536,1,0,0,0,536,574,1,
      0,0,0,537,539,5,197,0,0,538,537,1,0,0,0,539,542,1,0,0,0,540,538,1,
      0,0,0,540,541,1,0,0,0,541,543,1,0,0,0,542,540,1,0,0,0,543,548,3,24,
      12,0,544,545,5,62,0,0,545,547,3,24,12,0,546,544,1,0,0,0,547,550,1,
      0,0,0,548,546,1,0,0,0,548,549,1,0,0,0,549,551,1,0,0,0,550,548,1,0,
      0,0,551,552,3,42,21,0,552,574,1,0,0,0,553,555,5,197,0,0,554,553,1,
      0,0,0,555,558,1,0,0,0,556,554,1,0,0,0,556,557,1,0,0,0,557,560,1,0,
      0,0,558,556,1,0,0,0,559,561,3,32,16,0,560,559,1,0,0,0,560,561,1,0,
      0,0,561,562,1,0,0,0,562,571,3,42,21,0,563,568,3,24,12,0,564,565,5,
      62,0,0,565,567,3,24,12,0,566,564,1,0,0,0,567,570,1,0,0,0,568,566,1,
      0,0,0,568,569,1,0,0,0,569,572,1,0,0,0,570,568,1,0,0,0,571,563,1,0,
      0,0,571,572,1,0,0,0,572,574,1,0,0,0,573,522,1,0,0,0,573,540,1,0,0,
      0,573,556,1,0,0,0,574,31,1,0,0,0,575,581,5,110,0,0,576,577,5,111,0,
      0,577,581,5,112,0,0,578,579,5,111,0,0,579,581,5,113,0,0,580,575,1,
      0,0,0,580,576,1,0,0,0,580,578,1,0,0,0,581,33,1,0,0,0,582,583,3,36,
      18,0,583,584,5,42,0,0,584,585,3,16,8,0,585,586,5,43,0,0,586,594,1,
      0,0,0,587,588,3,36,18,0,588,589,5,114,0,0,589,594,1,0,0,0,590,591,
      3,36,18,0,591,592,3,16,8,0,592,594,1,0,0,0,593,582,1,0,0,0,593,587,
      1,0,0,0,593,590,1,0,0,0,594,35,1,0,0,0,595,596,7,12,0,0,596,598,3,
      44,22,0,597,599,5,115,0,0,598,597,1,0,0,0,598,599,1,0,0,0,599,600,
      1,0,0,0,600,602,5,116,0,0,601,603,5,117,0,0,602,601,1,0,0,0,602,603,
      1,0,0,0,603,657,1,0,0,0,604,605,7,12,0,0,605,607,3,46,23,0,606,608,
      5,118,0,0,607,606,1,0,0,0,607,608,1,0,0,0,608,609,1,0,0,0,609,611,
      5,116,0,0,610,612,5,117,0,0,611,610,1,0,0,0,611,612,1,0,0,0,612,657,
      1,0,0,0,613,614,7,12,0,0,614,615,3,44,22,0,615,616,7,13,0,0,616,618,
      5,116,0,0,617,619,5,117,0,0,618,617,1,0,0,0,618,619,1,0,0,0,619,657,
      1,0,0,0,620,621,7,12,0,0,621,622,3,28,14,0,622,626,3,44,22,0,623,627,
      5,101,0,0,624,627,5,121,0,0,625,627,5,106,0,0,626,623,1,0,0,0,626,
      624,1,0,0,0,626,625,1,0,0,0,627,628,1,0,0,0,628,630,5,116,0,0,629,
      631,5,117,0,0,630,629,1,0,0,0,630,631,1,0,0,0,631,657,1,0,0,0,632,
      633,7,12,0,0,633,634,3,44,22,0,634,635,3,24,12,0,635,636,7,14,0,0,
      636,638,5,116,0,0,637,639,5,117,0,0,638,637,1,0,0,0,638,639,1,0,0,
      0,639,657,1,0,0,0,640,642,7,15,0,0,641,643,5,117,0,0,642,641,1,0,0,
      0,642,643,1,0,0,0,643,657,1,0,0,0,644,652,5,126,0,0,645,652,5,127,
      0,0,646,649,5,5,0,0,647,650,3,44,22,0,648,650,3,46,23,0,649,647,1,
      0,0,0,649,648,1,0,0,0,650,652,1,0,0,0,651,644,1,0,0,0,651,645,1,0,
      0,0,651,646,1,0,0,0,652,654,1,0,0,0,653,655,5,116,0,0,654,653,1,0,
      0,0,654,655,1,0,0,0,655,657,1,0,0,0,656,595,1,0,0,0,656,604,1,0,0,
      0,656,613,1,0,0,0,656,620,1,0,0,0,656,632,1,0,0,0,656,640,1,0,0,0,
      656,651,1,0,0,0,657,37,1,0,0,0,658,659,7,16,0,0,659,660,5,42,0,0,660,
      661,3,12,6,0,661,662,5,43,0,0,662,666,1,0,0,0,663,664,7,16,0,0,664,
      666,3,12,6,0,665,658,1,0,0,0,665,663,1,0,0,0,666,39,1,0,0,0,667,668,
      3,30,15,0,668,670,3,34,17,0,669,671,5,61,0,0,670,669,1,0,0,0,670,671,
      1,0,0,0,671,672,1,0,0,0,672,674,3,34,17,0,673,675,5,61,0,0,674,673,
      1,0,0,0,674,675,1,0,0,0,675,676,1,0,0,0,676,678,3,34,17,0,677,679,
      5,61,0,0,678,677,1,0,0,0,678,679,1,0,0,0,679,681,1,0,0,0,680,682,3,
      38,19,0,681,680,1,0,0,0,681,682,1,0,0,0,682,708,1,0,0,0,683,684,3,
      30,15,0,684,686,3,34,17,0,685,687,5,61,0,0,686,685,1,0,0,0,686,687,
      1,0,0,0,687,688,1,0,0,0,688,690,3,34,17,0,689,691,5,61,0,0,690,689,
      1,0,0,0,690,691,1,0,0,0,691,693,1,0,0,0,692,694,3,38,19,0,693,692,
      1,0,0,0,693,694,1,0,0,0,694,708,1,0,0,0,695,696,3,30,15,0,696,698,
      3,34,17,0,697,699,5,61,0,0,698,697,1,0,0,0,698,699,1,0,0,0,699,701,
      1,0,0,0,700,702,3,38,19,0,701,700,1,0,0,0,701,702,1,0,0,0,702,708,
      1,0,0,0,703,705,3,30,15,0,704,706,3,38,19,0,705,704,1,0,0,0,705,706,
      1,0,0,0,706,708,1,0,0,0,707,667,1,0,0,0,707,683,1,0,0,0,707,695,1,
      0,0,0,707,703,1,0,0,0,708,41,1,0,0,0,709,735,7,17,0,0,710,735,7,18,
      0,0,711,735,7,19,0,0,712,713,7,20,0,0,713,723,7,21,0,0,714,715,5,142,
      0,0,715,723,7,22,0,0,716,723,5,144,0,0,717,723,5,145,0,0,718,723,5,
      146,0,0,719,723,5,147,0,0,720,723,5,148,0,0,721,723,5,149,0,0,722,
      712,1,0,0,0,722,714,1,0,0,0,722,716,1,0,0,0,722,717,1,0,0,0,722,718,
      1,0,0,0,722,719,1,0,0,0,722,720,1,0,0,0,722,721,1,0,0,0,723,735,1,
      0,0,0,724,735,7,23,0,0,725,735,7,24,0,0,726,727,5,9,0,0,727,731,7,
      25,0,0,728,731,5,156,0,0,729,731,5,157,0,0,730,726,1,0,0,0,730,728,
      1,0,0,0,730,729,1,0,0,0,731,735,1,0,0,0,732,735,7,26,0,0,733,735,7,
      27,0,0,734,709,1,0,0,0,734,710,1,0,0,0,734,711,1,0,0,0,734,722,1,0,
      0,0,734,724,1,0,0,0,734,725,1,0,0,0,734,730,1,0,0,0,734,732,1,0,0,
      0,734,733,1,0,0,0,735,43,1,0,0,0,736,741,5,36,0,0,737,741,5,39,0,0,
      738,741,7,28,0,0,739,741,7,29,0,0,740,736,1,0,0,0,740,737,1,0,0,0,
      740,738,1,0,0,0,740,739,1,0,0,0,741,45,1,0,0,0,742,744,7,30,0,0,743,
      745,5,45,0,0,744,743,1,0,0,0,744,745,1,0,0,0,745,746,1,0,0,0,746,750,
      5,36,0,0,747,748,5,36,0,0,748,750,5,162,0,0,749,742,1,0,0,0,749,747,
      1,0,0,0,750,779,1,0,0,0,751,753,7,30,0,0,752,754,5,45,0,0,753,752,
      1,0,0,0,753,754,1,0,0,0,754,755,1,0,0,0,755,759,5,39,0,0,756,757,5,
      39,0,0,757,759,5,162,0,0,758,751,1,0,0,0,758,756,1,0,0,0,759,779,1,
      0,0,0,760,762,7,31,0,0,761,763,5,45,0,0,762,761,1,0,0,0,762,763,1,
      0,0,0,763,764,1,0,0,0,764,768,5,36,0,0,765,766,5,36,0,0,766,768,5,
      164,0,0,767,760,1,0,0,0,767,765,1,0,0,0,768,779,1,0,0,0,769,771,7,
      31,0,0,770,772,5,45,0,0,771,770,1,0,0,0,771,772,1,0,0,0,772,773,1,
      0,0,0,773,777,5,39,0,0,774,775,5,39,0,0,775,777,5,164,0,0,776,769,
      1,0,0,0,776,774,1,0,0,0,777,779,1,0,0,0,778,749,1,0,0,0,778,758,1,
      0,0,0,778,767,1,0,0,0,778,776,1,0,0,0,779,47,1,0,0,0,780,781,7,32,
      0,0,781,49,1,0,0,0,782,783,7,33,0,0,783,51,1,0,0,0,784,785,7,34,0,
      0,785,53,1,0,0,0,786,787,7,35,0,0,787,55,1,0,0,0,788,789,7,36,0,0,
      789,57,1,0,0,0,790,791,7,37,0,0,791,59,1,0,0,0,792,793,7,38,0,0,793,
      61,1,0,0,0,794,795,7,39,0,0,795,63,1,0,0,0,796,797,5,47,0,0,797,806,
      5,44,0,0,798,806,5,187,0,0,799,800,5,185,0,0,800,806,5,44,0,0,801,
      806,5,188,0,0,802,803,5,186,0,0,803,806,5,44,0,0,804,806,5,189,0,0,
      805,796,1,0,0,0,805,798,1,0,0,0,805,799,1,0,0,0,805,801,1,0,0,0,805,
      802,1,0,0,0,805,804,1,0,0,0,806,65,1,0,0,0,134,68,74,79,81,86,92,97,
      100,103,108,112,121,124,130,135,140,143,146,150,153,157,160,177,184,
      189,192,195,198,204,207,211,214,220,223,232,236,247,262,265,308,315,
      319,321,326,330,334,337,342,347,351,353,357,361,366,370,372,376,380,
      384,386,390,394,399,403,405,409,413,417,419,421,440,448,454,465,470,
      476,481,484,491,496,499,509,513,522,531,535,540,548,556,560,568,571,
      573,580,593,598,602,607,611,618,626,630,638,642,649,651,654,656,665,
      670,674,678,681,686,690,693,698,701,705,707,722,730,734,740,744,749,
      753,758,762,767,771,776,778,805
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ScriptContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(HoneyTalkParser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  List<TerminalNode> NEWLINEs() => getTokens(HoneyTalkParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(HoneyTalkParser.TOKEN_NEWLINE, i);
  ScriptContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class MaybeContext extends ParserRuleContext {
  MaybeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ActionStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_actionStatement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ClickTypeContext extends ParserRuleContext {
  ClickTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_clickType;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class SwipeTypeContext extends ParserRuleContext {
  SwipeTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_swipeType;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ComparisonOpContext extends ParserRuleContext {
  ComparisonOpContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comparisonOp;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class TermContext extends ParserRuleContext {
  TermContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_term;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class PropertyContext extends ParserRuleContext {
  PropertyContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_property;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class FunctionContext extends ParserRuleContext {
  FunctionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_function;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class HandlerContext extends ParserRuleContext {
  Token? name;
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  HandlerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_handler;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitHandler(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LiteralContext extends ParserRuleContext {
  LiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_literal;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class CardinalValueContext extends ParserRuleContext {
  CardinalValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  OrdinalContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  WidgetNameModifierContext? widgetNameModifier() => getRuleContext<WidgetNameModifierContext>(0);
  List<LiteralContext> literals() => getRuleContexts<LiteralContext>();
  LiteralContext? literal(int i) => getRuleContext<LiteralContext>(i);
  WidgetTypeContext? widgetType() => getRuleContext<WidgetTypeContext>(0);
  List<TerminalNode> IDs() => getTokens(HoneyTalkParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(HoneyTalkParser.TOKEN_ID, i);
  WidgetIdentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  WidgetNameModifierContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetNameModifier;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class WidgetReferenceContext extends ParserRuleContext {
  WidgetReferencePositionContext? widgetReferencePosition() => getRuleContext<WidgetReferencePositionContext>(0);
  TermContext? term() => getRuleContext<TermContext>(0);
  WidgetReferenceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  WidgetReferencePositionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetReferencePosition;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class WidgetWhereContext extends ParserRuleContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  WidgetWhereContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  List<WidgetReferenceContext> widgetReferences() => getRuleContexts<WidgetReferenceContext>();
  WidgetReferenceContext? widgetReference(int i) => getRuleContext<WidgetReferenceContext>(i);
  WidgetWhereContext? widgetWhere() => getRuleContext<WidgetWhereContext>(0);
  WidgetContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  WidgetTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_widgetType;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class SingleDirectionContext extends ParserRuleContext {
  SingleDirectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_singleDirection;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class DoubleDirectionContext extends ParserRuleContext {
  DoubleDirectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_doubleDirection;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class CharacterContext extends ParserRuleContext {
  CharacterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  WordContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  LineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ItemContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  OfContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ClickContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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

class SwipeContext extends ParserRuleContext {
  SwipeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_swipe;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSwipe(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IsAreContext extends ParserRuleContext {
  IsAreContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IsAreNotContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ActionStatementContext? actionStatement() => getRuleContext<ActionStatementContext>(0);
  MaybeContext? maybe() => getRuleContext<MaybeContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  StatementActionContext(StatementContext ctx) { copyFrom(ctx); }
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
  StatementExpressionContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitStatementExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class ActionVerifyContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionVerifyContext(ActionStatementContext ctx) { copyFrom(ctx); }
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
  ActionClickContext(ActionStatementContext ctx) { copyFrom(ctx); }
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
  ActionPrintContext(ActionStatementContext ctx) { copyFrom(ctx); }
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
  ActionEnterContext(ActionStatementContext ctx) { copyFrom(ctx); }
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
  ActionSetVariableContext(ActionStatementContext ctx) { copyFrom(ctx); }
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
  ActionWaitContext(ActionStatementContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitActionWait(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ActionSwipeContext extends ActionStatementContext {
  ExpressionContext? target;
  ExpressionContext? offset;
  ExpressionContext? pixels;
  SwipeTypeContext? swipeType() => getRuleContext<SwipeTypeContext>(0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ActionSwipeContext(ActionStatementContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitActionSwipe(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ActionSeeContext extends ActionStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ActionSeeContext(ActionStatementContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitActionSee(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class ClickTypeSingleContext extends ClickTypeContext {
  ClickContext? click() => getRuleContext<ClickContext>(0);
  ClickTypeSingleContext(ClickTypeContext ctx) { copyFrom(ctx); }
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
  ClickTypeDoubleContext(ClickTypeContext ctx) { copyFrom(ctx); }
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
  ClickTypeLongContext(ClickTypeContext ctx) { copyFrom(ctx); }
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
  ClickTypeRightContext(ClickTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitClickTypeRight(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class SwipeTypeUpContext extends SwipeTypeContext {
  SwipeContext? swipe() => getRuleContext<SwipeContext>(0);
  SwipeTypeUpContext(SwipeTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSwipeTypeUp(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SwipeTypeRightContext extends SwipeTypeContext {
  SwipeContext? swipe() => getRuleContext<SwipeContext>(0);
  SwipeTypeRightContext(SwipeTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSwipeTypeRight(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SwipeTypeDownContext extends SwipeTypeContext {
  SwipeContext? swipe() => getRuleContext<SwipeContext>(0);
  SwipeTypeDownContext(SwipeTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSwipeTypeDown(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SwipeTypeLeftContext extends SwipeTypeContext {
  SwipeContext? swipe() => getRuleContext<SwipeContext>(0);
  SwipeTypeLeftContext(SwipeTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSwipeTypeLeft(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class ExpressionContainsContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  ExpressionContainsContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionNegateContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionPowContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionTermContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionIsAttrContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  IsAreNotContext? isAreNot() => getRuleContext<IsAreNotContext>(0);
  ExpressionExistsContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionNotContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionBinaryOpContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionComparisonContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionAndContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionEndsWithContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionOrContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionStartsWithContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionMatchesContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitExpressionMatches(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class ComparisonOpNeqContext extends ComparisonOpContext {
  IsAreNotContext? isAreNot() => getRuleContext<IsAreNotContext>(0);
  IsAreContext? isAre() => getRuleContext<IsAreContext>(0);
  ComparisonOpNeqContext(ComparisonOpContext ctx) { copyFrom(ctx); }
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
  ComparisonOpLteContext(ComparisonOpContext ctx) { copyFrom(ctx); }
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
  ComparisonOpLtContext(ComparisonOpContext ctx) { copyFrom(ctx); }
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
  ComparisonOpGtContext(ComparisonOpContext ctx) { copyFrom(ctx); }
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
  ComparisonOpEqContext(ComparisonOpContext ctx) { copyFrom(ctx); }
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
  ComparisonOpGteContext(ComparisonOpContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitComparisonOpGte(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class TermWidgetContext extends TermContext {
  WidgetContext? widget() => getRuleContext<WidgetContext>(0);
  TermWidgetContext(TermContext ctx) { copyFrom(ctx); }
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
  TermNegateContext(TermContext ctx) { copyFrom(ctx); }
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
  TermTermContext(TermContext ctx) { copyFrom(ctx); }
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
  TermSymbolContext(TermContext ctx) { copyFrom(ctx); }
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
  TermPropertyContext(TermContext ctx) { copyFrom(ctx); }
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
  TermFunctionContext(TermContext ctx) { copyFrom(ctx); }
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
  TermOrdinalContext(TermContext ctx) { copyFrom(ctx); }
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
  TermLiteralContext(TermContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitTermLiteral(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class BuiltinPropLengthContext extends PropertyContext {
  BuiltinPropLengthContext(PropertyContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitBuiltinPropLength(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BuiltinPropWordsContext extends PropertyContext {
  WordContext? word() => getRuleContext<WordContext>(0);
  BuiltinPropWordsContext(PropertyContext ctx) { copyFrom(ctx); }
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
  BuiltinPropCharsContext(PropertyContext ctx) { copyFrom(ctx); }
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
  BuiltinPropItemsContext(PropertyContext ctx) { copyFrom(ctx); }
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
  OtherPropertyContext(PropertyContext ctx) { copyFrom(ctx); }
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
  BuiltinPropLinesContext(PropertyContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitBuiltinPropLines(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class FunctionCustomContext extends FunctionContext {
  TerminalNode? ID() => getToken(HoneyTalkParser.TOKEN_ID, 0);
  List<TermContext> terms() => getRuleContexts<TermContext>();
  TermContext? term(int i) => getRuleContext<TermContext>(i);
  FunctionCustomContext(FunctionContext ctx) { copyFrom(ctx); }
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
  FunctionNowContext(FunctionContext ctx) { copyFrom(ctx); }
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
  FunctionFormatContext(FunctionContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitFunctionFormat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class LiteralNumberContext extends LiteralContext {
  TerminalNode? NUMBER_LITERAL() => getToken(HoneyTalkParser.TOKEN_NUMBER_LITERAL, 0);
  LiteralNumberContext(LiteralContext ctx) { copyFrom(ctx); }
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
  CardinalValueContext? cardinalValue() => getRuleContext<CardinalValueContext>(0);
  LiteralCardinalContext(LiteralContext ctx) { copyFrom(ctx); }
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
  TerminalNode? STRING_LITERAL() => getToken(HoneyTalkParser.TOKEN_STRING_LITERAL, 0);
  LiteralStringContext(LiteralContext ctx) { copyFrom(ctx); }
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
  TerminalNode? BOOL_LITERAL() => getToken(HoneyTalkParser.TOKEN_BOOL_LITERAL, 0);
  LiteralBoolContext(LiteralContext ctx) { copyFrom(ctx); }
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
  TerminalNode? REGEX_LITERAL() => getToken(HoneyTalkParser.TOKEN_REGEX_LITERAL, 0);
  TerminalNode? REGEX_MODIFIER() => getToken(HoneyTalkParser.TOKEN_REGEX_MODIFIER, 0);
  LiteralRegexContext(LiteralContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitLiteralRegex(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class WidgetNameExactlyContext extends WidgetNameModifierContext {
  WidgetNameExactlyContext(WidgetNameModifierContext ctx) { copyFrom(ctx); }
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
  WidgetNameCaseSensitiveContext(WidgetNameModifierContext ctx) { copyFrom(ctx); }
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
  WidgetNameCaseInsensitiveContext(WidgetNameModifierContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitWidgetNameCaseInsensitive(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class WidgetReferenceHalfContext extends WidgetReferencePositionContext {
  Token? isParent;
  SingleDirectionContext? singleDirection() => getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceHalfContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionContext? singleDirection() => getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceFractionContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  WidgetReferenceInsideContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  DoubleDirectionContext? doubleDirection() => getRuleContext<DoubleDirectionContext>(0);
  WidgetReferenceCornerContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionContext? singleDirection() => getRuleContext<SingleDirectionContext>(0);
  DoubleDirectionContext? doubleDirection() => getRuleContext<DoubleDirectionContext>(0);
  WidgetReferenceToContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionContext? singleDirection() => getRuleContext<SingleDirectionContext>(0);
  WidgetReferenceEdgeContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionContext? singleDirection() => getRuleContext<SingleDirectionContext>(0);
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  WidgetReferencePercentageContext(WidgetReferencePositionContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitWidgetReferencePercentage(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class WidgetTypeButtonContext extends WidgetTypeContext {
  WidgetTypeButtonContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeImageContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeSliderContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeCheckBoxContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeWidgetContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeLinkContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeTextFieldContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeHeaderContext(WidgetTypeContext ctx) { copyFrom(ctx); }
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
  WidgetTypeSwitchContext(WidgetTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitWidgetTypeSwitch(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class SingleDirectionBottomContext extends SingleDirectionContext {
  SingleDirectionBottomContext(SingleDirectionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionRightContext(SingleDirectionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionLeftContext(SingleDirectionContext ctx) { copyFrom(ctx); }
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
  SingleDirectionTopContext(SingleDirectionContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitSingleDirectionTop(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class DoubleDirectionTopRightContext extends DoubleDirectionContext {
  DoubleDirectionTopRightContext(DoubleDirectionContext ctx) { copyFrom(ctx); }
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
  DoubleDirectionBottomLeftContext(DoubleDirectionContext ctx) { copyFrom(ctx); }
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
  DoubleDirectionTopLeftContext(DoubleDirectionContext ctx) { copyFrom(ctx); }
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
  DoubleDirectionBottomRightContext(DoubleDirectionContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitDoubleDirectionBottomRight(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}