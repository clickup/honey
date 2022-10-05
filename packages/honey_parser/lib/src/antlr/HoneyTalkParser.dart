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
                   TOKEN_T__186 = 187, TOKEN_NUMBER_LITERAL = 188, TOKEN_BOOL_LITERAL = 189, 
                   TOKEN_STRING_LITERAL = 190, TOKEN_REGEX_LITERAL = 191, 
                   TOKEN_REGEX_MODIFIER = 192, TOKEN_THE = 193, TOKEN_A_AN = 194, 
                   TOKEN_ID = 195, TOKEN_ALPHA = 196, TOKEN_DIGIT = 197, 
                   TOKEN_COMMENT = 198, TOKEN_MULTILINE_COMMENT = 199, TOKEN_NEWLINE = 200, 
                   TOKEN_WHITESPACE = 201, TOKEN_UNLEXED_CHAR = 202;

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
      "'verify'", "'check'", "'assert'", "'expect'", "'test'", "'that'", 
      "'see'", "'look'", "'at'", "'on'", "'with'", "'offset'", "'enter'", 
      "'type'", "'set'", "'as'", "'put'", "'store'", "'in'", "'into'", "'wait'", 
      "'for'", "'print'", "'output'", "'message'", "'left'", "'double'", 
      "'long'", "'right'", "'up'", "'down'", "'('", "')'", "'not'", "'-'", 
      "'there'", "'is'", "'visible'", "'exist'", "'exists'", "'^'", "'/'", 
      "'*'", "'+'", "'&&'", "'&'", "'starts'", "'ends'", "'contains'", "'matches'", 
      "'and'", "'or'", "'='", "'eq'", "'equal'", "'equals'", "'!='", "'<>'", 
      "'neq'", "'>='", "'gte'", "'greater'", "'than'", "'<'", "'<='", "'lte'", 
      "'less'", "'>'", "'lt'", "'length'", "'number'", "'count'", "'format'", 
      "'from'", "'now'", "','", "'zero'", "'one'", "'two'", "'three'", "'four'", 
      "'five'", "'six'", "'seven'", "'eight'", "'nine'", "'ten'", "'first'", 
      "'second'", "'third'", "'fourth'", "'fifth'", "'sixth'", "'seventh'", 
      "'eighth'", "'ninth'", "'tenth'", "'last'", "'exactly'", "'case'", 
      "'sensitive'", "'insensitive'", "'screen'", "'edge'", "'of'", "'parent'", 
      "'corner'", "'half'", "'side'", "'quarter'", "'%'", "'percent'", "'within'", 
      "'inside'", "'below'", "'above'", "'where'", "'whose'", "'widget'", 
      "'widgets'", "'button'", "'buttons'", "'btn'", "'btns'", "'link'", 
      "'links'", "'text'", "'input'", "'field'", "'fields'", "'edit'", "'texts'", 
      "'textfield'", "'textfields'", "'inputfield'", "'inputfields'", "'edittext'", 
      "'edittexts'", "'slider'", "'sliders'", "'image'", "'images'", "'list'", 
      "'lists'", "'box'", "'boxes'", "'checkbox'", "'checkboxes'", "'switch'", 
      "'switches'", "'header'", "'headers'", "'top'", "'upper'", "'bottom'", 
      "'lower'", "'character'", "'characters'", "'char'", "'chars'", "'word'", 
      "'words'", "'line'", "'lines'", "'item'", "'items'", "'click'", "'tap'", 
      "'press'", "'push'", "'hit'", "'slam'", "'swipe'", "'slide'", "'scroll'", 
      "'are'", "'does'", "'isn't'", "'aren't'", "'doesn't'", null, null, 
      null, null, null, "'the'"
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
      null, "NUMBER_LITERAL", "BOOL_LITERAL", "STRING_LITERAL", "REGEX_LITERAL", 
      "REGEX_MODIFIER", "THE", "A_AN", "ID", "ALPHA", "DIGIT", "COMMENT", 
      "MULTILINE_COMMENT", "NEWLINE", "WHITESPACE", "UNLEXED_CHAR"
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
      if (((_la) & ~0x3f) == 0 && ((1 << _la) & 16079609978840) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 20129858873452543) != 0) {
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
      state = 205;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
      case 1:
        _localctx = ActionVerifyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 114;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 7936) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 116;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__12) {
          state = 115;
          match(TOKEN_T__12);
        }

        state = 118;
        expression(0);
        break;
      case 2:
        _localctx = ActionSeeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 122;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__13:
          state = 119;
          match(TOKEN_T__13);
          break;
        case TOKEN_T__14:
          state = 120;
          match(TOKEN_T__14);
          state = 121;
          match(TOKEN_T__15);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 124;
        expression(0);
        break;
      case 3:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 125;
        clickType();
        state = 127;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__16) {
          state = 126;
          match(TOKEN_T__16);
        }

        state = 129;
        _localctx.target = expression(0);
        state = 138;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 851968) != 0) {
          state = 135;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__15:
            state = 130;
            match(TOKEN_T__15);
            break;
          case TOKEN_T__17:
          case TOKEN_T__18:
            state = 132;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__17) {
              state = 131;
              match(TOKEN_T__17);
            }

            state = 134;
            match(TOKEN_T__18);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 137;
          _localctx.offset = expression(0);
        }

        break;
      case 4:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 140;
        clickType();
        state = 145;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 15942918734336) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 20125469416876031) != 0) {
          state = 142;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 141;
            match(TOKEN_T__16);
          }

          state = 144;
          _localctx.target = expression(0);
        }

        state = 152;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__15:
          state = 147;
          match(TOKEN_T__15);
          break;
        case TOKEN_T__17:
        case TOKEN_T__18:
          state = 149;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__17) {
            state = 148;
            match(TOKEN_T__17);
          }

          state = 151;
          match(TOKEN_T__18);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 154;
        _localctx.offset = expression(0);
        break;
      case 5:
        _localctx = ActionEnterContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 156;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__19 || _la == TOKEN_T__20)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 157;
        _localctx.value = expression(0);
        break;
      case 6:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 158;
        match(TOKEN_T__21);
        state = 159;
        _localctx.variable = match(TOKEN_ID);
        state = 160;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 161;
        expression(0);
        break;
      case 7:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 162;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__23 || _la == TOKEN_T__24)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 163;
        expression(0);
        state = 164;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__26)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 165;
        _localctx.variable = match(TOKEN_ID);
        break;
      case 8:
        _localctx = ActionWaitContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 167;
        match(TOKEN_T__27);
        state = 169;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__28) {
          state = 168;
          match(TOKEN_T__28);
        }

        state = 171;
        expression(0);
        break;
      case 9:
        _localctx = ActionPrintContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 172;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 7516192768) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 173;
        expression(0);
        break;
      case 10:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 174;
        swipeType();
        state = 176;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__16) {
          state = 175;
          match(TOKEN_T__16);
        }

        state = 178;
        _localctx.target = expression(0);
        state = 187;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 851968) != 0) {
          state = 184;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__15:
            state = 179;
            match(TOKEN_T__15);
            break;
          case TOKEN_T__17:
          case TOKEN_T__18:
            state = 181;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__17) {
              state = 180;
              match(TOKEN_T__17);
            }

            state = 183;
            match(TOKEN_T__18);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 186;
          _localctx.offset = expression(0);
        }

        break;
      case 11:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 189;
        swipeType();
        state = 194;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 15942918734336) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 20125469416876031) != 0) {
          state = 191;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 190;
            match(TOKEN_T__16);
          }

          state = 193;
          _localctx.target = expression(0);
        }

        state = 201;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__15:
          state = 196;
          match(TOKEN_T__15);
          break;
        case TOKEN_T__17:
        case TOKEN_T__18:
          state = 198;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__17) {
            state = 197;
            match(TOKEN_T__17);
          }

          state = 200;
          match(TOKEN_T__18);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 203;
        _localctx.offset = expression(0);
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
      state = 217;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__32:
      case TOKEN_T__173:
      case TOKEN_T__174:
      case TOKEN_T__175:
      case TOKEN_T__176:
      case TOKEN_T__177:
      case TOKEN_T__178:
        _localctx = ClickTypeSingleContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 208;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 207;
          match(TOKEN_T__32);
        }

        state = 210;
        click();
        break;
      case TOKEN_T__33:
        _localctx = ClickTypeDoubleContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 211;
        match(TOKEN_T__33);
        state = 212;
        click();
        break;
      case TOKEN_T__34:
        _localctx = ClickTypeLongContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 213;
        match(TOKEN_T__34);
        state = 214;
        click();
        break;
      case TOKEN_T__35:
        _localctx = ClickTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 215;
        match(TOKEN_T__35);
        state = 216;
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
      state = 232;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
      case 1:
        _localctx = SwipeTypeLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 219;
        swipe();
        state = 221;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 220;
          match(TOKEN_T__32);
        }

        break;
      case 2:
        _localctx = SwipeTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 223;
        swipe();
        state = 224;
        match(TOKEN_T__35);
        break;
      case 3:
        _localctx = SwipeTypeUpContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 226;
        swipe();
        state = 227;
        match(TOKEN_T__36);
        break;
      case 4:
        _localctx = SwipeTypeDownContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 229;
        swipe();
        state = 230;
        match(TOKEN_T__37);
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
      state = 250;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
      case 1:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 235;
        match(TOKEN_T__38);
        state = 236;
        expression(0);
        state = 237;
        match(TOKEN_T__39);
        break;
      case 2:
        _localctx = ExpressionTermContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 239;
        term();
        break;
      case 3:
        _localctx = ExpressionNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 240;
        match(TOKEN_T__40);
        state = 241;
        expression(16);
        break;
      case 4:
        _localctx = ExpressionNegateContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 242;
        match(TOKEN_T__41);
        state = 243;
        expression(15);
        break;
      case 5:
        _localctx = ExpressionExistsContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 244;
        match(TOKEN_T__42);
        state = 245;
        match(TOKEN_T__43);
        state = 247;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 35, context)) {
        case 1:
          state = 246;
          _localctx.not = match(TOKEN_T__40);
          break;
        }
        state = 249;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 306;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 40, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 304;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
          case 1:
            _localctx = ExpressionPowContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 252;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 253;
            match(TOKEN_T__47);
            state = 254;
            expression(13);
            break;
          case 2:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 255;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 256;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__48 || _la == TOKEN_T__49)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 257;
            expression(12);
            break;
          case 3:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 258;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 259;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__41 || _la == TOKEN_T__50)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 260;
            expression(11);
            break;
          case 4:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 261;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 262;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__51 || _la == TOKEN_T__52)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 263;
            expression(10);
            break;
          case 5:
            _localctx = ExpressionComparisonContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 264;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 265;
            _localctx.op = comparisonOp();
            state = 266;
            expression(9);
            break;
          case 6:
            _localctx = ExpressionStartsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 268;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }

            state = 269;
            match(TOKEN_T__53);
            state = 270;
            match(TOKEN_T__17);
            state = 272;
            expression(8);
            break;
          case 7:
            _localctx = ExpressionEndsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 273;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }

            state = 274;
            match(TOKEN_T__54);
            state = 275;
            match(TOKEN_T__17);
            state = 277;
            expression(7);
            break;
          case 8:
            _localctx = ExpressionContainsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 278;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }

            state = 279;
            match(TOKEN_T__55);
            state = 280;
            expression(6);
            break;
          case 9:
            _localctx = ExpressionMatchesContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 281;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 282;
            match(TOKEN_T__56);
            state = 283;
            expression(5);
            break;
          case 10:
            _localctx = ExpressionAndContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 284;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 285;
            match(TOKEN_T__57);
            state = 286;
            expression(3);
            break;
          case 11:
            _localctx = ExpressionOrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 287;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 288;
            match(TOKEN_T__58);
            state = 289;
            expression(2);
            break;
          case 12:
            _localctx = ExpressionExistsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 290;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 293;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
            case 1:
              state = 291;
              isAre();
              break;
            case 2:
              state = 292;
              isAreNot();
              break;
            }
            state = 295;
            _la = tokenStream.LA(1)!;
            if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 246290604621824) != 0)) {
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
            state = 297;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 300;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
            case 1:
              state = 298;
              isAre();
              break;
            case 2:
              state = 299;
              isAreNot();
              break;
            }
            state = 302;
            property();
            break;
          } 
        }
        state = 308;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 40, context);
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
      state = 406;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 67, context)) {
      case 1:
        _localctx = ComparisonOpEqContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 322;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 44, context)) {
        case 1:
          state = 309;
          match(TOKEN_T__59);
          break;
        case 2:
          state = 311;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 310;
            isAre();
          }

          state = 313;
          match(TOKEN_T__60);
          break;
        case 3:
          state = 315;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 314;
            isAre();
          }

          state = 317;
          match(TOKEN_T__61);
          state = 319;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 318;
            match(TOKEN_T__4);
          }

          break;
        case 4:
          state = 321;
          match(TOKEN_T__62);
          break;
        }
        break;
      case 2:
        _localctx = ComparisonOpNeqContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 338;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 48, context)) {
        case 1:
          state = 324;
          match(TOKEN_T__63);
          break;
        case 2:
          state = 325;
          match(TOKEN_T__64);
          break;
        case 3:
          state = 327;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 326;
            isAre();
          }

          state = 329;
          match(TOKEN_T__65);
          break;
        case 4:
          state = 332;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__43:
          case TOKEN_T__182:
          case TOKEN_T__183:
          case TOKEN_T__184:
          case TOKEN_T__185:
          case TOKEN_T__186:
            state = 330;
            isAreNot();
            break;
          case TOKEN_T__40:
            state = 331;
            match(TOKEN_T__40);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 334;
          match(TOKEN_T__61);
          state = 336;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 335;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 3:
        _localctx = ComparisonOpGteContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 357;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 53, context)) {
        case 1:
          state = 340;
          match(TOKEN_T__66);
          break;
        case 2:
          state = 342;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 341;
            isAre();
          }

          state = 344;
          match(TOKEN_T__67);
          break;
        case 3:
          state = 346;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 345;
            isAre();
          }

          state = 348;
          match(TOKEN_T__68);
          state = 349;
          match(TOKEN_T__69);
          state = 351;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__58) {
            state = 350;
            match(TOKEN_T__58);
          }

          state = 353;
          match(TOKEN_T__61);
          state = 355;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 354;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 4:
        _localctx = ComparisonOpGtContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 371;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
        case 1:
          state = 359;
          match(TOKEN_T__70);
          break;
        case 2:
          state = 361;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 360;
            isAre();
          }

          state = 363;
          match(TOKEN_T__67);
          break;
        case 3:
          state = 365;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 364;
            isAre();
          }

          state = 367;
          match(TOKEN_T__68);
          state = 369;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__69) {
            state = 368;
            match(TOKEN_T__69);
          }

          break;
        }
        break;
      case 5:
        _localctx = ComparisonOpLteContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 390;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 62, context)) {
        case 1:
          state = 373;
          match(TOKEN_T__71);
          break;
        case 2:
          state = 375;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 374;
            isAre();
          }

          state = 377;
          match(TOKEN_T__72);
          break;
        case 3:
          state = 379;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 378;
            isAre();
          }

          state = 381;
          match(TOKEN_T__73);
          state = 382;
          match(TOKEN_T__69);
          state = 384;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__58) {
            state = 383;
            match(TOKEN_T__58);
          }

          state = 386;
          match(TOKEN_T__61);
          state = 388;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 387;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 6:
        _localctx = ComparisonOpLtContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 404;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          state = 392;
          match(TOKEN_T__74);
          break;
        case 2:
          state = 394;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 393;
            isAre();
          }

          state = 396;
          match(TOKEN_T__75);
          break;
        case 3:
          state = 398;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 397;
            isAre();
          }

          state = 400;
          match(TOKEN_T__73);
          state = 402;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__69) {
            state = 401;
            match(TOKEN_T__69);
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
      state = 425;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
      case 1:
        _localctx = TermTermContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 408;
        match(TOKEN_T__38);
        state = 409;
        term();
        state = 410;
        match(TOKEN_T__39);
        break;
      case 2:
        _localctx = TermLiteralContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 412;
        literal();
        break;
      case 3:
        _localctx = TermNegateContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 413;
        match(TOKEN_T__41);
        state = 414;
        term();
        break;
      case 4:
        _localctx = TermFunctionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 415;
        function();
        break;
      case 5:
        _localctx = TermOrdinalContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 416;
        ordinal();
        state = 417;
        term();
        break;
      case 6:
        _localctx = TermWidgetContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 419;
        widget();
        break;
      case 7:
        _localctx = TermPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 420;
        property();
        state = 421;
        of();
        state = 422;
        term();
        break;
      case 8:
        _localctx = TermSymbolContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 424;
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
      state = 434;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__76:
      case TOKEN_T__77:
      case TOKEN_T__78:
        _localctx = BuiltinPropLengthContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 427;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & 7) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__163:
      case TOKEN_T__164:
      case TOKEN_T__165:
      case TOKEN_T__166:
        _localctx = BuiltinPropCharsContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 428;
        character();
        break;
      case TOKEN_T__171:
      case TOKEN_T__172:
        _localctx = BuiltinPropItemsContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 429;
        item();
        break;
      case TOKEN_T__167:
      case TOKEN_T__168:
        _localctx = BuiltinPropWordsContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 430;
        word();
        break;
      case TOKEN_T__169:
      case TOKEN_T__170:
        _localctx = BuiltinPropLinesContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 431;
        line();
        break;
      case TOKEN_T__8:
      case TOKEN_T__125:
      case TOKEN_T__126:
      case TOKEN_T__127:
      case TOKEN_T__128:
      case TOKEN_T__129:
      case TOKEN_T__130:
      case TOKEN_T__131:
      case TOKEN_T__132:
      case TOKEN_T__133:
      case TOKEN_T__134:
      case TOKEN_T__137:
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
      case TOKEN_T__150:
      case TOKEN_T__153:
      case TOKEN_T__154:
      case TOKEN_T__155:
      case TOKEN_T__156:
      case TOKEN_T__157:
      case TOKEN_T__158:
        _localctx = BuiltinPropWidgetTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 432;
        widgetType();
        break;
      case TOKEN_ID:
        _localctx = OtherPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 433;
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
      state = 485;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 78, context)) {
      case 1:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 436;
        match(TOKEN_T__79);
        state = 437;
        _localctx.date = term();
        state = 440;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__80) {
          state = 438;
          match(TOKEN_T__80);
          state = 439;
          _localctx.sourceFormat = term();
        }

        state = 442;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 443;
        _localctx.targetFormat = term();
        break;
      case 2:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 445;
        match(TOKEN_T__79);
        state = 446;
        _localctx.date = term();
        state = 447;
        match(TOKEN_T__80);
        state = 448;
        _localctx.sourceFormat = term();
        state = 451;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 71, context)) {
        case 1:
          state = 449;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 450;
          _localctx.targetFormat = term();
          break;
        }
        break;
      case 3:
        _localctx = FunctionNowContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 453;
        match(TOKEN_T__81);
        state = 456;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 72, context)) {
        case 1:
          state = 454;
          match(TOKEN_T__38);
          state = 455;
          match(TOKEN_T__39);
          break;
        }
        break;
      case 4:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 458;
        match(TOKEN_ID);
        state = 459;
        match(TOKEN_T__38);
        state = 470;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 4947802325504) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 20125469416876031) != 0) {
          state = 460;
          term();
          state = 467;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 74, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 462;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__82) {
                state = 461;
                match(TOKEN_T__82);
              }

              state = 464;
              term(); 
            }
            state = 469;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 74, context);
          }
        }

        state = 472;
        match(TOKEN_T__39);
        break;
      case 5:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 473;
        match(TOKEN_ID);
        state = 474;
        match(TOKEN_T__17);

        state = 475;
        term();
        state = 482;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 77, context);
        while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1 + 1) {
            state = 477;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__82) {
              state = 476;
              match(TOKEN_T__82);
            }

            state = 479;
            term(); 
          }
          state = 484;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 77, context);
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
      state = 487;
      match(TOKEN_T__16);
      state = 488;
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
      state = 499;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
        _localctx = LiteralCardinalContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 491;
        cardinalValue();
        break;
      case TOKEN_STRING_LITERAL:
        _localctx = LiteralStringContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 492;
        match(TOKEN_STRING_LITERAL);
        break;
      case TOKEN_REGEX_LITERAL:
        _localctx = LiteralRegexContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 493;
        match(TOKEN_REGEX_LITERAL);
        state = 495;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 79, context)) {
        case 1:
          state = 494;
          match(TOKEN_REGEX_MODIFIER);
          break;
        }
        break;
      case TOKEN_NUMBER_LITERAL:
        _localctx = LiteralNumberContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 497;
        match(TOKEN_NUMBER_LITERAL);
        break;
      case TOKEN_BOOL_LITERAL:
        _localctx = LiteralBoolContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 498;
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
      state = 501;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 84)) & ~0x3f) == 0 && ((1 << (_la - 84)) & 2047) != 0)) {
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
      state = 503;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 95)) & ~0x3f) == 0 && ((1 << (_la - 95)) & 2047) != 0)) {
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
      state = 559;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 90, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 508;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 505;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 510;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 511;
        widgetNameModifier();
        state = 512;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 517;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 82, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 513;
            match(TOKEN_T__58);
            state = 514;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal); 
          }
          state = 519;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 82, context);
        }
        state = 521;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 83, context)) {
        case 1:
          state = 520;
          widgetType();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 526;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 523;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 528;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 529;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 534;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__58) {
          state = 530;
          match(TOKEN_T__58);
          state = 531;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 536;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 537;
        widgetType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 542;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 539;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 544;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 546;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__105 || _la == TOKEN_T__106) {
          state = 545;
          widgetNameModifier();
        }

        state = 548;
        widgetType();
        state = 557;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 89, context)) {
        case 1:
          state = 549;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 554;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 88, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 550;
              match(TOKEN_T__58);
              state = 551;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal); 
            }
            state = 556;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 88, context);
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
      state = 566;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 91, context)) {
      case 1:
        _localctx = WidgetNameExactlyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 561;
        match(TOKEN_T__105);
        break;
      case 2:
        _localctx = WidgetNameCaseSensitiveContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 562;
        match(TOKEN_T__106);
        state = 563;
        match(TOKEN_T__107);
        break;
      case 3:
        _localctx = WidgetNameCaseInsensitiveContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 564;
        match(TOKEN_T__106);
        state = 565;
        match(TOKEN_T__108);
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
      state = 579;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 568;
        widgetReferencePosition();
        state = 569;
        match(TOKEN_T__38);
        state = 570;
        term();
        state = 571;
        match(TOKEN_T__39);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 573;
        widgetReferencePosition();
        state = 574;
        match(TOKEN_T__109);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 576;
        widgetReferencePosition();
        state = 577;
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
      state = 642;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
      case 1:
        _localctx = WidgetReferenceEdgeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 581;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 582;
        singleDirection();
        state = 584;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 583;
          match(TOKEN_T__110);
        }

        state = 586;
        match(TOKEN_T__111);
        state = 588;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 587;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 2:
        _localctx = WidgetReferenceCornerContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 590;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 591;
        doubleDirection();
        state = 593;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 592;
          match(TOKEN_T__113);
        }

        state = 595;
        match(TOKEN_T__111);
        state = 597;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 596;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 3:
        _localctx = WidgetReferenceHalfContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 599;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 600;
        singleDirection();
        state = 601;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__114 || _la == TOKEN_T__115)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 602;
        match(TOKEN_T__111);
        state = 604;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 603;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 4:
        _localctx = WidgetReferenceFractionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 606;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 607;
        ordinal();
        state = 608;
        singleDirection();
        state = 612;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__96:
          state = 609;
          _localctx.f = match(TOKEN_T__96);
          break;
        case TOKEN_T__116:
          state = 610;
          _localctx.f = match(TOKEN_T__116);
          break;
        case TOKEN_T__101:
          state = 611;
          _localctx.f = match(TOKEN_T__101);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 614;
        match(TOKEN_T__111);
        state = 616;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 615;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 5:
        _localctx = WidgetReferencePercentageContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 618;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 619;
        singleDirection();
        state = 620;
        literal();
        state = 621;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__117 || _la == TOKEN_T__118)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 622;
        match(TOKEN_T__111);
        state = 624;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 623;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 6:
        _localctx = WidgetReferenceInsideContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 626;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__119 || _la == TOKEN_T__120)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 628;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 627;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 7:
        _localctx = WidgetReferenceToContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 637;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__121:
          state = 630;
          _localctx.below = match(TOKEN_T__121);
          break;
        case TOKEN_T__122:
          state = 631;
          _localctx.above = match(TOKEN_T__122);
          break;
        case TOKEN_T__4:
          state = 632;
          match(TOKEN_T__4);
          state = 635;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
          case 1:
            state = 633;
            singleDirection();
            break;
          case 2:
            state = 634;
            doubleDirection();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 640;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__111) {
          state = 639;
          match(TOKEN_T__111);
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
      state = 651;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 644;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 645;
        match(TOKEN_T__38);
        state = 646;
        expression(0);
        state = 647;
        match(TOKEN_T__39);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 649;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 650;
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
      state = 693;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 117, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 653;
        widgetIdent();
        state = 654;
        widgetReference();
        state = 656;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 655;
          match(TOKEN_T__57);
        }

        state = 658;
        widgetReference();
        state = 660;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 659;
          match(TOKEN_T__57);
        }

        state = 662;
        widgetReference();
        state = 664;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 109, context)) {
        case 1:
          state = 663;
          match(TOKEN_T__57);
          break;
        }
        state = 667;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 110, context)) {
        case 1:
          state = 666;
          widgetWhere();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 669;
        widgetIdent();
        state = 670;
        widgetReference();
        state = 672;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 671;
          match(TOKEN_T__57);
        }

        state = 674;
        widgetReference();
        state = 676;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 112, context)) {
        case 1:
          state = 675;
          match(TOKEN_T__57);
          break;
        }
        state = 679;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 113, context)) {
        case 1:
          state = 678;
          widgetWhere();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 681;
        widgetIdent();
        state = 682;
        widgetReference();
        state = 684;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 114, context)) {
        case 1:
          state = 683;
          match(TOKEN_T__57);
          break;
        }
        state = 687;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 115, context)) {
        case 1:
          state = 686;
          widgetWhere();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 689;
        widgetIdent();
        state = 691;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 116, context)) {
        case 1:
          state = 690;
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
      state = 721;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__125:
      case TOKEN_T__126:
        _localctx = WidgetTypeWidgetContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 695;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__125 || _la == TOKEN_T__126)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__127:
      case TOKEN_T__128:
      case TOKEN_T__129:
      case TOKEN_T__130:
        _localctx = WidgetTypeButtonContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 696;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 15) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__131:
      case TOKEN_T__132:
        _localctx = WidgetTypeLinkContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 697;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__131 || _la == TOKEN_T__132)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__133:
      case TOKEN_T__134:
      case TOKEN_T__137:
      case TOKEN_T__139:
      case TOKEN_T__140:
      case TOKEN_T__141:
      case TOKEN_T__142:
      case TOKEN_T__143:
      case TOKEN_T__144:
        _localctx = WidgetTypeTextFieldContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 708;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__133:
        case TOKEN_T__134:
          state = 698;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__133 || _la == TOKEN_T__134)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 699;
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
          state = 700;
          match(TOKEN_T__137);
          state = 701;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__133 || _la == TOKEN_T__138)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__139:
          state = 702;
          match(TOKEN_T__139);
          break;
        case TOKEN_T__140:
          state = 703;
          match(TOKEN_T__140);
          break;
        case TOKEN_T__141:
          state = 704;
          match(TOKEN_T__141);
          break;
        case TOKEN_T__142:
          state = 705;
          match(TOKEN_T__142);
          break;
        case TOKEN_T__143:
          state = 706;
          match(TOKEN_T__143);
          break;
        case TOKEN_T__144:
          state = 707;
          match(TOKEN_T__144);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__145:
      case TOKEN_T__146:
        _localctx = WidgetTypeSliderContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 710;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__145 || _la == TOKEN_T__146)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__147:
      case TOKEN_T__148:
        _localctx = WidgetTypeImageContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 711;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__147 || _la == TOKEN_T__148)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__149:
      case TOKEN_T__150:
        _localctx = WidgetTypeListContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 712;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__149 || _la == TOKEN_T__150)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__8:
      case TOKEN_T__153:
      case TOKEN_T__154:
        _localctx = WidgetTypeCheckBoxContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 717;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__8:
          state = 713;
          match(TOKEN_T__8);
          state = 714;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__151 || _la == TOKEN_T__152)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__153:
          state = 715;
          match(TOKEN_T__153);
          break;
        case TOKEN_T__154:
          state = 716;
          match(TOKEN_T__154);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__155:
      case TOKEN_T__156:
        _localctx = WidgetTypeSwitchContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 719;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__155 || _la == TOKEN_T__156)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__157:
      case TOKEN_T__158:
        _localctx = WidgetTypeHeaderContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 720;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__157 || _la == TOKEN_T__158)) {
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
      state = 727;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__32:
        _localctx = SingleDirectionLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 723;
        match(TOKEN_T__32);
        break;
      case TOKEN_T__35:
        _localctx = SingleDirectionRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 724;
        match(TOKEN_T__35);
        break;
      case TOKEN_T__159:
      case TOKEN_T__160:
        _localctx = SingleDirectionTopContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 725;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__161:
      case TOKEN_T__162:
        _localctx = SingleDirectionBottomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 726;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
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
      state = 765;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 130, context)) {
      case 1:
        _localctx = DoubleDirectionTopLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 736;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 729;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 731;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 730;
            match(TOKEN_T__41);
          }

          state = 733;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 734;
          match(TOKEN_T__32);
          state = 735;
          match(TOKEN_T__159);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        _localctx = DoubleDirectionTopRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 745;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 738;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 740;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 739;
            match(TOKEN_T__41);
          }

          state = 742;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 743;
          match(TOKEN_T__35);
          state = 744;
          match(TOKEN_T__159);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 3:
        _localctx = DoubleDirectionBottomLeftContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 754;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 747;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 749;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 748;
            match(TOKEN_T__41);
          }

          state = 751;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 752;
          match(TOKEN_T__32);
          state = 753;
          match(TOKEN_T__161);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = DoubleDirectionBottomRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 763;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 756;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 758;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 757;
            match(TOKEN_T__41);
          }

          state = 760;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 761;
          match(TOKEN_T__35);
          state = 762;
          match(TOKEN_T__161);
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
      state = 767;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 164)) & ~0x3f) == 0 && ((1 << (_la - 164)) & 15) != 0)) {
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
      state = 769;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__167 || _la == TOKEN_T__168)) {
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
      state = 771;
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

  ItemContext item() {
    dynamic _localctx = ItemContext(context, state);
    enterRule(_localctx, 54, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 773;
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

  OfContext of() {
    dynamic _localctx = OfContext(context, state);
    enterRule(_localctx, 56, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 775;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__25 || _la == TOKEN_T__80 || _la == TOKEN_T__111)) {
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
      state = 777;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 174)) & ~0x3f) == 0 && ((1 << (_la - 174)) & 63) != 0)) {
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
      state = 779;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 180)) & ~0x3f) == 0 && ((1 << (_la - 180)) & 7) != 0)) {
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
      state = 781;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183)) {
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
      state = 792;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__43:
        enterOuterAlt(_localctx, 1);
        state = 783;
        match(TOKEN_T__43);
        state = 784;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__184:
        enterOuterAlt(_localctx, 2);
        state = 785;
        match(TOKEN_T__184);
        break;
      case TOKEN_T__182:
        enterOuterAlt(_localctx, 3);
        state = 786;
        match(TOKEN_T__182);
        state = 787;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__185:
        enterOuterAlt(_localctx, 4);
        state = 788;
        match(TOKEN_T__185);
        break;
      case TOKEN_T__183:
        enterOuterAlt(_localctx, 5);
        state = 789;
        match(TOKEN_T__183);
        state = 790;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__186:
        enterOuterAlt(_localctx, 6);
        state = 791;
        match(TOKEN_T__186);
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
      4,1,202,795,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
      6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
      2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,
      20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,
      7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,1,0,1,0,3,0,
      69,8,0,1,0,1,0,5,0,73,8,0,10,0,12,0,76,9,0,1,0,1,0,3,0,80,8,0,3,0,
      82,8,0,1,0,5,0,85,8,0,10,0,12,0,88,9,0,1,0,1,0,1,1,3,1,93,8,1,1,1,
      1,1,1,1,3,1,98,8,1,1,1,3,1,101,8,1,1,1,3,1,104,8,1,1,2,1,2,1,2,3,2,
      109,8,2,1,2,1,2,3,2,113,8,2,1,3,1,3,3,3,117,8,3,1,3,1,3,1,3,1,3,3,
      3,123,8,3,1,3,1,3,1,3,3,3,128,8,3,1,3,1,3,1,3,3,3,133,8,3,1,3,3,3,
      136,8,3,1,3,3,3,139,8,3,1,3,1,3,3,3,143,8,3,1,3,3,3,146,8,3,1,3,1,
      3,3,3,150,8,3,1,3,3,3,153,8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,3,1,3,3,3,170,8,3,1,3,1,3,1,3,1,3,1,3,3,3,177,8,
      3,1,3,1,3,1,3,3,3,182,8,3,1,3,3,3,185,8,3,1,3,3,3,188,8,3,1,3,1,3,
      3,3,192,8,3,1,3,3,3,195,8,3,1,3,1,3,3,3,199,8,3,1,3,3,3,202,8,3,1,
      3,1,3,3,3,206,8,3,1,4,3,4,209,8,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,
      218,8,4,1,5,1,5,3,5,222,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,
      5,233,8,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,
      248,8,6,1,6,3,6,251,8,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,
      1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,294,8,
      6,1,6,1,6,1,6,1,6,1,6,3,6,301,8,6,1,6,1,6,5,6,305,8,6,10,6,12,6,308,
      9,6,1,7,1,7,3,7,312,8,7,1,7,1,7,3,7,316,8,7,1,7,1,7,3,7,320,8,7,1,
      7,3,7,323,8,7,1,7,1,7,1,7,3,7,328,8,7,1,7,1,7,1,7,3,7,333,8,7,1,7,
      1,7,3,7,337,8,7,3,7,339,8,7,1,7,1,7,3,7,343,8,7,1,7,1,7,3,7,347,8,
      7,1,7,1,7,1,7,3,7,352,8,7,1,7,1,7,3,7,356,8,7,3,7,358,8,7,1,7,1,7,
      3,7,362,8,7,1,7,1,7,3,7,366,8,7,1,7,1,7,3,7,370,8,7,3,7,372,8,7,1,
      7,1,7,3,7,376,8,7,1,7,1,7,3,7,380,8,7,1,7,1,7,1,7,3,7,385,8,7,1,7,
      1,7,3,7,389,8,7,3,7,391,8,7,1,7,1,7,3,7,395,8,7,1,7,1,7,3,7,399,8,
      7,1,7,1,7,3,7,403,8,7,3,7,405,8,7,3,7,407,8,7,1,8,1,8,1,8,1,8,1,8,
      1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,426,8,8,1,9,1,
      9,1,9,1,9,1,9,1,9,1,9,3,9,435,8,9,1,10,1,10,1,10,1,10,3,10,441,8,10,
      1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,3,10,452,8,10,1,10,1,
      10,1,10,3,10,457,8,10,1,10,1,10,1,10,1,10,3,10,463,8,10,1,10,5,10,
      466,8,10,10,10,12,10,469,9,10,3,10,471,8,10,1,10,1,10,1,10,1,10,1,
      10,3,10,478,8,10,1,10,5,10,481,8,10,10,10,12,10,484,9,10,3,10,486,
      8,10,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,3,12,496,8,12,1,12,1,
      12,3,12,500,8,12,1,13,1,13,1,14,1,14,1,15,5,15,507,8,15,10,15,12,15,
      510,9,15,1,15,1,15,1,15,1,15,5,15,516,8,15,10,15,12,15,519,9,15,1,
      15,3,15,522,8,15,1,15,5,15,525,8,15,10,15,12,15,528,9,15,1,15,1,15,
      1,15,5,15,533,8,15,10,15,12,15,536,9,15,1,15,1,15,1,15,5,15,541,8,
      15,10,15,12,15,544,9,15,1,15,3,15,547,8,15,1,15,1,15,1,15,1,15,5,15,
      553,8,15,10,15,12,15,556,9,15,3,15,558,8,15,3,15,560,8,15,1,16,1,16,
      1,16,1,16,1,16,3,16,567,8,16,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,
      17,1,17,1,17,1,17,3,17,580,8,17,1,18,1,18,1,18,3,18,585,8,18,1,18,
      1,18,3,18,589,8,18,1,18,1,18,1,18,3,18,594,8,18,1,18,1,18,3,18,598,
      8,18,1,18,1,18,1,18,1,18,1,18,3,18,605,8,18,1,18,1,18,1,18,1,18,1,
      18,1,18,3,18,613,8,18,1,18,1,18,3,18,617,8,18,1,18,1,18,1,18,1,18,
      1,18,1,18,3,18,625,8,18,1,18,1,18,3,18,629,8,18,1,18,1,18,1,18,1,18,
      1,18,3,18,636,8,18,3,18,638,8,18,1,18,3,18,641,8,18,3,18,643,8,18,
      1,19,1,19,1,19,1,19,1,19,1,19,1,19,3,19,652,8,19,1,20,1,20,1,20,3,
      20,657,8,20,1,20,1,20,3,20,661,8,20,1,20,1,20,3,20,665,8,20,1,20,3,
      20,668,8,20,1,20,1,20,1,20,3,20,673,8,20,1,20,1,20,3,20,677,8,20,1,
      20,3,20,680,8,20,1,20,1,20,1,20,3,20,685,8,20,1,20,3,20,688,8,20,1,
      20,1,20,3,20,692,8,20,3,20,694,8,20,1,21,1,21,1,21,1,21,1,21,1,21,
      1,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,709,8,21,1,21,1,21,1,21,1,
      21,1,21,1,21,1,21,3,21,718,8,21,1,21,1,21,3,21,722,8,21,1,22,1,22,
      1,22,1,22,3,22,728,8,22,1,23,1,23,3,23,732,8,23,1,23,1,23,1,23,3,23,
      737,8,23,1,23,1,23,3,23,741,8,23,1,23,1,23,1,23,3,23,746,8,23,1,23,
      1,23,3,23,750,8,23,1,23,1,23,1,23,3,23,755,8,23,1,23,1,23,3,23,759,
      8,23,1,23,1,23,1,23,3,23,764,8,23,3,23,766,8,23,1,24,1,24,1,25,1,25,
      1,26,1,26,1,27,1,27,1,28,1,28,1,29,1,29,1,30,1,30,1,31,1,31,1,32,1,
      32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,32,793,8,32,1,32,2,467,482,
      1,12,33,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,
      42,44,46,48,50,52,54,56,58,60,62,64,0,40,1,0,8,12,1,0,20,21,2,0,5,
      5,23,23,1,0,24,25,1,0,26,27,1,0,30,32,1,0,49,50,2,0,42,42,51,51,1,
      0,52,53,1,0,45,47,1,0,77,79,1,0,84,94,1,0,95,105,2,0,16,17,26,26,1,
      0,115,116,1,0,118,119,2,0,26,26,120,121,2,0,18,18,124,125,1,0,126,
      127,1,0,128,131,1,0,132,133,1,0,134,135,1,0,136,137,2,0,134,134,139,
      139,1,0,146,147,1,0,148,149,1,0,150,151,1,0,152,153,1,0,156,157,1,
      0,158,159,1,0,160,161,1,0,162,163,1,0,164,167,1,0,168,169,1,0,170,
      171,1,0,172,173,3,0,26,26,81,81,112,112,1,0,174,179,1,0,180,182,2,
      0,44,44,183,184,986,0,74,1,0,0,0,2,103,1,0,0,0,4,112,1,0,0,0,6,205,
      1,0,0,0,8,217,1,0,0,0,10,232,1,0,0,0,12,250,1,0,0,0,14,406,1,0,0,0,
      16,425,1,0,0,0,18,434,1,0,0,0,20,485,1,0,0,0,22,487,1,0,0,0,24,499,
      1,0,0,0,26,501,1,0,0,0,28,503,1,0,0,0,30,559,1,0,0,0,32,566,1,0,0,
      0,34,579,1,0,0,0,36,642,1,0,0,0,38,651,1,0,0,0,40,693,1,0,0,0,42,721,
      1,0,0,0,44,727,1,0,0,0,46,765,1,0,0,0,48,767,1,0,0,0,50,769,1,0,0,
      0,52,771,1,0,0,0,54,773,1,0,0,0,56,775,1,0,0,0,58,777,1,0,0,0,60,779,
      1,0,0,0,62,781,1,0,0,0,64,792,1,0,0,0,66,68,3,2,1,0,67,69,5,1,0,0,
      68,67,1,0,0,0,68,69,1,0,0,0,69,70,1,0,0,0,70,71,5,200,0,0,71,73,1,
      0,0,0,72,66,1,0,0,0,73,76,1,0,0,0,74,72,1,0,0,0,74,75,1,0,0,0,75,81,
      1,0,0,0,76,74,1,0,0,0,77,79,3,2,1,0,78,80,5,1,0,0,79,78,1,0,0,0,79,
      80,1,0,0,0,80,82,1,0,0,0,81,77,1,0,0,0,81,82,1,0,0,0,82,86,1,0,0,0,
      83,85,5,200,0,0,84,83,1,0,0,0,85,88,1,0,0,0,86,84,1,0,0,0,86,87,1,
      0,0,0,87,89,1,0,0,0,88,86,1,0,0,0,89,90,5,0,0,1,90,1,1,0,0,0,91,93,
      3,4,2,0,92,91,1,0,0,0,92,93,1,0,0,0,93,94,1,0,0,0,94,97,3,6,3,0,95,
      96,5,2,0,0,96,98,3,12,6,0,97,95,1,0,0,0,97,98,1,0,0,0,98,104,1,0,0,
      0,99,101,3,4,2,0,100,99,1,0,0,0,100,101,1,0,0,0,101,102,1,0,0,0,102,
      104,3,12,6,0,103,92,1,0,0,0,103,100,1,0,0,0,104,3,1,0,0,0,105,113,
      5,3,0,0,106,108,5,4,0,0,107,109,5,5,0,0,108,107,1,0,0,0,108,109,1,
      0,0,0,109,113,1,0,0,0,110,113,5,6,0,0,111,113,5,7,0,0,112,105,1,0,
      0,0,112,106,1,0,0,0,112,110,1,0,0,0,112,111,1,0,0,0,113,5,1,0,0,0,
      114,116,7,0,0,0,115,117,5,13,0,0,116,115,1,0,0,0,116,117,1,0,0,0,117,
      118,1,0,0,0,118,206,3,12,6,0,119,123,5,14,0,0,120,121,5,15,0,0,121,
      123,5,16,0,0,122,119,1,0,0,0,122,120,1,0,0,0,123,124,1,0,0,0,124,206,
      3,12,6,0,125,127,3,8,4,0,126,128,5,17,0,0,127,126,1,0,0,0,127,128,
      1,0,0,0,128,129,1,0,0,0,129,138,3,12,6,0,130,136,5,16,0,0,131,133,
      5,18,0,0,132,131,1,0,0,0,132,133,1,0,0,0,133,134,1,0,0,0,134,136,5,
      19,0,0,135,130,1,0,0,0,135,132,1,0,0,0,136,137,1,0,0,0,137,139,3,12,
      6,0,138,135,1,0,0,0,138,139,1,0,0,0,139,206,1,0,0,0,140,145,3,8,4,
      0,141,143,5,17,0,0,142,141,1,0,0,0,142,143,1,0,0,0,143,144,1,0,0,0,
      144,146,3,12,6,0,145,142,1,0,0,0,145,146,1,0,0,0,146,152,1,0,0,0,147,
      153,5,16,0,0,148,150,5,18,0,0,149,148,1,0,0,0,149,150,1,0,0,0,150,
      151,1,0,0,0,151,153,5,19,0,0,152,147,1,0,0,0,152,149,1,0,0,0,153,154,
      1,0,0,0,154,155,3,12,6,0,155,206,1,0,0,0,156,157,7,1,0,0,157,206,3,
      12,6,0,158,159,5,22,0,0,159,160,5,195,0,0,160,161,7,2,0,0,161,206,
      3,12,6,0,162,163,7,3,0,0,163,164,3,12,6,0,164,165,7,4,0,0,165,166,
      5,195,0,0,166,206,1,0,0,0,167,169,5,28,0,0,168,170,5,29,0,0,169,168,
      1,0,0,0,169,170,1,0,0,0,170,171,1,0,0,0,171,206,3,12,6,0,172,173,7,
      5,0,0,173,206,3,12,6,0,174,176,3,10,5,0,175,177,5,17,0,0,176,175,1,
      0,0,0,176,177,1,0,0,0,177,178,1,0,0,0,178,187,3,12,6,0,179,185,5,16,
      0,0,180,182,5,18,0,0,181,180,1,0,0,0,181,182,1,0,0,0,182,183,1,0,0,
      0,183,185,5,19,0,0,184,179,1,0,0,0,184,181,1,0,0,0,185,186,1,0,0,0,
      186,188,3,12,6,0,187,184,1,0,0,0,187,188,1,0,0,0,188,206,1,0,0,0,189,
      194,3,10,5,0,190,192,5,17,0,0,191,190,1,0,0,0,191,192,1,0,0,0,192,
      193,1,0,0,0,193,195,3,12,6,0,194,191,1,0,0,0,194,195,1,0,0,0,195,201,
      1,0,0,0,196,202,5,16,0,0,197,199,5,18,0,0,198,197,1,0,0,0,198,199,
      1,0,0,0,199,200,1,0,0,0,200,202,5,19,0,0,201,196,1,0,0,0,201,198,1,
      0,0,0,202,203,1,0,0,0,203,204,3,12,6,0,204,206,1,0,0,0,205,114,1,0,
      0,0,205,122,1,0,0,0,205,125,1,0,0,0,205,140,1,0,0,0,205,156,1,0,0,
      0,205,158,1,0,0,0,205,162,1,0,0,0,205,167,1,0,0,0,205,172,1,0,0,0,
      205,174,1,0,0,0,205,189,1,0,0,0,206,7,1,0,0,0,207,209,5,33,0,0,208,
      207,1,0,0,0,208,209,1,0,0,0,209,210,1,0,0,0,210,218,3,58,29,0,211,
      212,5,34,0,0,212,218,3,58,29,0,213,214,5,35,0,0,214,218,3,58,29,0,
      215,216,5,36,0,0,216,218,3,58,29,0,217,208,1,0,0,0,217,211,1,0,0,0,
      217,213,1,0,0,0,217,215,1,0,0,0,218,9,1,0,0,0,219,221,3,60,30,0,220,
      222,5,33,0,0,221,220,1,0,0,0,221,222,1,0,0,0,222,233,1,0,0,0,223,224,
      3,60,30,0,224,225,5,36,0,0,225,233,1,0,0,0,226,227,3,60,30,0,227,228,
      5,37,0,0,228,233,1,0,0,0,229,230,3,60,30,0,230,231,5,38,0,0,231,233,
      1,0,0,0,232,219,1,0,0,0,232,223,1,0,0,0,232,226,1,0,0,0,232,229,1,
      0,0,0,233,11,1,0,0,0,234,235,6,6,-1,0,235,236,5,39,0,0,236,237,3,12,
      6,0,237,238,5,40,0,0,238,251,1,0,0,0,239,251,3,16,8,0,240,241,5,41,
      0,0,241,251,3,12,6,16,242,243,5,42,0,0,243,251,3,12,6,15,244,245,5,
      43,0,0,245,247,5,44,0,0,246,248,5,41,0,0,247,246,1,0,0,0,247,248,1,
      0,0,0,248,249,1,0,0,0,249,251,3,12,6,14,250,234,1,0,0,0,250,239,1,
      0,0,0,250,240,1,0,0,0,250,242,1,0,0,0,250,244,1,0,0,0,251,306,1,0,
      0,0,252,253,10,12,0,0,253,254,5,48,0,0,254,305,3,12,6,13,255,256,10,
      11,0,0,256,257,7,6,0,0,257,305,3,12,6,12,258,259,10,10,0,0,259,260,
      7,7,0,0,260,305,3,12,6,11,261,262,10,9,0,0,262,263,7,8,0,0,263,305,
      3,12,6,10,264,265,10,8,0,0,265,266,3,14,7,0,266,267,3,12,6,9,267,305,
      1,0,0,0,268,269,10,7,0,0,269,270,5,54,0,0,270,271,5,18,0,0,271,272,
      1,0,0,0,272,305,3,12,6,8,273,274,10,6,0,0,274,275,5,55,0,0,275,276,
      5,18,0,0,276,277,1,0,0,0,277,305,3,12,6,7,278,279,10,5,0,0,279,280,
      5,56,0,0,280,305,3,12,6,6,281,282,10,4,0,0,282,283,5,57,0,0,283,305,
      3,12,6,5,284,285,10,2,0,0,285,286,5,58,0,0,286,305,3,12,6,3,287,288,
      10,1,0,0,288,289,5,59,0,0,289,305,3,12,6,2,290,293,10,13,0,0,291,294,
      3,62,31,0,292,294,3,64,32,0,293,291,1,0,0,0,293,292,1,0,0,0,294,295,
      1,0,0,0,295,296,7,9,0,0,296,305,1,0,0,0,297,300,10,3,0,0,298,301,3,
      62,31,0,299,301,3,64,32,0,300,298,1,0,0,0,300,299,1,0,0,0,301,302,
      1,0,0,0,302,303,3,18,9,0,303,305,1,0,0,0,304,252,1,0,0,0,304,255,1,
      0,0,0,304,258,1,0,0,0,304,261,1,0,0,0,304,264,1,0,0,0,304,268,1,0,
      0,0,304,273,1,0,0,0,304,278,1,0,0,0,304,281,1,0,0,0,304,284,1,0,0,
      0,304,287,1,0,0,0,304,290,1,0,0,0,304,297,1,0,0,0,305,308,1,0,0,0,
      306,304,1,0,0,0,306,307,1,0,0,0,307,13,1,0,0,0,308,306,1,0,0,0,309,
      323,5,60,0,0,310,312,3,62,31,0,311,310,1,0,0,0,311,312,1,0,0,0,312,
      313,1,0,0,0,313,323,5,61,0,0,314,316,3,62,31,0,315,314,1,0,0,0,315,
      316,1,0,0,0,316,317,1,0,0,0,317,319,5,62,0,0,318,320,5,5,0,0,319,318,
      1,0,0,0,319,320,1,0,0,0,320,323,1,0,0,0,321,323,5,63,0,0,322,309,1,
      0,0,0,322,311,1,0,0,0,322,315,1,0,0,0,322,321,1,0,0,0,323,407,1,0,
      0,0,324,339,5,64,0,0,325,339,5,65,0,0,326,328,3,62,31,0,327,326,1,
      0,0,0,327,328,1,0,0,0,328,329,1,0,0,0,329,339,5,66,0,0,330,333,3,64,
      32,0,331,333,5,41,0,0,332,330,1,0,0,0,332,331,1,0,0,0,333,334,1,0,
      0,0,334,336,5,62,0,0,335,337,5,5,0,0,336,335,1,0,0,0,336,337,1,0,0,
      0,337,339,1,0,0,0,338,324,1,0,0,0,338,325,1,0,0,0,338,327,1,0,0,0,
      338,332,1,0,0,0,339,407,1,0,0,0,340,358,5,67,0,0,341,343,3,62,31,0,
      342,341,1,0,0,0,342,343,1,0,0,0,343,344,1,0,0,0,344,358,5,68,0,0,345,
      347,3,62,31,0,346,345,1,0,0,0,346,347,1,0,0,0,347,348,1,0,0,0,348,
      349,5,69,0,0,349,351,5,70,0,0,350,352,5,59,0,0,351,350,1,0,0,0,351,
      352,1,0,0,0,352,353,1,0,0,0,353,355,5,62,0,0,354,356,5,5,0,0,355,354,
      1,0,0,0,355,356,1,0,0,0,356,358,1,0,0,0,357,340,1,0,0,0,357,342,1,
      0,0,0,357,346,1,0,0,0,358,407,1,0,0,0,359,372,5,71,0,0,360,362,3,62,
      31,0,361,360,1,0,0,0,361,362,1,0,0,0,362,363,1,0,0,0,363,372,5,68,
      0,0,364,366,3,62,31,0,365,364,1,0,0,0,365,366,1,0,0,0,366,367,1,0,
      0,0,367,369,5,69,0,0,368,370,5,70,0,0,369,368,1,0,0,0,369,370,1,0,
      0,0,370,372,1,0,0,0,371,359,1,0,0,0,371,361,1,0,0,0,371,365,1,0,0,
      0,372,407,1,0,0,0,373,391,5,72,0,0,374,376,3,62,31,0,375,374,1,0,0,
      0,375,376,1,0,0,0,376,377,1,0,0,0,377,391,5,73,0,0,378,380,3,62,31,
      0,379,378,1,0,0,0,379,380,1,0,0,0,380,381,1,0,0,0,381,382,5,74,0,0,
      382,384,5,70,0,0,383,385,5,59,0,0,384,383,1,0,0,0,384,385,1,0,0,0,
      385,386,1,0,0,0,386,388,5,62,0,0,387,389,5,5,0,0,388,387,1,0,0,0,388,
      389,1,0,0,0,389,391,1,0,0,0,390,373,1,0,0,0,390,375,1,0,0,0,390,379,
      1,0,0,0,391,407,1,0,0,0,392,405,5,75,0,0,393,395,3,62,31,0,394,393,
      1,0,0,0,394,395,1,0,0,0,395,396,1,0,0,0,396,405,5,76,0,0,397,399,3,
      62,31,0,398,397,1,0,0,0,398,399,1,0,0,0,399,400,1,0,0,0,400,402,5,
      74,0,0,401,403,5,70,0,0,402,401,1,0,0,0,402,403,1,0,0,0,403,405,1,
      0,0,0,404,392,1,0,0,0,404,394,1,0,0,0,404,398,1,0,0,0,405,407,1,0,
      0,0,406,322,1,0,0,0,406,338,1,0,0,0,406,357,1,0,0,0,406,371,1,0,0,
      0,406,390,1,0,0,0,406,404,1,0,0,0,407,15,1,0,0,0,408,409,5,39,0,0,
      409,410,3,16,8,0,410,411,5,40,0,0,411,426,1,0,0,0,412,426,3,24,12,
      0,413,414,5,42,0,0,414,426,3,16,8,0,415,426,3,20,10,0,416,417,3,28,
      14,0,417,418,3,16,8,0,418,426,1,0,0,0,419,426,3,40,20,0,420,421,3,
      18,9,0,421,422,3,56,28,0,422,423,3,16,8,0,423,426,1,0,0,0,424,426,
      5,195,0,0,425,408,1,0,0,0,425,412,1,0,0,0,425,413,1,0,0,0,425,415,
      1,0,0,0,425,416,1,0,0,0,425,419,1,0,0,0,425,420,1,0,0,0,425,424,1,
      0,0,0,426,17,1,0,0,0,427,435,7,10,0,0,428,435,3,48,24,0,429,435,3,
      54,27,0,430,435,3,50,25,0,431,435,3,52,26,0,432,435,3,42,21,0,433,
      435,5,195,0,0,434,427,1,0,0,0,434,428,1,0,0,0,434,429,1,0,0,0,434,
      430,1,0,0,0,434,431,1,0,0,0,434,432,1,0,0,0,434,433,1,0,0,0,435,19,
      1,0,0,0,436,437,5,80,0,0,437,440,3,16,8,0,438,439,5,81,0,0,439,441,
      3,16,8,0,440,438,1,0,0,0,440,441,1,0,0,0,441,442,1,0,0,0,442,443,7,
      2,0,0,443,444,3,16,8,0,444,486,1,0,0,0,445,446,5,80,0,0,446,447,3,
      16,8,0,447,448,5,81,0,0,448,451,3,16,8,0,449,450,7,2,0,0,450,452,3,
      16,8,0,451,449,1,0,0,0,451,452,1,0,0,0,452,486,1,0,0,0,453,456,5,82,
      0,0,454,455,5,39,0,0,455,457,5,40,0,0,456,454,1,0,0,0,456,457,1,0,
      0,0,457,486,1,0,0,0,458,459,5,195,0,0,459,470,5,39,0,0,460,467,3,16,
      8,0,461,463,5,83,0,0,462,461,1,0,0,0,462,463,1,0,0,0,463,464,1,0,0,
      0,464,466,3,16,8,0,465,462,1,0,0,0,466,469,1,0,0,0,467,468,1,0,0,0,
      467,465,1,0,0,0,468,471,1,0,0,0,469,467,1,0,0,0,470,460,1,0,0,0,470,
      471,1,0,0,0,471,472,1,0,0,0,472,486,5,40,0,0,473,474,5,195,0,0,474,
      475,5,18,0,0,475,482,3,16,8,0,476,478,5,83,0,0,477,476,1,0,0,0,477,
      478,1,0,0,0,478,479,1,0,0,0,479,481,3,16,8,0,480,477,1,0,0,0,481,484,
      1,0,0,0,482,483,1,0,0,0,482,480,1,0,0,0,483,486,1,0,0,0,484,482,1,
      0,0,0,485,436,1,0,0,0,485,445,1,0,0,0,485,453,1,0,0,0,485,458,1,0,
      0,0,485,473,1,0,0,0,486,21,1,0,0,0,487,488,5,17,0,0,488,489,5,195,
      0,0,489,490,1,0,0,0,490,23,1,0,0,0,491,500,3,26,13,0,492,500,5,190,
      0,0,493,495,5,191,0,0,494,496,5,192,0,0,495,494,1,0,0,0,495,496,1,
      0,0,0,496,500,1,0,0,0,497,500,5,188,0,0,498,500,5,189,0,0,499,491,
      1,0,0,0,499,492,1,0,0,0,499,493,1,0,0,0,499,497,1,0,0,0,499,498,1,
      0,0,0,500,25,1,0,0,0,501,502,7,11,0,0,502,27,1,0,0,0,503,504,7,12,
      0,0,504,29,1,0,0,0,505,507,5,195,0,0,506,505,1,0,0,0,507,510,1,0,0,
      0,508,506,1,0,0,0,508,509,1,0,0,0,509,511,1,0,0,0,510,508,1,0,0,0,
      511,512,3,32,16,0,512,517,3,24,12,0,513,514,5,59,0,0,514,516,3,24,
      12,0,515,513,1,0,0,0,516,519,1,0,0,0,517,515,1,0,0,0,517,518,1,0,0,
      0,518,521,1,0,0,0,519,517,1,0,0,0,520,522,3,42,21,0,521,520,1,0,0,
      0,521,522,1,0,0,0,522,560,1,0,0,0,523,525,5,195,0,0,524,523,1,0,0,
      0,525,528,1,0,0,0,526,524,1,0,0,0,526,527,1,0,0,0,527,529,1,0,0,0,
      528,526,1,0,0,0,529,534,3,24,12,0,530,531,5,59,0,0,531,533,3,24,12,
      0,532,530,1,0,0,0,533,536,1,0,0,0,534,532,1,0,0,0,534,535,1,0,0,0,
      535,537,1,0,0,0,536,534,1,0,0,0,537,538,3,42,21,0,538,560,1,0,0,0,
      539,541,5,195,0,0,540,539,1,0,0,0,541,544,1,0,0,0,542,540,1,0,0,0,
      542,543,1,0,0,0,543,546,1,0,0,0,544,542,1,0,0,0,545,547,3,32,16,0,
      546,545,1,0,0,0,546,547,1,0,0,0,547,548,1,0,0,0,548,557,3,42,21,0,
      549,554,3,24,12,0,550,551,5,59,0,0,551,553,3,24,12,0,552,550,1,0,0,
      0,553,556,1,0,0,0,554,552,1,0,0,0,554,555,1,0,0,0,555,558,1,0,0,0,
      556,554,1,0,0,0,557,549,1,0,0,0,557,558,1,0,0,0,558,560,1,0,0,0,559,
      508,1,0,0,0,559,526,1,0,0,0,559,542,1,0,0,0,560,31,1,0,0,0,561,567,
      5,106,0,0,562,563,5,107,0,0,563,567,5,108,0,0,564,565,5,107,0,0,565,
      567,5,109,0,0,566,561,1,0,0,0,566,562,1,0,0,0,566,564,1,0,0,0,567,
      33,1,0,0,0,568,569,3,36,18,0,569,570,5,39,0,0,570,571,3,16,8,0,571,
      572,5,40,0,0,572,580,1,0,0,0,573,574,3,36,18,0,574,575,5,110,0,0,575,
      580,1,0,0,0,576,577,3,36,18,0,577,578,3,16,8,0,578,580,1,0,0,0,579,
      568,1,0,0,0,579,573,1,0,0,0,579,576,1,0,0,0,580,35,1,0,0,0,581,582,
      7,13,0,0,582,584,3,44,22,0,583,585,5,111,0,0,584,583,1,0,0,0,584,585,
      1,0,0,0,585,586,1,0,0,0,586,588,5,112,0,0,587,589,5,113,0,0,588,587,
      1,0,0,0,588,589,1,0,0,0,589,643,1,0,0,0,590,591,7,13,0,0,591,593,3,
      46,23,0,592,594,5,114,0,0,593,592,1,0,0,0,593,594,1,0,0,0,594,595,
      1,0,0,0,595,597,5,112,0,0,596,598,5,113,0,0,597,596,1,0,0,0,597,598,
      1,0,0,0,598,643,1,0,0,0,599,600,7,13,0,0,600,601,3,44,22,0,601,602,
      7,14,0,0,602,604,5,112,0,0,603,605,5,113,0,0,604,603,1,0,0,0,604,605,
      1,0,0,0,605,643,1,0,0,0,606,607,7,13,0,0,607,608,3,28,14,0,608,612,
      3,44,22,0,609,613,5,97,0,0,610,613,5,117,0,0,611,613,5,102,0,0,612,
      609,1,0,0,0,612,610,1,0,0,0,612,611,1,0,0,0,613,614,1,0,0,0,614,616,
      5,112,0,0,615,617,5,113,0,0,616,615,1,0,0,0,616,617,1,0,0,0,617,643,
      1,0,0,0,618,619,7,13,0,0,619,620,3,44,22,0,620,621,3,24,12,0,621,622,
      7,15,0,0,622,624,5,112,0,0,623,625,5,113,0,0,624,623,1,0,0,0,624,625,
      1,0,0,0,625,643,1,0,0,0,626,628,7,16,0,0,627,629,5,113,0,0,628,627,
      1,0,0,0,628,629,1,0,0,0,629,643,1,0,0,0,630,638,5,122,0,0,631,638,
      5,123,0,0,632,635,5,5,0,0,633,636,3,44,22,0,634,636,3,46,23,0,635,
      633,1,0,0,0,635,634,1,0,0,0,636,638,1,0,0,0,637,630,1,0,0,0,637,631,
      1,0,0,0,637,632,1,0,0,0,638,640,1,0,0,0,639,641,5,112,0,0,640,639,
      1,0,0,0,640,641,1,0,0,0,641,643,1,0,0,0,642,581,1,0,0,0,642,590,1,
      0,0,0,642,599,1,0,0,0,642,606,1,0,0,0,642,618,1,0,0,0,642,626,1,0,
      0,0,642,637,1,0,0,0,643,37,1,0,0,0,644,645,7,17,0,0,645,646,5,39,0,
      0,646,647,3,12,6,0,647,648,5,40,0,0,648,652,1,0,0,0,649,650,7,17,0,
      0,650,652,3,12,6,0,651,644,1,0,0,0,651,649,1,0,0,0,652,39,1,0,0,0,
      653,654,3,30,15,0,654,656,3,34,17,0,655,657,5,58,0,0,656,655,1,0,0,
      0,656,657,1,0,0,0,657,658,1,0,0,0,658,660,3,34,17,0,659,661,5,58,0,
      0,660,659,1,0,0,0,660,661,1,0,0,0,661,662,1,0,0,0,662,664,3,34,17,
      0,663,665,5,58,0,0,664,663,1,0,0,0,664,665,1,0,0,0,665,667,1,0,0,0,
      666,668,3,38,19,0,667,666,1,0,0,0,667,668,1,0,0,0,668,694,1,0,0,0,
      669,670,3,30,15,0,670,672,3,34,17,0,671,673,5,58,0,0,672,671,1,0,0,
      0,672,673,1,0,0,0,673,674,1,0,0,0,674,676,3,34,17,0,675,677,5,58,0,
      0,676,675,1,0,0,0,676,677,1,0,0,0,677,679,1,0,0,0,678,680,3,38,19,
      0,679,678,1,0,0,0,679,680,1,0,0,0,680,694,1,0,0,0,681,682,3,30,15,
      0,682,684,3,34,17,0,683,685,5,58,0,0,684,683,1,0,0,0,684,685,1,0,0,
      0,685,687,1,0,0,0,686,688,3,38,19,0,687,686,1,0,0,0,687,688,1,0,0,
      0,688,694,1,0,0,0,689,691,3,30,15,0,690,692,3,38,19,0,691,690,1,0,
      0,0,691,692,1,0,0,0,692,694,1,0,0,0,693,653,1,0,0,0,693,669,1,0,0,
      0,693,681,1,0,0,0,693,689,1,0,0,0,694,41,1,0,0,0,695,722,7,18,0,0,
      696,722,7,19,0,0,697,722,7,20,0,0,698,699,7,21,0,0,699,709,7,22,0,
      0,700,701,5,138,0,0,701,709,7,23,0,0,702,709,5,140,0,0,703,709,5,141,
      0,0,704,709,5,142,0,0,705,709,5,143,0,0,706,709,5,144,0,0,707,709,
      5,145,0,0,708,698,1,0,0,0,708,700,1,0,0,0,708,702,1,0,0,0,708,703,
      1,0,0,0,708,704,1,0,0,0,708,705,1,0,0,0,708,706,1,0,0,0,708,707,1,
      0,0,0,709,722,1,0,0,0,710,722,7,24,0,0,711,722,7,25,0,0,712,722,7,
      26,0,0,713,714,5,9,0,0,714,718,7,27,0,0,715,718,5,154,0,0,716,718,
      5,155,0,0,717,713,1,0,0,0,717,715,1,0,0,0,717,716,1,0,0,0,718,722,
      1,0,0,0,719,722,7,28,0,0,720,722,7,29,0,0,721,695,1,0,0,0,721,696,
      1,0,0,0,721,697,1,0,0,0,721,708,1,0,0,0,721,710,1,0,0,0,721,711,1,
      0,0,0,721,712,1,0,0,0,721,717,1,0,0,0,721,719,1,0,0,0,721,720,1,0,
      0,0,722,43,1,0,0,0,723,728,5,33,0,0,724,728,5,36,0,0,725,728,7,30,
      0,0,726,728,7,31,0,0,727,723,1,0,0,0,727,724,1,0,0,0,727,725,1,0,0,
      0,727,726,1,0,0,0,728,45,1,0,0,0,729,731,7,30,0,0,730,732,5,42,0,0,
      731,730,1,0,0,0,731,732,1,0,0,0,732,733,1,0,0,0,733,737,5,33,0,0,734,
      735,5,33,0,0,735,737,5,160,0,0,736,729,1,0,0,0,736,734,1,0,0,0,737,
      766,1,0,0,0,738,740,7,30,0,0,739,741,5,42,0,0,740,739,1,0,0,0,740,
      741,1,0,0,0,741,742,1,0,0,0,742,746,5,36,0,0,743,744,5,36,0,0,744,
      746,5,160,0,0,745,738,1,0,0,0,745,743,1,0,0,0,746,766,1,0,0,0,747,
      749,7,31,0,0,748,750,5,42,0,0,749,748,1,0,0,0,749,750,1,0,0,0,750,
      751,1,0,0,0,751,755,5,33,0,0,752,753,5,33,0,0,753,755,5,162,0,0,754,
      747,1,0,0,0,754,752,1,0,0,0,755,766,1,0,0,0,756,758,7,31,0,0,757,759,
      5,42,0,0,758,757,1,0,0,0,758,759,1,0,0,0,759,760,1,0,0,0,760,764,5,
      36,0,0,761,762,5,36,0,0,762,764,5,162,0,0,763,756,1,0,0,0,763,761,
      1,0,0,0,764,766,1,0,0,0,765,736,1,0,0,0,765,745,1,0,0,0,765,754,1,
      0,0,0,765,763,1,0,0,0,766,47,1,0,0,0,767,768,7,32,0,0,768,49,1,0,0,
      0,769,770,7,33,0,0,770,51,1,0,0,0,771,772,7,34,0,0,772,53,1,0,0,0,
      773,774,7,35,0,0,774,55,1,0,0,0,775,776,7,36,0,0,776,57,1,0,0,0,777,
      778,7,37,0,0,778,59,1,0,0,0,779,780,7,38,0,0,780,61,1,0,0,0,781,782,
      7,39,0,0,782,63,1,0,0,0,783,784,5,44,0,0,784,793,5,41,0,0,785,793,
      5,185,0,0,786,787,5,183,0,0,787,793,5,41,0,0,788,793,5,186,0,0,789,
      790,5,184,0,0,790,793,5,41,0,0,791,793,5,187,0,0,792,783,1,0,0,0,792,
      785,1,0,0,0,792,786,1,0,0,0,792,788,1,0,0,0,792,789,1,0,0,0,792,791,
      1,0,0,0,793,65,1,0,0,0,132,68,74,79,81,86,92,97,100,103,108,112,116,
      122,127,132,135,138,142,145,149,152,169,176,181,184,187,191,194,198,
      201,205,208,217,221,232,247,250,293,300,304,306,311,315,319,322,327,
      332,336,338,342,346,351,355,357,361,365,369,371,375,379,384,388,390,
      394,398,402,404,406,425,434,440,451,456,462,467,470,477,482,485,495,
      499,508,517,521,526,534,542,546,554,557,559,566,579,584,588,593,597,
      604,612,616,624,628,635,637,640,642,651,656,660,664,667,672,676,679,
      684,687,691,693,708,717,721,727,731,736,740,745,749,754,758,763,765,
      792
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

class BuiltinPropWidgetTypeContext extends PropertyContext {
  WidgetTypeContext? widgetType() => getRuleContext<WidgetTypeContext>(0);
  BuiltinPropWidgetTypeContext(PropertyContext ctx) { copyFrom(ctx); }
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
}

class WidgetTypeListContext extends WidgetTypeContext {
  WidgetTypeListContext(WidgetTypeContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitWidgetTypeList(this);
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