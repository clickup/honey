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
                   TOKEN_T__186 = 187, TOKEN_T__187 = 188, TOKEN_NUMBER_LITERAL = 189, 
                   TOKEN_BOOL_LITERAL = 190, TOKEN_STRING_LITERAL = 191, 
                   TOKEN_REGEX_LITERAL = 192, TOKEN_REGEX_MODIFIER = 193, 
                   TOKEN_THE = 194, TOKEN_A_AN = 195, TOKEN_ID = 196, TOKEN_ALPHA = 197, 
                   TOKEN_DIGIT = 198, TOKEN_COMMENT = 199, TOKEN_MULTILINE_COMMENT = 200, 
                   TOKEN_NEWLINE = 201, TOKEN_WHITESPACE = 202, TOKEN_UNLEXED_CHAR = 203;

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
      "'for'", "'print'", "'output'", "'message'", "'by'", "'left'", "'double'", 
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
      null, null, "NUMBER_LITERAL", "BOOL_LITERAL", "STRING_LITERAL", "REGEX_LITERAL", 
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
      if (((_la) & ~0x3f) == 0 && ((1 << _la) & 32151377600472) != 0 || (((_la - 78)) & ~0x3f) == 0 && ((1 << (_la - 78)) & -6341631223143596113) != 0 || (((_la - 142)) & ~0x3f) == 0 && ((1 << (_la - 142)) & 20129858873452543) != 0) {
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
      state = 212;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
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
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 31885837337088) != 0 || (((_la - 78)) & ~0x3f) == 0 && ((1 << (_la - 78)) & -6341631223143596113) != 0 || (((_la - 142)) & ~0x3f) == 0 && ((1 << (_la - 142)) & 20125469416876031) != 0) {
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

        state = 190;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 189;
          match(TOKEN_T__32);
        }

        state = 192;
        _localctx.pixels = expression(0);
        break;
      case 11:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 194;
        swipeType();
        state = 199;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 31885837337088) != 0 || (((_la - 78)) & ~0x3f) == 0 && ((1 << (_la - 78)) & -6341631223143596113) != 0 || (((_la - 142)) & ~0x3f) == 0 && ((1 << (_la - 142)) & 20125469416876031) != 0) {
          state = 196;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 195;
            match(TOKEN_T__16);
          }

          state = 198;
          _localctx.target = expression(0);
        }

        state = 206;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__15:
          state = 201;
          match(TOKEN_T__15);
          break;
        case TOKEN_T__17:
        case TOKEN_T__18:
          state = 203;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__17) {
            state = 202;
            match(TOKEN_T__17);
          }

          state = 205;
          match(TOKEN_T__18);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 208;
        _localctx.offset = expression(0);

        state = 209;
        match(TOKEN_T__32);
        state = 210;
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
      state = 224;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__33:
      case TOKEN_T__174:
      case TOKEN_T__175:
      case TOKEN_T__176:
      case TOKEN_T__177:
      case TOKEN_T__178:
      case TOKEN_T__179:
        _localctx = ClickTypeSingleContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 215;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__33) {
          state = 214;
          match(TOKEN_T__33);
        }

        state = 217;
        click();
        break;
      case TOKEN_T__34:
        _localctx = ClickTypeDoubleContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 218;
        match(TOKEN_T__34);
        state = 219;
        click();
        break;
      case TOKEN_T__35:
        _localctx = ClickTypeLongContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 220;
        match(TOKEN_T__35);
        state = 221;
        click();
        break;
      case TOKEN_T__36:
        _localctx = ClickTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 222;
        match(TOKEN_T__36);
        state = 223;
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
      state = 239;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 35, context)) {
      case 1:
        _localctx = SwipeTypeLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 226;
        swipe();
        state = 228;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__33) {
          state = 227;
          match(TOKEN_T__33);
        }

        break;
      case 2:
        _localctx = SwipeTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 230;
        swipe();
        state = 231;
        match(TOKEN_T__36);
        break;
      case 3:
        _localctx = SwipeTypeUpContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 233;
        swipe();
        state = 234;
        match(TOKEN_T__37);
        break;
      case 4:
        _localctx = SwipeTypeDownContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 236;
        swipe();
        state = 237;
        match(TOKEN_T__38);
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
      state = 257;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
      case 1:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 242;
        match(TOKEN_T__39);
        state = 243;
        expression(0);
        state = 244;
        match(TOKEN_T__40);
        break;
      case 2:
        _localctx = ExpressionTermContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 246;
        term();
        break;
      case 3:
        _localctx = ExpressionNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 247;
        match(TOKEN_T__41);
        state = 248;
        expression(16);
        break;
      case 4:
        _localctx = ExpressionNegateContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 249;
        match(TOKEN_T__42);
        state = 250;
        expression(15);
        break;
      case 5:
        _localctx = ExpressionExistsContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 251;
        match(TOKEN_T__43);
        state = 252;
        match(TOKEN_T__44);
        state = 254;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
        case 1:
          state = 253;
          _localctx.not = match(TOKEN_T__41);
          break;
        }
        state = 256;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 313;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 311;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
          case 1:
            _localctx = ExpressionPowContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 259;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 260;
            match(TOKEN_T__48);
            state = 261;
            expression(13);
            break;
          case 2:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 262;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 263;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__49 || _la == TOKEN_T__50)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 264;
            expression(12);
            break;
          case 3:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 265;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 266;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__42 || _la == TOKEN_T__51)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 267;
            expression(11);
            break;
          case 4:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 268;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 269;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__52 || _la == TOKEN_T__53)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 270;
            expression(10);
            break;
          case 5:
            _localctx = ExpressionComparisonContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 271;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 272;
            _localctx.op = comparisonOp();
            state = 273;
            expression(9);
            break;
          case 6:
            _localctx = ExpressionStartsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 275;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }

            state = 276;
            match(TOKEN_T__54);
            state = 277;
            match(TOKEN_T__17);
            state = 279;
            expression(8);
            break;
          case 7:
            _localctx = ExpressionEndsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 280;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }

            state = 281;
            match(TOKEN_T__55);
            state = 282;
            match(TOKEN_T__17);
            state = 284;
            expression(7);
            break;
          case 8:
            _localctx = ExpressionContainsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 285;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }

            state = 286;
            match(TOKEN_T__56);
            state = 287;
            expression(6);
            break;
          case 9:
            _localctx = ExpressionMatchesContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 288;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 289;
            match(TOKEN_T__57);
            state = 290;
            expression(5);
            break;
          case 10:
            _localctx = ExpressionAndContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 291;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 292;
            match(TOKEN_T__58);
            state = 293;
            expression(3);
            break;
          case 11:
            _localctx = ExpressionOrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 294;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 295;
            match(TOKEN_T__59);
            state = 296;
            expression(2);
            break;
          case 12:
            _localctx = ExpressionExistsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 297;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
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
            _la = tokenStream.LA(1)!;
            if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 492581209243648) != 0)) {
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
            state = 304;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 307;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
            case 1:
              state = 305;
              isAre();
              break;
            case 2:
              state = 306;
              isAreNot();
              break;
            }
            state = 309;
            property();
            break;
          } 
        }
        state = 315;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
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
      state = 413;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
      case 1:
        _localctx = ComparisonOpEqContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 329;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 45, context)) {
        case 1:
          state = 316;
          match(TOKEN_T__60);
          break;
        case 2:
          state = 318;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 317;
            isAre();
          }

          state = 320;
          match(TOKEN_T__61);
          break;
        case 3:
          state = 322;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 321;
            isAre();
          }

          state = 324;
          match(TOKEN_T__62);
          state = 326;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 325;
            match(TOKEN_T__4);
          }

          break;
        case 4:
          state = 328;
          match(TOKEN_T__63);
          break;
        }
        break;
      case 2:
        _localctx = ComparisonOpNeqContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 345;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 49, context)) {
        case 1:
          state = 331;
          match(TOKEN_T__64);
          break;
        case 2:
          state = 332;
          match(TOKEN_T__65);
          break;
        case 3:
          state = 334;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 333;
            isAre();
          }

          state = 336;
          match(TOKEN_T__66);
          break;
        case 4:
          state = 339;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__44:
          case TOKEN_T__183:
          case TOKEN_T__184:
          case TOKEN_T__185:
          case TOKEN_T__186:
          case TOKEN_T__187:
            state = 337;
            isAreNot();
            break;
          case TOKEN_T__41:
            state = 338;
            match(TOKEN_T__41);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 341;
          match(TOKEN_T__62);
          state = 343;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 342;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 3:
        _localctx = ComparisonOpGteContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 364;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 54, context)) {
        case 1:
          state = 347;
          match(TOKEN_T__67);
          break;
        case 2:
          state = 349;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 348;
            isAre();
          }

          state = 351;
          match(TOKEN_T__68);
          break;
        case 3:
          state = 353;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 352;
            isAre();
          }

          state = 355;
          match(TOKEN_T__69);
          state = 356;
          match(TOKEN_T__70);
          state = 358;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__59) {
            state = 357;
            match(TOKEN_T__59);
          }

          state = 360;
          match(TOKEN_T__62);
          state = 362;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 361;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 4:
        _localctx = ComparisonOpGtContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 378;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 58, context)) {
        case 1:
          state = 366;
          match(TOKEN_T__71);
          break;
        case 2:
          state = 368;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 367;
            isAre();
          }

          state = 370;
          match(TOKEN_T__68);
          break;
        case 3:
          state = 372;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 371;
            isAre();
          }

          state = 374;
          match(TOKEN_T__69);
          state = 376;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__70) {
            state = 375;
            match(TOKEN_T__70);
          }

          break;
        }
        break;
      case 5:
        _localctx = ComparisonOpLteContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 397;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 63, context)) {
        case 1:
          state = 380;
          match(TOKEN_T__72);
          break;
        case 2:
          state = 382;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 381;
            isAre();
          }

          state = 384;
          match(TOKEN_T__73);
          break;
        case 3:
          state = 386;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 385;
            isAre();
          }

          state = 388;
          match(TOKEN_T__74);
          state = 389;
          match(TOKEN_T__70);
          state = 391;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__59) {
            state = 390;
            match(TOKEN_T__59);
          }

          state = 393;
          match(TOKEN_T__62);
          state = 395;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 394;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 6:
        _localctx = ComparisonOpLtContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 411;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 67, context)) {
        case 1:
          state = 399;
          match(TOKEN_T__75);
          break;
        case 2:
          state = 401;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 400;
            isAre();
          }

          state = 403;
          match(TOKEN_T__76);
          break;
        case 3:
          state = 405;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184) {
            state = 404;
            isAre();
          }

          state = 407;
          match(TOKEN_T__74);
          state = 409;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__70) {
            state = 408;
            match(TOKEN_T__70);
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
      state = 432;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 69, context)) {
      case 1:
        _localctx = TermTermContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 415;
        match(TOKEN_T__39);
        state = 416;
        term();
        state = 417;
        match(TOKEN_T__40);
        break;
      case 2:
        _localctx = TermLiteralContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 419;
        literal();
        break;
      case 3:
        _localctx = TermNegateContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 420;
        match(TOKEN_T__42);
        state = 421;
        term();
        break;
      case 4:
        _localctx = TermFunctionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 422;
        function();
        break;
      case 5:
        _localctx = TermOrdinalContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 423;
        ordinal();
        state = 424;
        term();
        break;
      case 6:
        _localctx = TermWidgetContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 426;
        widget();
        break;
      case 7:
        _localctx = TermPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 427;
        property();
        state = 428;
        of();
        state = 429;
        term();
        break;
      case 8:
        _localctx = TermSymbolContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 431;
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
      state = 441;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__77:
      case TOKEN_T__78:
      case TOKEN_T__79:
        _localctx = BuiltinPropLengthContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 434;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 78)) & ~0x3f) == 0 && ((1 << (_la - 78)) & 7) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__164:
      case TOKEN_T__165:
      case TOKEN_T__166:
      case TOKEN_T__167:
        _localctx = BuiltinPropCharsContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 435;
        character();
        break;
      case TOKEN_T__172:
      case TOKEN_T__173:
        _localctx = BuiltinPropItemsContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 436;
        item();
        break;
      case TOKEN_T__168:
      case TOKEN_T__169:
        _localctx = BuiltinPropWordsContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 437;
        word();
        break;
      case TOKEN_T__170:
      case TOKEN_T__171:
        _localctx = BuiltinPropLinesContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 438;
        line();
        break;
      case TOKEN_T__8:
      case TOKEN_T__126:
      case TOKEN_T__127:
      case TOKEN_T__128:
      case TOKEN_T__129:
      case TOKEN_T__130:
      case TOKEN_T__131:
      case TOKEN_T__132:
      case TOKEN_T__133:
      case TOKEN_T__134:
      case TOKEN_T__135:
      case TOKEN_T__138:
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
      case TOKEN_T__151:
      case TOKEN_T__154:
      case TOKEN_T__155:
      case TOKEN_T__156:
      case TOKEN_T__157:
      case TOKEN_T__158:
      case TOKEN_T__159:
        _localctx = BuiltinPropWidgetTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 439;
        widgetType();
        break;
      case TOKEN_ID:
        _localctx = OtherPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 440;
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
      state = 492;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 79, context)) {
      case 1:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 443;
        match(TOKEN_T__80);
        state = 444;
        _localctx.date = term();
        state = 447;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__81) {
          state = 445;
          match(TOKEN_T__81);
          state = 446;
          _localctx.sourceFormat = term();
        }

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
      case 2:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 452;
        match(TOKEN_T__80);
        state = 453;
        _localctx.date = term();
        state = 454;
        match(TOKEN_T__81);
        state = 455;
        _localctx.sourceFormat = term();
        state = 458;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 72, context)) {
        case 1:
          state = 456;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 457;
          _localctx.targetFormat = term();
          break;
        }
        break;
      case 3:
        _localctx = FunctionNowContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 460;
        match(TOKEN_T__82);
        state = 463;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 73, context)) {
        case 1:
          state = 461;
          match(TOKEN_T__39);
          state = 462;
          match(TOKEN_T__40);
          break;
        }
        break;
      case 4:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 465;
        match(TOKEN_ID);
        state = 466;
        match(TOKEN_T__39);
        state = 477;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 9895604650496) != 0 || (((_la - 78)) & ~0x3f) == 0 && ((1 << (_la - 78)) & -6341631223143596113) != 0 || (((_la - 142)) & ~0x3f) == 0 && ((1 << (_la - 142)) & 20125469416876031) != 0) {
          state = 467;
          term();
          state = 474;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 75, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 469;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__83) {
                state = 468;
                match(TOKEN_T__83);
              }

              state = 471;
              term(); 
            }
            state = 476;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 75, context);
          }
        }

        state = 479;
        match(TOKEN_T__40);
        break;
      case 5:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 480;
        match(TOKEN_ID);
        state = 481;
        match(TOKEN_T__17);

        state = 482;
        term();
        state = 489;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
        while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1 + 1) {
            state = 484;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__83) {
              state = 483;
              match(TOKEN_T__83);
            }

            state = 486;
            term(); 
          }
          state = 491;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
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
      state = 494;
      match(TOKEN_T__16);
      state = 495;
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
      state = 506;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
        _localctx = LiteralCardinalContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 498;
        cardinalValue();
        break;
      case TOKEN_STRING_LITERAL:
        _localctx = LiteralStringContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 499;
        match(TOKEN_STRING_LITERAL);
        break;
      case TOKEN_REGEX_LITERAL:
        _localctx = LiteralRegexContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 500;
        match(TOKEN_REGEX_LITERAL);
        state = 502;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          state = 501;
          match(TOKEN_REGEX_MODIFIER);
          break;
        }
        break;
      case TOKEN_NUMBER_LITERAL:
        _localctx = LiteralNumberContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 504;
        match(TOKEN_NUMBER_LITERAL);
        break;
      case TOKEN_BOOL_LITERAL:
        _localctx = LiteralBoolContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 505;
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
      state = 508;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 85)) & ~0x3f) == 0 && ((1 << (_la - 85)) & 2047) != 0)) {
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
      state = 510;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 96)) & ~0x3f) == 0 && ((1 << (_la - 96)) & 2047) != 0)) {
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
      state = 566;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 91, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 515;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 512;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 517;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 518;
        widgetNameModifier();
        state = 519;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 524;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 83, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 520;
            match(TOKEN_T__59);
            state = 521;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal); 
          }
          state = 526;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 83, context);
        }
        state = 528;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 84, context)) {
        case 1:
          state = 527;
          widgetType();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 533;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 530;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 535;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 536;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 541;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__59) {
          state = 537;
          match(TOKEN_T__59);
          state = 538;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 543;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 544;
        widgetType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 549;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 546;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 551;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 553;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__106 || _la == TOKEN_T__107) {
          state = 552;
          widgetNameModifier();
        }

        state = 555;
        widgetType();
        state = 564;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 90, context)) {
        case 1:
          state = 556;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 561;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 89, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 557;
              match(TOKEN_T__59);
              state = 558;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal); 
            }
            state = 563;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 89, context);
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
      state = 573;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
      case 1:
        _localctx = WidgetNameExactlyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 568;
        match(TOKEN_T__106);
        break;
      case 2:
        _localctx = WidgetNameCaseSensitiveContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 569;
        match(TOKEN_T__107);
        state = 570;
        match(TOKEN_T__108);
        break;
      case 3:
        _localctx = WidgetNameCaseInsensitiveContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 571;
        match(TOKEN_T__107);
        state = 572;
        match(TOKEN_T__109);
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
      state = 586;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 93, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 575;
        widgetReferencePosition();
        state = 576;
        match(TOKEN_T__39);
        state = 577;
        term();
        state = 578;
        match(TOKEN_T__40);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 580;
        widgetReferencePosition();
        state = 581;
        match(TOKEN_T__110);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 583;
        widgetReferencePosition();
        state = 584;
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
      state = 649;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
      case 1:
        _localctx = WidgetReferenceEdgeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 588;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 589;
        singleDirection();
        state = 591;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__111) {
          state = 590;
          match(TOKEN_T__111);
        }

        state = 593;
        match(TOKEN_T__112);
        state = 595;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 594;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 2:
        _localctx = WidgetReferenceCornerContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 597;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 598;
        doubleDirection();
        state = 600;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__114) {
          state = 599;
          match(TOKEN_T__114);
        }

        state = 602;
        match(TOKEN_T__112);
        state = 604;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 603;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 3:
        _localctx = WidgetReferenceHalfContext(_localctx);
        enterOuterAlt(_localctx, 3);
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
        singleDirection();
        state = 608;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__115 || _la == TOKEN_T__116)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 609;
        match(TOKEN_T__112);
        state = 611;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 610;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 4:
        _localctx = WidgetReferenceFractionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 613;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 614;
        ordinal();
        state = 615;
        singleDirection();
        state = 619;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__97:
          state = 616;
          _localctx.f = match(TOKEN_T__97);
          break;
        case TOKEN_T__117:
          state = 617;
          _localctx.f = match(TOKEN_T__117);
          break;
        case TOKEN_T__102:
          state = 618;
          _localctx.f = match(TOKEN_T__102);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 621;
        match(TOKEN_T__112);
        state = 623;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 622;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 5:
        _localctx = WidgetReferencePercentageContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 625;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 626;
        singleDirection();
        state = 627;
        literal();
        state = 628;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__118 || _la == TOKEN_T__119)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 629;
        match(TOKEN_T__112);
        state = 631;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 630;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 6:
        _localctx = WidgetReferenceInsideContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 633;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__120 || _la == TOKEN_T__121)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 635;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 634;
          _localctx.isParent = match(TOKEN_T__113);
        }

        break;
      case 7:
        _localctx = WidgetReferenceToContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 644;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__122:
          state = 637;
          _localctx.below = match(TOKEN_T__122);
          break;
        case TOKEN_T__123:
          state = 638;
          _localctx.above = match(TOKEN_T__123);
          break;
        case TOKEN_T__4:
          state = 639;
          match(TOKEN_T__4);
          state = 642;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 103, context)) {
          case 1:
            state = 640;
            singleDirection();
            break;
          case 2:
            state = 641;
            doubleDirection();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 647;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 646;
          match(TOKEN_T__112);
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
      state = 658;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 651;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__124 || _la == TOKEN_T__125)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 652;
        match(TOKEN_T__39);
        state = 653;
        expression(0);
        state = 654;
        match(TOKEN_T__40);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 656;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__124 || _la == TOKEN_T__125)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 657;
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
      state = 700;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 118, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 660;
        widgetIdent();
        state = 661;
        widgetReference();
        state = 663;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__58) {
          state = 662;
          match(TOKEN_T__58);
        }

        state = 665;
        widgetReference();
        state = 667;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__58) {
          state = 666;
          match(TOKEN_T__58);
        }

        state = 669;
        widgetReference();
        state = 671;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 110, context)) {
        case 1:
          state = 670;
          match(TOKEN_T__58);
          break;
        }
        state = 674;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 111, context)) {
        case 1:
          state = 673;
          widgetWhere();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 676;
        widgetIdent();
        state = 677;
        widgetReference();
        state = 679;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__58) {
          state = 678;
          match(TOKEN_T__58);
        }

        state = 681;
        widgetReference();
        state = 683;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 113, context)) {
        case 1:
          state = 682;
          match(TOKEN_T__58);
          break;
        }
        state = 686;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 114, context)) {
        case 1:
          state = 685;
          widgetWhere();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 688;
        widgetIdent();
        state = 689;
        widgetReference();
        state = 691;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 115, context)) {
        case 1:
          state = 690;
          match(TOKEN_T__58);
          break;
        }
        state = 694;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 116, context)) {
        case 1:
          state = 693;
          widgetWhere();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 696;
        widgetIdent();
        state = 698;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 117, context)) {
        case 1:
          state = 697;
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
      state = 728;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__126:
      case TOKEN_T__127:
        _localctx = WidgetTypeWidgetContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 702;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__126 || _la == TOKEN_T__127)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__128:
      case TOKEN_T__129:
      case TOKEN_T__130:
      case TOKEN_T__131:
        _localctx = WidgetTypeButtonContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 703;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 129)) & ~0x3f) == 0 && ((1 << (_la - 129)) & 15) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__132:
      case TOKEN_T__133:
        _localctx = WidgetTypeLinkContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 704;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__132 || _la == TOKEN_T__133)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__134:
      case TOKEN_T__135:
      case TOKEN_T__138:
      case TOKEN_T__140:
      case TOKEN_T__141:
      case TOKEN_T__142:
      case TOKEN_T__143:
      case TOKEN_T__144:
      case TOKEN_T__145:
        _localctx = WidgetTypeTextFieldContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 715;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__134:
        case TOKEN_T__135:
          state = 705;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__134 || _la == TOKEN_T__135)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 706;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__136 || _la == TOKEN_T__137)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__138:
          state = 707;
          match(TOKEN_T__138);
          state = 708;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__134 || _la == TOKEN_T__139)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__140:
          state = 709;
          match(TOKEN_T__140);
          break;
        case TOKEN_T__141:
          state = 710;
          match(TOKEN_T__141);
          break;
        case TOKEN_T__142:
          state = 711;
          match(TOKEN_T__142);
          break;
        case TOKEN_T__143:
          state = 712;
          match(TOKEN_T__143);
          break;
        case TOKEN_T__144:
          state = 713;
          match(TOKEN_T__144);
          break;
        case TOKEN_T__145:
          state = 714;
          match(TOKEN_T__145);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__146:
      case TOKEN_T__147:
        _localctx = WidgetTypeSliderContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 717;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__146 || _la == TOKEN_T__147)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__148:
      case TOKEN_T__149:
        _localctx = WidgetTypeImageContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 718;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__148 || _la == TOKEN_T__149)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__150:
      case TOKEN_T__151:
        _localctx = WidgetTypeListContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 719;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__150 || _la == TOKEN_T__151)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__8:
      case TOKEN_T__154:
      case TOKEN_T__155:
        _localctx = WidgetTypeCheckBoxContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 724;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__8:
          state = 720;
          match(TOKEN_T__8);
          state = 721;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__152 || _la == TOKEN_T__153)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__154:
          state = 722;
          match(TOKEN_T__154);
          break;
        case TOKEN_T__155:
          state = 723;
          match(TOKEN_T__155);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__156:
      case TOKEN_T__157:
        _localctx = WidgetTypeSwitchContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 726;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__156 || _la == TOKEN_T__157)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__158:
      case TOKEN_T__159:
        _localctx = WidgetTypeHeaderContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 727;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__158 || _la == TOKEN_T__159)) {
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
      state = 734;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__33:
        _localctx = SingleDirectionLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 730;
        match(TOKEN_T__33);
        break;
      case TOKEN_T__36:
        _localctx = SingleDirectionRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 731;
        match(TOKEN_T__36);
        break;
      case TOKEN_T__160:
      case TOKEN_T__161:
        _localctx = SingleDirectionTopContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 732;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__162:
      case TOKEN_T__163:
        _localctx = SingleDirectionBottomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 733;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__162 || _la == TOKEN_T__163)) {
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
      state = 772;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 131, context)) {
      case 1:
        _localctx = DoubleDirectionTopLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 743;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__160:
        case TOKEN_T__161:
          state = 736;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 738;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__42) {
            state = 737;
            match(TOKEN_T__42);
          }

          state = 740;
          match(TOKEN_T__33);
          break;
        case TOKEN_T__33:
          state = 741;
          match(TOKEN_T__33);
          state = 742;
          match(TOKEN_T__160);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        _localctx = DoubleDirectionTopRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 752;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__160:
        case TOKEN_T__161:
          state = 745;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__160 || _la == TOKEN_T__161)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 747;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__42) {
            state = 746;
            match(TOKEN_T__42);
          }

          state = 749;
          match(TOKEN_T__36);
          break;
        case TOKEN_T__36:
          state = 750;
          match(TOKEN_T__36);
          state = 751;
          match(TOKEN_T__160);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 3:
        _localctx = DoubleDirectionBottomLeftContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 761;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__162:
        case TOKEN_T__163:
          state = 754;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__162 || _la == TOKEN_T__163)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 756;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__42) {
            state = 755;
            match(TOKEN_T__42);
          }

          state = 758;
          match(TOKEN_T__33);
          break;
        case TOKEN_T__33:
          state = 759;
          match(TOKEN_T__33);
          state = 760;
          match(TOKEN_T__162);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = DoubleDirectionBottomRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 770;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__162:
        case TOKEN_T__163:
          state = 763;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__162 || _la == TOKEN_T__163)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 765;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__42) {
            state = 764;
            match(TOKEN_T__42);
          }

          state = 767;
          match(TOKEN_T__36);
          break;
        case TOKEN_T__36:
          state = 768;
          match(TOKEN_T__36);
          state = 769;
          match(TOKEN_T__162);
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
      state = 774;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 165)) & ~0x3f) == 0 && ((1 << (_la - 165)) & 15) != 0)) {
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
      state = 776;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__168 || _la == TOKEN_T__169)) {
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
      state = 778;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__170 || _la == TOKEN_T__171)) {
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
      state = 780;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__172 || _la == TOKEN_T__173)) {
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
      state = 782;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__25 || _la == TOKEN_T__81 || _la == TOKEN_T__112)) {
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
      state = 784;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 175)) & ~0x3f) == 0 && ((1 << (_la - 175)) & 63) != 0)) {
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
      state = 786;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 181)) & ~0x3f) == 0 && ((1 << (_la - 181)) & 7) != 0)) {
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
      state = 788;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__44 || _la == TOKEN_T__183 || _la == TOKEN_T__184)) {
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
      state = 799;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__44:
        enterOuterAlt(_localctx, 1);
        state = 790;
        match(TOKEN_T__44);
        state = 791;
        match(TOKEN_T__41);
        break;
      case TOKEN_T__185:
        enterOuterAlt(_localctx, 2);
        state = 792;
        match(TOKEN_T__185);
        break;
      case TOKEN_T__183:
        enterOuterAlt(_localctx, 3);
        state = 793;
        match(TOKEN_T__183);
        state = 794;
        match(TOKEN_T__41);
        break;
      case TOKEN_T__186:
        enterOuterAlt(_localctx, 4);
        state = 795;
        match(TOKEN_T__186);
        break;
      case TOKEN_T__184:
        enterOuterAlt(_localctx, 5);
        state = 796;
        match(TOKEN_T__184);
        state = 797;
        match(TOKEN_T__41);
        break;
      case TOKEN_T__187:
        enterOuterAlt(_localctx, 6);
        state = 798;
        match(TOKEN_T__187);
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
      4,1,203,802,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
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
      3,1,3,1,3,1,3,3,3,182,8,3,1,3,3,3,185,8,3,1,3,3,3,188,8,3,1,3,3,3,
      191,8,3,1,3,1,3,1,3,1,3,3,3,197,8,3,1,3,3,3,200,8,3,1,3,1,3,3,3,204,
      8,3,1,3,3,3,207,8,3,1,3,1,3,1,3,1,3,3,3,213,8,3,1,4,3,4,216,8,4,1,
      4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,225,8,4,1,5,1,5,3,5,229,8,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,240,8,5,1,6,1,6,1,6,1,6,1,6,1,6,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,255,8,6,1,6,3,6,258,8,6,1,6,1,6,1,6,
      1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,
      1,6,1,6,1,6,1,6,1,6,3,6,301,8,6,1,6,1,6,1,6,1,6,1,6,3,6,308,8,6,1,
      6,1,6,5,6,312,8,6,10,6,12,6,315,9,6,1,7,1,7,3,7,319,8,7,1,7,1,7,3,
      7,323,8,7,1,7,1,7,3,7,327,8,7,1,7,3,7,330,8,7,1,7,1,7,1,7,3,7,335,
      8,7,1,7,1,7,1,7,3,7,340,8,7,1,7,1,7,3,7,344,8,7,3,7,346,8,7,1,7,1,
      7,3,7,350,8,7,1,7,1,7,3,7,354,8,7,1,7,1,7,1,7,3,7,359,8,7,1,7,1,7,
      3,7,363,8,7,3,7,365,8,7,1,7,1,7,3,7,369,8,7,1,7,1,7,3,7,373,8,7,1,
      7,1,7,3,7,377,8,7,3,7,379,8,7,1,7,1,7,3,7,383,8,7,1,7,1,7,3,7,387,
      8,7,1,7,1,7,1,7,3,7,392,8,7,1,7,1,7,3,7,396,8,7,3,7,398,8,7,1,7,1,
      7,3,7,402,8,7,1,7,1,7,3,7,406,8,7,1,7,1,7,3,7,410,8,7,3,7,412,8,7,
      3,7,414,8,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,
      8,1,8,1,8,1,8,3,8,433,8,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,3,9,442,8,9,
      1,10,1,10,1,10,1,10,3,10,448,8,10,1,10,1,10,1,10,1,10,1,10,1,10,1,
      10,1,10,1,10,3,10,459,8,10,1,10,1,10,1,10,3,10,464,8,10,1,10,1,10,
      1,10,1,10,3,10,470,8,10,1,10,5,10,473,8,10,10,10,12,10,476,9,10,3,
      10,478,8,10,1,10,1,10,1,10,1,10,1,10,3,10,485,8,10,1,10,5,10,488,8,
      10,10,10,12,10,491,9,10,3,10,493,8,10,1,11,1,11,1,11,1,11,1,12,1,12,
      1,12,1,12,3,12,503,8,12,1,12,1,12,3,12,507,8,12,1,13,1,13,1,14,1,14,
      1,15,5,15,514,8,15,10,15,12,15,517,9,15,1,15,1,15,1,15,1,15,5,15,523,
      8,15,10,15,12,15,526,9,15,1,15,3,15,529,8,15,1,15,5,15,532,8,15,10,
      15,12,15,535,9,15,1,15,1,15,1,15,5,15,540,8,15,10,15,12,15,543,9,15,
      1,15,1,15,1,15,5,15,548,8,15,10,15,12,15,551,9,15,1,15,3,15,554,8,
      15,1,15,1,15,1,15,1,15,5,15,560,8,15,10,15,12,15,563,9,15,3,15,565,
      8,15,3,15,567,8,15,1,16,1,16,1,16,1,16,1,16,3,16,574,8,16,1,17,1,17,
      1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,3,17,587,8,17,1,18,1,
      18,1,18,3,18,592,8,18,1,18,1,18,3,18,596,8,18,1,18,1,18,1,18,3,18,
      601,8,18,1,18,1,18,3,18,605,8,18,1,18,1,18,1,18,1,18,1,18,3,18,612,
      8,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,620,8,18,1,18,1,18,3,18,624,
      8,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,632,8,18,1,18,1,18,3,18,636,
      8,18,1,18,1,18,1,18,1,18,1,18,3,18,643,8,18,3,18,645,8,18,1,18,3,18,
      648,8,18,3,18,650,8,18,1,19,1,19,1,19,1,19,1,19,1,19,1,19,3,19,659,
      8,19,1,20,1,20,1,20,3,20,664,8,20,1,20,1,20,3,20,668,8,20,1,20,1,20,
      3,20,672,8,20,1,20,3,20,675,8,20,1,20,1,20,1,20,3,20,680,8,20,1,20,
      1,20,3,20,684,8,20,1,20,3,20,687,8,20,1,20,1,20,1,20,3,20,692,8,20,
      1,20,3,20,695,8,20,1,20,1,20,3,20,699,8,20,3,20,701,8,20,1,21,1,21,
      1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,716,8,
      21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,725,8,21,1,21,1,21,3,21,
      729,8,21,1,22,1,22,1,22,1,22,3,22,735,8,22,1,23,1,23,3,23,739,8,23,
      1,23,1,23,1,23,3,23,744,8,23,1,23,1,23,3,23,748,8,23,1,23,1,23,1,23,
      3,23,753,8,23,1,23,1,23,3,23,757,8,23,1,23,1,23,1,23,3,23,762,8,23,
      1,23,1,23,3,23,766,8,23,1,23,1,23,1,23,3,23,771,8,23,3,23,773,8,23,
      1,24,1,24,1,25,1,25,1,26,1,26,1,27,1,27,1,28,1,28,1,29,1,29,1,30,1,
      30,1,31,1,31,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,32,800,
      8,32,1,32,2,474,489,1,12,33,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,
      30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,0,40,1,0,8,12,
      1,0,20,21,2,0,5,5,23,23,1,0,24,25,1,0,26,27,1,0,30,32,1,0,50,51,2,
      0,43,43,52,52,1,0,53,54,1,0,46,48,1,0,78,80,1,0,85,95,1,0,96,106,2,
      0,16,17,26,26,1,0,116,117,1,0,119,120,2,0,26,26,121,122,2,0,18,18,
      125,126,1,0,127,128,1,0,129,132,1,0,133,134,1,0,135,136,1,0,137,138,
      2,0,135,135,140,140,1,0,147,148,1,0,149,150,1,0,151,152,1,0,153,154,
      1,0,157,158,1,0,159,160,1,0,161,162,1,0,163,164,1,0,165,168,1,0,169,
      170,1,0,171,172,1,0,173,174,3,0,26,26,82,82,113,113,1,0,175,180,1,
      0,181,183,2,0,45,45,184,185,994,0,74,1,0,0,0,2,103,1,0,0,0,4,112,1,
      0,0,0,6,212,1,0,0,0,8,224,1,0,0,0,10,239,1,0,0,0,12,257,1,0,0,0,14,
      413,1,0,0,0,16,432,1,0,0,0,18,441,1,0,0,0,20,492,1,0,0,0,22,494,1,
      0,0,0,24,506,1,0,0,0,26,508,1,0,0,0,28,510,1,0,0,0,30,566,1,0,0,0,
      32,573,1,0,0,0,34,586,1,0,0,0,36,649,1,0,0,0,38,658,1,0,0,0,40,700,
      1,0,0,0,42,728,1,0,0,0,44,734,1,0,0,0,46,772,1,0,0,0,48,774,1,0,0,
      0,50,776,1,0,0,0,52,778,1,0,0,0,54,780,1,0,0,0,56,782,1,0,0,0,58,784,
      1,0,0,0,60,786,1,0,0,0,62,788,1,0,0,0,64,799,1,0,0,0,66,68,3,2,1,0,
      67,69,5,1,0,0,68,67,1,0,0,0,68,69,1,0,0,0,69,70,1,0,0,0,70,71,5,201,
      0,0,71,73,1,0,0,0,72,66,1,0,0,0,73,76,1,0,0,0,74,72,1,0,0,0,74,75,
      1,0,0,0,75,81,1,0,0,0,76,74,1,0,0,0,77,79,3,2,1,0,78,80,5,1,0,0,79,
      78,1,0,0,0,79,80,1,0,0,0,80,82,1,0,0,0,81,77,1,0,0,0,81,82,1,0,0,0,
      82,86,1,0,0,0,83,85,5,201,0,0,84,83,1,0,0,0,85,88,1,0,0,0,86,84,1,
      0,0,0,86,87,1,0,0,0,87,89,1,0,0,0,88,86,1,0,0,0,89,90,5,0,0,1,90,1,
      1,0,0,0,91,93,3,4,2,0,92,91,1,0,0,0,92,93,1,0,0,0,93,94,1,0,0,0,94,
      97,3,6,3,0,95,96,5,2,0,0,96,98,3,12,6,0,97,95,1,0,0,0,97,98,1,0,0,
      0,98,104,1,0,0,0,99,101,3,4,2,0,100,99,1,0,0,0,100,101,1,0,0,0,101,
      102,1,0,0,0,102,104,3,12,6,0,103,92,1,0,0,0,103,100,1,0,0,0,104,3,
      1,0,0,0,105,113,5,3,0,0,106,108,5,4,0,0,107,109,5,5,0,0,108,107,1,
      0,0,0,108,109,1,0,0,0,109,113,1,0,0,0,110,113,5,6,0,0,111,113,5,7,
      0,0,112,105,1,0,0,0,112,106,1,0,0,0,112,110,1,0,0,0,112,111,1,0,0,
      0,113,5,1,0,0,0,114,116,7,0,0,0,115,117,5,13,0,0,116,115,1,0,0,0,116,
      117,1,0,0,0,117,118,1,0,0,0,118,213,3,12,6,0,119,123,5,14,0,0,120,
      121,5,15,0,0,121,123,5,16,0,0,122,119,1,0,0,0,122,120,1,0,0,0,123,
      124,1,0,0,0,124,213,3,12,6,0,125,127,3,8,4,0,126,128,5,17,0,0,127,
      126,1,0,0,0,127,128,1,0,0,0,128,129,1,0,0,0,129,138,3,12,6,0,130,136,
      5,16,0,0,131,133,5,18,0,0,132,131,1,0,0,0,132,133,1,0,0,0,133,134,
      1,0,0,0,134,136,5,19,0,0,135,130,1,0,0,0,135,132,1,0,0,0,136,137,1,
      0,0,0,137,139,3,12,6,0,138,135,1,0,0,0,138,139,1,0,0,0,139,213,1,0,
      0,0,140,145,3,8,4,0,141,143,5,17,0,0,142,141,1,0,0,0,142,143,1,0,0,
      0,143,144,1,0,0,0,144,146,3,12,6,0,145,142,1,0,0,0,145,146,1,0,0,0,
      146,152,1,0,0,0,147,153,5,16,0,0,148,150,5,18,0,0,149,148,1,0,0,0,
      149,150,1,0,0,0,150,151,1,0,0,0,151,153,5,19,0,0,152,147,1,0,0,0,152,
      149,1,0,0,0,153,154,1,0,0,0,154,155,3,12,6,0,155,213,1,0,0,0,156,157,
      7,1,0,0,157,213,3,12,6,0,158,159,5,22,0,0,159,160,5,196,0,0,160,161,
      7,2,0,0,161,213,3,12,6,0,162,163,7,3,0,0,163,164,3,12,6,0,164,165,
      7,4,0,0,165,166,5,196,0,0,166,213,1,0,0,0,167,169,5,28,0,0,168,170,
      5,29,0,0,169,168,1,0,0,0,169,170,1,0,0,0,170,171,1,0,0,0,171,213,3,
      12,6,0,172,173,7,5,0,0,173,213,3,12,6,0,174,176,3,10,5,0,175,177,5,
      17,0,0,176,175,1,0,0,0,176,177,1,0,0,0,177,178,1,0,0,0,178,187,3,12,
      6,0,179,185,5,16,0,0,180,182,5,18,0,0,181,180,1,0,0,0,181,182,1,0,
      0,0,182,183,1,0,0,0,183,185,5,19,0,0,184,179,1,0,0,0,184,181,1,0,0,
      0,185,186,1,0,0,0,186,188,3,12,6,0,187,184,1,0,0,0,187,188,1,0,0,0,
      188,190,1,0,0,0,189,191,5,33,0,0,190,189,1,0,0,0,190,191,1,0,0,0,191,
      192,1,0,0,0,192,193,3,12,6,0,193,213,1,0,0,0,194,199,3,10,5,0,195,
      197,5,17,0,0,196,195,1,0,0,0,196,197,1,0,0,0,197,198,1,0,0,0,198,200,
      3,12,6,0,199,196,1,0,0,0,199,200,1,0,0,0,200,206,1,0,0,0,201,207,5,
      16,0,0,202,204,5,18,0,0,203,202,1,0,0,0,203,204,1,0,0,0,204,205,1,
      0,0,0,205,207,5,19,0,0,206,201,1,0,0,0,206,203,1,0,0,0,207,208,1,0,
      0,0,208,209,3,12,6,0,209,210,5,33,0,0,210,211,3,12,6,0,211,213,1,0,
      0,0,212,114,1,0,0,0,212,122,1,0,0,0,212,125,1,0,0,0,212,140,1,0,0,
      0,212,156,1,0,0,0,212,158,1,0,0,0,212,162,1,0,0,0,212,167,1,0,0,0,
      212,172,1,0,0,0,212,174,1,0,0,0,212,194,1,0,0,0,213,7,1,0,0,0,214,
      216,5,34,0,0,215,214,1,0,0,0,215,216,1,0,0,0,216,217,1,0,0,0,217,225,
      3,58,29,0,218,219,5,35,0,0,219,225,3,58,29,0,220,221,5,36,0,0,221,
      225,3,58,29,0,222,223,5,37,0,0,223,225,3,58,29,0,224,215,1,0,0,0,224,
      218,1,0,0,0,224,220,1,0,0,0,224,222,1,0,0,0,225,9,1,0,0,0,226,228,
      3,60,30,0,227,229,5,34,0,0,228,227,1,0,0,0,228,229,1,0,0,0,229,240,
      1,0,0,0,230,231,3,60,30,0,231,232,5,37,0,0,232,240,1,0,0,0,233,234,
      3,60,30,0,234,235,5,38,0,0,235,240,1,0,0,0,236,237,3,60,30,0,237,238,
      5,39,0,0,238,240,1,0,0,0,239,226,1,0,0,0,239,230,1,0,0,0,239,233,1,
      0,0,0,239,236,1,0,0,0,240,11,1,0,0,0,241,242,6,6,-1,0,242,243,5,40,
      0,0,243,244,3,12,6,0,244,245,5,41,0,0,245,258,1,0,0,0,246,258,3,16,
      8,0,247,248,5,42,0,0,248,258,3,12,6,16,249,250,5,43,0,0,250,258,3,
      12,6,15,251,252,5,44,0,0,252,254,5,45,0,0,253,255,5,42,0,0,254,253,
      1,0,0,0,254,255,1,0,0,0,255,256,1,0,0,0,256,258,3,12,6,14,257,241,
      1,0,0,0,257,246,1,0,0,0,257,247,1,0,0,0,257,249,1,0,0,0,257,251,1,
      0,0,0,258,313,1,0,0,0,259,260,10,12,0,0,260,261,5,49,0,0,261,312,3,
      12,6,13,262,263,10,11,0,0,263,264,7,6,0,0,264,312,3,12,6,12,265,266,
      10,10,0,0,266,267,7,7,0,0,267,312,3,12,6,11,268,269,10,9,0,0,269,270,
      7,8,0,0,270,312,3,12,6,10,271,272,10,8,0,0,272,273,3,14,7,0,273,274,
      3,12,6,9,274,312,1,0,0,0,275,276,10,7,0,0,276,277,5,55,0,0,277,278,
      5,18,0,0,278,279,1,0,0,0,279,312,3,12,6,8,280,281,10,6,0,0,281,282,
      5,56,0,0,282,283,5,18,0,0,283,284,1,0,0,0,284,312,3,12,6,7,285,286,
      10,5,0,0,286,287,5,57,0,0,287,312,3,12,6,6,288,289,10,4,0,0,289,290,
      5,58,0,0,290,312,3,12,6,5,291,292,10,2,0,0,292,293,5,59,0,0,293,312,
      3,12,6,3,294,295,10,1,0,0,295,296,5,60,0,0,296,312,3,12,6,2,297,300,
      10,13,0,0,298,301,3,62,31,0,299,301,3,64,32,0,300,298,1,0,0,0,300,
      299,1,0,0,0,301,302,1,0,0,0,302,303,7,9,0,0,303,312,1,0,0,0,304,307,
      10,3,0,0,305,308,3,62,31,0,306,308,3,64,32,0,307,305,1,0,0,0,307,306,
      1,0,0,0,308,309,1,0,0,0,309,310,3,18,9,0,310,312,1,0,0,0,311,259,1,
      0,0,0,311,262,1,0,0,0,311,265,1,0,0,0,311,268,1,0,0,0,311,271,1,0,
      0,0,311,275,1,0,0,0,311,280,1,0,0,0,311,285,1,0,0,0,311,288,1,0,0,
      0,311,291,1,0,0,0,311,294,1,0,0,0,311,297,1,0,0,0,311,304,1,0,0,0,
      312,315,1,0,0,0,313,311,1,0,0,0,313,314,1,0,0,0,314,13,1,0,0,0,315,
      313,1,0,0,0,316,330,5,61,0,0,317,319,3,62,31,0,318,317,1,0,0,0,318,
      319,1,0,0,0,319,320,1,0,0,0,320,330,5,62,0,0,321,323,3,62,31,0,322,
      321,1,0,0,0,322,323,1,0,0,0,323,324,1,0,0,0,324,326,5,63,0,0,325,327,
      5,5,0,0,326,325,1,0,0,0,326,327,1,0,0,0,327,330,1,0,0,0,328,330,5,
      64,0,0,329,316,1,0,0,0,329,318,1,0,0,0,329,322,1,0,0,0,329,328,1,0,
      0,0,330,414,1,0,0,0,331,346,5,65,0,0,332,346,5,66,0,0,333,335,3,62,
      31,0,334,333,1,0,0,0,334,335,1,0,0,0,335,336,1,0,0,0,336,346,5,67,
      0,0,337,340,3,64,32,0,338,340,5,42,0,0,339,337,1,0,0,0,339,338,1,0,
      0,0,340,341,1,0,0,0,341,343,5,63,0,0,342,344,5,5,0,0,343,342,1,0,0,
      0,343,344,1,0,0,0,344,346,1,0,0,0,345,331,1,0,0,0,345,332,1,0,0,0,
      345,334,1,0,0,0,345,339,1,0,0,0,346,414,1,0,0,0,347,365,5,68,0,0,348,
      350,3,62,31,0,349,348,1,0,0,0,349,350,1,0,0,0,350,351,1,0,0,0,351,
      365,5,69,0,0,352,354,3,62,31,0,353,352,1,0,0,0,353,354,1,0,0,0,354,
      355,1,0,0,0,355,356,5,70,0,0,356,358,5,71,0,0,357,359,5,60,0,0,358,
      357,1,0,0,0,358,359,1,0,0,0,359,360,1,0,0,0,360,362,5,63,0,0,361,363,
      5,5,0,0,362,361,1,0,0,0,362,363,1,0,0,0,363,365,1,0,0,0,364,347,1,
      0,0,0,364,349,1,0,0,0,364,353,1,0,0,0,365,414,1,0,0,0,366,379,5,72,
      0,0,367,369,3,62,31,0,368,367,1,0,0,0,368,369,1,0,0,0,369,370,1,0,
      0,0,370,379,5,69,0,0,371,373,3,62,31,0,372,371,1,0,0,0,372,373,1,0,
      0,0,373,374,1,0,0,0,374,376,5,70,0,0,375,377,5,71,0,0,376,375,1,0,
      0,0,376,377,1,0,0,0,377,379,1,0,0,0,378,366,1,0,0,0,378,368,1,0,0,
      0,378,372,1,0,0,0,379,414,1,0,0,0,380,398,5,73,0,0,381,383,3,62,31,
      0,382,381,1,0,0,0,382,383,1,0,0,0,383,384,1,0,0,0,384,398,5,74,0,0,
      385,387,3,62,31,0,386,385,1,0,0,0,386,387,1,0,0,0,387,388,1,0,0,0,
      388,389,5,75,0,0,389,391,5,71,0,0,390,392,5,60,0,0,391,390,1,0,0,0,
      391,392,1,0,0,0,392,393,1,0,0,0,393,395,5,63,0,0,394,396,5,5,0,0,395,
      394,1,0,0,0,395,396,1,0,0,0,396,398,1,0,0,0,397,380,1,0,0,0,397,382,
      1,0,0,0,397,386,1,0,0,0,398,414,1,0,0,0,399,412,5,76,0,0,400,402,3,
      62,31,0,401,400,1,0,0,0,401,402,1,0,0,0,402,403,1,0,0,0,403,412,5,
      77,0,0,404,406,3,62,31,0,405,404,1,0,0,0,405,406,1,0,0,0,406,407,1,
      0,0,0,407,409,5,75,0,0,408,410,5,71,0,0,409,408,1,0,0,0,409,410,1,
      0,0,0,410,412,1,0,0,0,411,399,1,0,0,0,411,401,1,0,0,0,411,405,1,0,
      0,0,412,414,1,0,0,0,413,329,1,0,0,0,413,345,1,0,0,0,413,364,1,0,0,
      0,413,378,1,0,0,0,413,397,1,0,0,0,413,411,1,0,0,0,414,15,1,0,0,0,415,
      416,5,40,0,0,416,417,3,16,8,0,417,418,5,41,0,0,418,433,1,0,0,0,419,
      433,3,24,12,0,420,421,5,43,0,0,421,433,3,16,8,0,422,433,3,20,10,0,
      423,424,3,28,14,0,424,425,3,16,8,0,425,433,1,0,0,0,426,433,3,40,20,
      0,427,428,3,18,9,0,428,429,3,56,28,0,429,430,3,16,8,0,430,433,1,0,
      0,0,431,433,5,196,0,0,432,415,1,0,0,0,432,419,1,0,0,0,432,420,1,0,
      0,0,432,422,1,0,0,0,432,423,1,0,0,0,432,426,1,0,0,0,432,427,1,0,0,
      0,432,431,1,0,0,0,433,17,1,0,0,0,434,442,7,10,0,0,435,442,3,48,24,
      0,436,442,3,54,27,0,437,442,3,50,25,0,438,442,3,52,26,0,439,442,3,
      42,21,0,440,442,5,196,0,0,441,434,1,0,0,0,441,435,1,0,0,0,441,436,
      1,0,0,0,441,437,1,0,0,0,441,438,1,0,0,0,441,439,1,0,0,0,441,440,1,
      0,0,0,442,19,1,0,0,0,443,444,5,81,0,0,444,447,3,16,8,0,445,446,5,82,
      0,0,446,448,3,16,8,0,447,445,1,0,0,0,447,448,1,0,0,0,448,449,1,0,0,
      0,449,450,7,2,0,0,450,451,3,16,8,0,451,493,1,0,0,0,452,453,5,81,0,
      0,453,454,3,16,8,0,454,455,5,82,0,0,455,458,3,16,8,0,456,457,7,2,0,
      0,457,459,3,16,8,0,458,456,1,0,0,0,458,459,1,0,0,0,459,493,1,0,0,0,
      460,463,5,83,0,0,461,462,5,40,0,0,462,464,5,41,0,0,463,461,1,0,0,0,
      463,464,1,0,0,0,464,493,1,0,0,0,465,466,5,196,0,0,466,477,5,40,0,0,
      467,474,3,16,8,0,468,470,5,84,0,0,469,468,1,0,0,0,469,470,1,0,0,0,
      470,471,1,0,0,0,471,473,3,16,8,0,472,469,1,0,0,0,473,476,1,0,0,0,474,
      475,1,0,0,0,474,472,1,0,0,0,475,478,1,0,0,0,476,474,1,0,0,0,477,467,
      1,0,0,0,477,478,1,0,0,0,478,479,1,0,0,0,479,493,5,41,0,0,480,481,5,
      196,0,0,481,482,5,18,0,0,482,489,3,16,8,0,483,485,5,84,0,0,484,483,
      1,0,0,0,484,485,1,0,0,0,485,486,1,0,0,0,486,488,3,16,8,0,487,484,1,
      0,0,0,488,491,1,0,0,0,489,490,1,0,0,0,489,487,1,0,0,0,490,493,1,0,
      0,0,491,489,1,0,0,0,492,443,1,0,0,0,492,452,1,0,0,0,492,460,1,0,0,
      0,492,465,1,0,0,0,492,480,1,0,0,0,493,21,1,0,0,0,494,495,5,17,0,0,
      495,496,5,196,0,0,496,497,1,0,0,0,497,23,1,0,0,0,498,507,3,26,13,0,
      499,507,5,191,0,0,500,502,5,192,0,0,501,503,5,193,0,0,502,501,1,0,
      0,0,502,503,1,0,0,0,503,507,1,0,0,0,504,507,5,189,0,0,505,507,5,190,
      0,0,506,498,1,0,0,0,506,499,1,0,0,0,506,500,1,0,0,0,506,504,1,0,0,
      0,506,505,1,0,0,0,507,25,1,0,0,0,508,509,7,11,0,0,509,27,1,0,0,0,510,
      511,7,12,0,0,511,29,1,0,0,0,512,514,5,196,0,0,513,512,1,0,0,0,514,
      517,1,0,0,0,515,513,1,0,0,0,515,516,1,0,0,0,516,518,1,0,0,0,517,515,
      1,0,0,0,518,519,3,32,16,0,519,524,3,24,12,0,520,521,5,60,0,0,521,523,
      3,24,12,0,522,520,1,0,0,0,523,526,1,0,0,0,524,522,1,0,0,0,524,525,
      1,0,0,0,525,528,1,0,0,0,526,524,1,0,0,0,527,529,3,42,21,0,528,527,
      1,0,0,0,528,529,1,0,0,0,529,567,1,0,0,0,530,532,5,196,0,0,531,530,
      1,0,0,0,532,535,1,0,0,0,533,531,1,0,0,0,533,534,1,0,0,0,534,536,1,
      0,0,0,535,533,1,0,0,0,536,541,3,24,12,0,537,538,5,60,0,0,538,540,3,
      24,12,0,539,537,1,0,0,0,540,543,1,0,0,0,541,539,1,0,0,0,541,542,1,
      0,0,0,542,544,1,0,0,0,543,541,1,0,0,0,544,545,3,42,21,0,545,567,1,
      0,0,0,546,548,5,196,0,0,547,546,1,0,0,0,548,551,1,0,0,0,549,547,1,
      0,0,0,549,550,1,0,0,0,550,553,1,0,0,0,551,549,1,0,0,0,552,554,3,32,
      16,0,553,552,1,0,0,0,553,554,1,0,0,0,554,555,1,0,0,0,555,564,3,42,
      21,0,556,561,3,24,12,0,557,558,5,60,0,0,558,560,3,24,12,0,559,557,
      1,0,0,0,560,563,1,0,0,0,561,559,1,0,0,0,561,562,1,0,0,0,562,565,1,
      0,0,0,563,561,1,0,0,0,564,556,1,0,0,0,564,565,1,0,0,0,565,567,1,0,
      0,0,566,515,1,0,0,0,566,533,1,0,0,0,566,549,1,0,0,0,567,31,1,0,0,0,
      568,574,5,107,0,0,569,570,5,108,0,0,570,574,5,109,0,0,571,572,5,108,
      0,0,572,574,5,110,0,0,573,568,1,0,0,0,573,569,1,0,0,0,573,571,1,0,
      0,0,574,33,1,0,0,0,575,576,3,36,18,0,576,577,5,40,0,0,577,578,3,16,
      8,0,578,579,5,41,0,0,579,587,1,0,0,0,580,581,3,36,18,0,581,582,5,111,
      0,0,582,587,1,0,0,0,583,584,3,36,18,0,584,585,3,16,8,0,585,587,1,0,
      0,0,586,575,1,0,0,0,586,580,1,0,0,0,586,583,1,0,0,0,587,35,1,0,0,0,
      588,589,7,13,0,0,589,591,3,44,22,0,590,592,5,112,0,0,591,590,1,0,0,
      0,591,592,1,0,0,0,592,593,1,0,0,0,593,595,5,113,0,0,594,596,5,114,
      0,0,595,594,1,0,0,0,595,596,1,0,0,0,596,650,1,0,0,0,597,598,7,13,0,
      0,598,600,3,46,23,0,599,601,5,115,0,0,600,599,1,0,0,0,600,601,1,0,
      0,0,601,602,1,0,0,0,602,604,5,113,0,0,603,605,5,114,0,0,604,603,1,
      0,0,0,604,605,1,0,0,0,605,650,1,0,0,0,606,607,7,13,0,0,607,608,3,44,
      22,0,608,609,7,14,0,0,609,611,5,113,0,0,610,612,5,114,0,0,611,610,
      1,0,0,0,611,612,1,0,0,0,612,650,1,0,0,0,613,614,7,13,0,0,614,615,3,
      28,14,0,615,619,3,44,22,0,616,620,5,98,0,0,617,620,5,118,0,0,618,620,
      5,103,0,0,619,616,1,0,0,0,619,617,1,0,0,0,619,618,1,0,0,0,620,621,
      1,0,0,0,621,623,5,113,0,0,622,624,5,114,0,0,623,622,1,0,0,0,623,624,
      1,0,0,0,624,650,1,0,0,0,625,626,7,13,0,0,626,627,3,44,22,0,627,628,
      3,24,12,0,628,629,7,15,0,0,629,631,5,113,0,0,630,632,5,114,0,0,631,
      630,1,0,0,0,631,632,1,0,0,0,632,650,1,0,0,0,633,635,7,16,0,0,634,636,
      5,114,0,0,635,634,1,0,0,0,635,636,1,0,0,0,636,650,1,0,0,0,637,645,
      5,123,0,0,638,645,5,124,0,0,639,642,5,5,0,0,640,643,3,44,22,0,641,
      643,3,46,23,0,642,640,1,0,0,0,642,641,1,0,0,0,643,645,1,0,0,0,644,
      637,1,0,0,0,644,638,1,0,0,0,644,639,1,0,0,0,645,647,1,0,0,0,646,648,
      5,113,0,0,647,646,1,0,0,0,647,648,1,0,0,0,648,650,1,0,0,0,649,588,
      1,0,0,0,649,597,1,0,0,0,649,606,1,0,0,0,649,613,1,0,0,0,649,625,1,
      0,0,0,649,633,1,0,0,0,649,644,1,0,0,0,650,37,1,0,0,0,651,652,7,17,
      0,0,652,653,5,40,0,0,653,654,3,12,6,0,654,655,5,41,0,0,655,659,1,0,
      0,0,656,657,7,17,0,0,657,659,3,12,6,0,658,651,1,0,0,0,658,656,1,0,
      0,0,659,39,1,0,0,0,660,661,3,30,15,0,661,663,3,34,17,0,662,664,5,59,
      0,0,663,662,1,0,0,0,663,664,1,0,0,0,664,665,1,0,0,0,665,667,3,34,17,
      0,666,668,5,59,0,0,667,666,1,0,0,0,667,668,1,0,0,0,668,669,1,0,0,0,
      669,671,3,34,17,0,670,672,5,59,0,0,671,670,1,0,0,0,671,672,1,0,0,0,
      672,674,1,0,0,0,673,675,3,38,19,0,674,673,1,0,0,0,674,675,1,0,0,0,
      675,701,1,0,0,0,676,677,3,30,15,0,677,679,3,34,17,0,678,680,5,59,0,
      0,679,678,1,0,0,0,679,680,1,0,0,0,680,681,1,0,0,0,681,683,3,34,17,
      0,682,684,5,59,0,0,683,682,1,0,0,0,683,684,1,0,0,0,684,686,1,0,0,0,
      685,687,3,38,19,0,686,685,1,0,0,0,686,687,1,0,0,0,687,701,1,0,0,0,
      688,689,3,30,15,0,689,691,3,34,17,0,690,692,5,59,0,0,691,690,1,0,0,
      0,691,692,1,0,0,0,692,694,1,0,0,0,693,695,3,38,19,0,694,693,1,0,0,
      0,694,695,1,0,0,0,695,701,1,0,0,0,696,698,3,30,15,0,697,699,3,38,19,
      0,698,697,1,0,0,0,698,699,1,0,0,0,699,701,1,0,0,0,700,660,1,0,0,0,
      700,676,1,0,0,0,700,688,1,0,0,0,700,696,1,0,0,0,701,41,1,0,0,0,702,
      729,7,18,0,0,703,729,7,19,0,0,704,729,7,20,0,0,705,706,7,21,0,0,706,
      716,7,22,0,0,707,708,5,139,0,0,708,716,7,23,0,0,709,716,5,141,0,0,
      710,716,5,142,0,0,711,716,5,143,0,0,712,716,5,144,0,0,713,716,5,145,
      0,0,714,716,5,146,0,0,715,705,1,0,0,0,715,707,1,0,0,0,715,709,1,0,
      0,0,715,710,1,0,0,0,715,711,1,0,0,0,715,712,1,0,0,0,715,713,1,0,0,
      0,715,714,1,0,0,0,716,729,1,0,0,0,717,729,7,24,0,0,718,729,7,25,0,
      0,719,729,7,26,0,0,720,721,5,9,0,0,721,725,7,27,0,0,722,725,5,155,
      0,0,723,725,5,156,0,0,724,720,1,0,0,0,724,722,1,0,0,0,724,723,1,0,
      0,0,725,729,1,0,0,0,726,729,7,28,0,0,727,729,7,29,0,0,728,702,1,0,
      0,0,728,703,1,0,0,0,728,704,1,0,0,0,728,715,1,0,0,0,728,717,1,0,0,
      0,728,718,1,0,0,0,728,719,1,0,0,0,728,724,1,0,0,0,728,726,1,0,0,0,
      728,727,1,0,0,0,729,43,1,0,0,0,730,735,5,34,0,0,731,735,5,37,0,0,732,
      735,7,30,0,0,733,735,7,31,0,0,734,730,1,0,0,0,734,731,1,0,0,0,734,
      732,1,0,0,0,734,733,1,0,0,0,735,45,1,0,0,0,736,738,7,30,0,0,737,739,
      5,43,0,0,738,737,1,0,0,0,738,739,1,0,0,0,739,740,1,0,0,0,740,744,5,
      34,0,0,741,742,5,34,0,0,742,744,5,161,0,0,743,736,1,0,0,0,743,741,
      1,0,0,0,744,773,1,0,0,0,745,747,7,30,0,0,746,748,5,43,0,0,747,746,
      1,0,0,0,747,748,1,0,0,0,748,749,1,0,0,0,749,753,5,37,0,0,750,751,5,
      37,0,0,751,753,5,161,0,0,752,745,1,0,0,0,752,750,1,0,0,0,753,773,1,
      0,0,0,754,756,7,31,0,0,755,757,5,43,0,0,756,755,1,0,0,0,756,757,1,
      0,0,0,757,758,1,0,0,0,758,762,5,34,0,0,759,760,5,34,0,0,760,762,5,
      163,0,0,761,754,1,0,0,0,761,759,1,0,0,0,762,773,1,0,0,0,763,765,7,
      31,0,0,764,766,5,43,0,0,765,764,1,0,0,0,765,766,1,0,0,0,766,767,1,
      0,0,0,767,771,5,37,0,0,768,769,5,37,0,0,769,771,5,163,0,0,770,763,
      1,0,0,0,770,768,1,0,0,0,771,773,1,0,0,0,772,743,1,0,0,0,772,752,1,
      0,0,0,772,761,1,0,0,0,772,770,1,0,0,0,773,47,1,0,0,0,774,775,7,32,
      0,0,775,49,1,0,0,0,776,777,7,33,0,0,777,51,1,0,0,0,778,779,7,34,0,
      0,779,53,1,0,0,0,780,781,7,35,0,0,781,55,1,0,0,0,782,783,7,36,0,0,
      783,57,1,0,0,0,784,785,7,37,0,0,785,59,1,0,0,0,786,787,7,38,0,0,787,
      61,1,0,0,0,788,789,7,39,0,0,789,63,1,0,0,0,790,791,5,45,0,0,791,800,
      5,42,0,0,792,800,5,186,0,0,793,794,5,184,0,0,794,800,5,42,0,0,795,
      800,5,187,0,0,796,797,5,185,0,0,797,800,5,42,0,0,798,800,5,188,0,0,
      799,790,1,0,0,0,799,792,1,0,0,0,799,793,1,0,0,0,799,795,1,0,0,0,799,
      796,1,0,0,0,799,798,1,0,0,0,800,65,1,0,0,0,133,68,74,79,81,86,92,97,
      100,103,108,112,116,122,127,132,135,138,142,145,149,152,169,176,181,
      184,187,190,196,199,203,206,212,215,224,228,239,254,257,300,307,311,
      313,318,322,326,329,334,339,343,345,349,353,358,362,364,368,372,376,
      378,382,386,391,395,397,401,405,409,411,413,432,441,447,458,463,469,
      474,477,484,489,492,502,506,515,524,528,533,541,549,553,561,564,566,
      573,586,591,595,600,604,611,619,623,631,635,642,644,647,649,658,663,
      667,671,674,679,683,686,691,694,698,700,715,724,728,734,738,743,747,
      752,756,761,765,770,772,799
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