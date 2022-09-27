// Generated from HoneyTalk.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkVisitor.dart';
import 'HoneyTalkBaseVisitor.dart';
const int RULE_script = 0, RULE_statement = 1, RULE_maybe = 2, RULE_actionStatement = 3, 
          RULE_clickType = 4, RULE_expression = 5, RULE_comparisonOp = 6, 
          RULE_term = 7, RULE_property = 8, RULE_function = 9, RULE_handler = 10, 
          RULE_literal = 11, RULE_cardinalValue = 12, RULE_ordinal = 13, 
          RULE_widgetIdent = 14, RULE_widgetNameModifier = 15, RULE_widgetReference = 16, 
          RULE_widgetReferencePosition = 17, RULE_widgetWhere = 18, RULE_widget = 19, 
          RULE_widgetType = 20, RULE_singleDirection = 21, RULE_doubleDirection = 22, 
          RULE_character = 23, RULE_word = 24, RULE_line = 25, RULE_item = 26, 
          RULE_of = 27, RULE_click = 28, RULE_isAre = 29, RULE_isAreNot = 30;
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
                   TOKEN_T__180 = 181, TOKEN_T__181 = 182, TOKEN_NUMBER_LITERAL = 183, 
                   TOKEN_BOOL_LITERAL = 184, TOKEN_STRING_LITERAL = 185, 
                   TOKEN_REGEX_LITERAL = 186, TOKEN_REGEX_MODIFIER = 187, 
                   TOKEN_THE = 188, TOKEN_A_AN = 189, TOKEN_ID = 190, TOKEN_ALPHA = 191, 
                   TOKEN_DIGIT = 192, TOKEN_COMMENT = 193, TOKEN_MULTILINE_COMMENT = 194, 
                   TOKEN_NEWLINE = 195, TOKEN_WHITESPACE = 196, TOKEN_UNLEXED_CHAR = 197;

  @override
  final List<String> ruleNames = [
    'script', 'statement', 'maybe', 'actionStatement', 'clickType', 'expression', 
    'comparisonOp', 'term', 'property', 'function', 'handler', 'literal', 
    'cardinalValue', 'ordinal', 'widgetIdent', 'widgetNameModifier', 'widgetReference', 
    'widgetReferencePosition', 'widgetWhere', 'widget', 'widgetType', 'singleDirection', 
    'doubleDirection', 'character', 'word', 'line', 'item', 'of', 'click', 
    'isAre', 'isAreNot'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'.'", "'if'", "'maybe'", "'try'", "'to'", "'optional'", "'optionally'", 
      "'verify'", "'check'", "'assert'", "'expect'", "'test'", "'that'", 
      "'see'", "'look'", "'at'", "'on'", "'with'", "'offset'", "'enter'", 
      "'type'", "'set'", "'as'", "'put'", "'store'", "'in'", "'into'", "'wait'", 
      "'for'", "'print'", "'output'", "'message'", "'left'", "'double'", 
      "'long'", "'right'", "'('", "')'", "'not'", "'-'", "'there'", "'is'", 
      "'visible'", "'exist'", "'exists'", "'^'", "'/'", "'*'", "'+'", "'&&'", 
      "'&'", "'starts'", "'ends'", "'contains'", "'matches'", "'and'", "'or'", 
      "'='", "'eq'", "'equal'", "'equals'", "'!='", "'<>'", "'neq'", "'>='", 
      "'gte'", "'greater'", "'than'", "'<'", "'<='", "'lte'", "'less'", 
      "'>'", "'lt'", "'length'", "'number'", "'count'", "'format'", "'from'", 
      "'now'", "','", "'zero'", "'one'", "'two'", "'three'", "'four'", "'five'", 
      "'six'", "'seven'", "'eight'", "'nine'", "'ten'", "'first'", "'second'", 
      "'third'", "'fourth'", "'fifth'", "'sixth'", "'seventh'", "'eighth'", 
      "'ninth'", "'tenth'", "'last'", "'exactly'", "'case'", "'sensitive'", 
      "'insensitive'", "'screen'", "'edge'", "'of'", "'parent'", "'corner'", 
      "'half'", "'side'", "'quarter'", "'%'", "'percent'", "'within'", "'inside'", 
      "'below'", "'above'", "'where'", "'whose'", "'widget'", "'widgets'", 
      "'button'", "'buttons'", "'btn'", "'btns'", "'link'", "'links'", "'text'", 
      "'input'", "'field'", "'fields'", "'edit'", "'texts'", "'textfield'", 
      "'textfields'", "'inputfield'", "'inputfields'", "'edittext'", "'edittexts'", 
      "'slider'", "'sliders'", "'image'", "'images'", "'list'", "'lists'", 
      "'box'", "'boxes'", "'checkbox'", "'checkboxes'", "'switch'", "'switches'", 
      "'header'", "'headers'", "'top'", "'upper'", "'bottom'", "'lower'", 
      "'character'", "'characters'", "'char'", "'chars'", "'word'", "'words'", 
      "'line'", "'lines'", "'item'", "'items'", "'click'", "'tap'", "'press'", 
      "'push'", "'hit'", "'slam'", "'are'", "'does'", "'isn't'", "'aren't'", 
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
      null, null, null, null, null, null, null, "NUMBER_LITERAL", "BOOL_LITERAL", 
      "STRING_LITERAL", "REGEX_LITERAL", "REGEX_MODIFIER", "THE", "A_AN", 
      "ID", "ALPHA", "DIGIT", "COMMENT", "MULTILINE_COMMENT", "NEWLINE", 
      "WHITESPACE", "UNLEXED_CHAR"
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
      if (((_la) & ~0x3f) == 0 && ((1 << _la) & 4122421026776) != 0 || (((_la - 75)) & ~0x3f) == 0 && ((1 << (_la - 75)) & -6341631223143596113) != 0 || (((_la - 139)) & ~0x3f) == 0 && ((1 << (_la - 139)) & 2516232352294911) != 0) {
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
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 216) != 0) {
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
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 216) != 0) {
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
      state = 170;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
      case 1:
        _localctx = ActionVerifyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 110;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 7936) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 112;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__12) {
          state = 111;
          match(TOKEN_T__12);
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
        case TOKEN_T__13:
          state = 115;
          match(TOKEN_T__13);
          break;
        case TOKEN_T__14:
          state = 116;
          match(TOKEN_T__14);
          state = 117;
          match(TOKEN_T__15);
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
        if (_la == TOKEN_T__16) {
          state = 122;
          match(TOKEN_T__16);
        }

        state = 125;
        _localctx.target = expression(0);
        state = 134;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 851968) != 0) {
          state = 131;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__15:
            state = 126;
            match(TOKEN_T__15);
            break;
          case TOKEN_T__17:
          case TOKEN_T__18:
            state = 128;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__17) {
              state = 127;
              match(TOKEN_T__17);
            }

            state = 130;
            match(TOKEN_T__18);
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
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 3985729782272) != 0 || (((_la - 75)) & ~0x3f) == 0 && ((1 << (_la - 75)) & -6341631223143596113) != 0 || (((_la - 139)) & ~0x3f) == 0 && ((1 << (_la - 139)) & 2515691186415615) != 0) {
          state = 138;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 137;
            match(TOKEN_T__16);
          }

          state = 140;
          _localctx.target = expression(0);
        }

        state = 148;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__15:
          state = 143;
          match(TOKEN_T__15);
          break;
        case TOKEN_T__17:
        case TOKEN_T__18:
          state = 145;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__17) {
            state = 144;
            match(TOKEN_T__17);
          }

          state = 147;
          match(TOKEN_T__18);
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
        if (!(_la == TOKEN_T__19 || _la == TOKEN_T__20)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
        match(TOKEN_T__21);
        state = 155;
        _localctx.variable = match(TOKEN_ID);
        state = 156;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
        if (!(_la == TOKEN_T__23 || _la == TOKEN_T__24)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 159;
        expression(0);
        state = 160;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__26)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 161;
        _localctx.variable = match(TOKEN_ID);
        break;
      case 8:
        _localctx = ActionWaitContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 163;
        match(TOKEN_T__27);
        state = 165;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__28) {
          state = 164;
          match(TOKEN_T__28);
        }

        state = 167;
        expression(0);
        break;
      case 9:
        _localctx = ActionPrintContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 168;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 7516192768) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 169;
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
      state = 182;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__32:
      case TOKEN_T__171:
      case TOKEN_T__172:
      case TOKEN_T__173:
      case TOKEN_T__174:
      case TOKEN_T__175:
      case TOKEN_T__176:
        _localctx = ClickTypeSingleContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 173;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 172;
          match(TOKEN_T__32);
        }

        state = 175;
        click();
        break;
      case TOKEN_T__33:
        _localctx = ClickTypeDoubleContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 176;
        match(TOKEN_T__33);
        state = 177;
        click();
        break;
      case TOKEN_T__34:
        _localctx = ClickTypeLongContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 178;
        match(TOKEN_T__34);
        state = 179;
        click();
        break;
      case TOKEN_T__35:
        _localctx = ClickTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 180;
        match(TOKEN_T__35);
        state = 181;
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
      state = 200;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 26, context)) {
      case 1:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 185;
        match(TOKEN_T__36);
        state = 186;
        expression(0);
        state = 187;
        match(TOKEN_T__37);
        break;
      case 2:
        _localctx = ExpressionTermContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 189;
        term();
        break;
      case 3:
        _localctx = ExpressionNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 190;
        match(TOKEN_T__38);
        state = 191;
        expression(16);
        break;
      case 4:
        _localctx = ExpressionNegateContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 192;
        match(TOKEN_T__39);
        state = 193;
        expression(15);
        break;
      case 5:
        _localctx = ExpressionExistsContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 194;
        match(TOKEN_T__40);
        state = 195;
        match(TOKEN_T__41);
        state = 197;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 25, context)) {
        case 1:
          state = 196;
          _localctx.not = match(TOKEN_T__38);
          break;
        }
        state = 199;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 256;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 254;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 29, context)) {
          case 1:
            _localctx = ExpressionPowContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 202;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 203;
            match(TOKEN_T__45);
            state = 204;
            expression(13);
            break;
          case 2:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 205;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 206;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__46 || _la == TOKEN_T__47)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 207;
            expression(12);
            break;
          case 3:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 208;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 209;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__39 || _la == TOKEN_T__48)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 210;
            expression(11);
            break;
          case 4:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 211;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 212;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__49 || _la == TOKEN_T__50)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 213;
            expression(10);
            break;
          case 5:
            _localctx = ExpressionComparisonContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 214;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 215;
            _localctx.op = comparisonOp();
            state = 216;
            expression(9);
            break;
          case 6:
            _localctx = ExpressionStartsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 218;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }

            state = 219;
            match(TOKEN_T__51);
            state = 220;
            match(TOKEN_T__17);
            state = 222;
            expression(8);
            break;
          case 7:
            _localctx = ExpressionEndsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 223;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }

            state = 224;
            match(TOKEN_T__52);
            state = 225;
            match(TOKEN_T__17);
            state = 227;
            expression(7);
            break;
          case 8:
            _localctx = ExpressionContainsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 228;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }

            state = 229;
            match(TOKEN_T__53);
            state = 230;
            expression(6);
            break;
          case 9:
            _localctx = ExpressionMatchesContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 231;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 232;
            match(TOKEN_T__54);
            state = 233;
            expression(5);
            break;
          case 10:
            _localctx = ExpressionAndContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 234;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 235;
            match(TOKEN_T__55);
            state = 236;
            expression(3);
            break;
          case 11:
            _localctx = ExpressionOrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 237;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 238;
            match(TOKEN_T__56);
            state = 239;
            expression(2);
            break;
          case 12:
            _localctx = ExpressionExistsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 240;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 243;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 27, context)) {
            case 1:
              state = 241;
              isAre();
              break;
            case 2:
              state = 242;
              isAreNot();
              break;
            }
            state = 245;
            _la = tokenStream.LA(1)!;
            if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 61572651155456) != 0)) {
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
            state = 247;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 250;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
            case 1:
              state = 248;
              isAre();
              break;
            case 2:
              state = 249;
              isAreNot();
              break;
            }
            state = 252;
            property();
            break;
          } 
        }
        state = 258;
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
      state = 356;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
      case 1:
        _localctx = ComparisonOpEqContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 272;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
        case 1:
          state = 259;
          match(TOKEN_T__57);
          break;
        case 2:
          state = 261;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 260;
            isAre();
          }

          state = 263;
          match(TOKEN_T__58);
          break;
        case 3:
          state = 265;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 264;
            isAre();
          }

          state = 267;
          match(TOKEN_T__59);
          state = 269;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 268;
            match(TOKEN_T__4);
          }

          break;
        case 4:
          state = 271;
          match(TOKEN_T__60);
          break;
        }
        break;
      case 2:
        _localctx = ComparisonOpNeqContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 288;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
        case 1:
          state = 274;
          match(TOKEN_T__61);
          break;
        case 2:
          state = 275;
          match(TOKEN_T__62);
          break;
        case 3:
          state = 277;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 276;
            isAre();
          }

          state = 279;
          match(TOKEN_T__63);
          break;
        case 4:
          state = 282;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__41:
          case TOKEN_T__177:
          case TOKEN_T__178:
          case TOKEN_T__179:
          case TOKEN_T__180:
          case TOKEN_T__181:
            state = 280;
            isAreNot();
            break;
          case TOKEN_T__38:
            state = 281;
            match(TOKEN_T__38);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 284;
          match(TOKEN_T__59);
          state = 286;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 285;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 3:
        _localctx = ComparisonOpGteContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 307;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 43, context)) {
        case 1:
          state = 290;
          match(TOKEN_T__64);
          break;
        case 2:
          state = 292;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 291;
            isAre();
          }

          state = 294;
          match(TOKEN_T__65);
          break;
        case 3:
          state = 296;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 295;
            isAre();
          }

          state = 298;
          match(TOKEN_T__66);
          state = 299;
          match(TOKEN_T__67);
          state = 301;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__56) {
            state = 300;
            match(TOKEN_T__56);
          }

          state = 303;
          match(TOKEN_T__59);
          state = 305;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 304;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 4:
        _localctx = ComparisonOpGtContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 321;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 47, context)) {
        case 1:
          state = 309;
          match(TOKEN_T__68);
          break;
        case 2:
          state = 311;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 310;
            isAre();
          }

          state = 313;
          match(TOKEN_T__65);
          break;
        case 3:
          state = 315;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 314;
            isAre();
          }

          state = 317;
          match(TOKEN_T__66);
          state = 319;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__67) {
            state = 318;
            match(TOKEN_T__67);
          }

          break;
        }
        break;
      case 5:
        _localctx = ComparisonOpLteContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 340;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 52, context)) {
        case 1:
          state = 323;
          match(TOKEN_T__69);
          break;
        case 2:
          state = 325;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 324;
            isAre();
          }

          state = 327;
          match(TOKEN_T__70);
          break;
        case 3:
          state = 329;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 328;
            isAre();
          }

          state = 331;
          match(TOKEN_T__71);
          state = 332;
          match(TOKEN_T__67);
          state = 334;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__56) {
            state = 333;
            match(TOKEN_T__56);
          }

          state = 336;
          match(TOKEN_T__59);
          state = 338;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__4) {
            state = 337;
            match(TOKEN_T__4);
          }

          break;
        }
        break;
      case 6:
        _localctx = ComparisonOpLtContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 354;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 56, context)) {
        case 1:
          state = 342;
          match(TOKEN_T__72);
          break;
        case 2:
          state = 344;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 343;
            isAre();
          }

          state = 346;
          match(TOKEN_T__73);
          break;
        case 3:
          state = 348;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178) {
            state = 347;
            isAre();
          }

          state = 350;
          match(TOKEN_T__71);
          state = 352;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__67) {
            state = 351;
            match(TOKEN_T__67);
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
      state = 375;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 58, context)) {
      case 1:
        _localctx = TermTermContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 358;
        match(TOKEN_T__36);
        state = 359;
        term();
        state = 360;
        match(TOKEN_T__37);
        break;
      case 2:
        _localctx = TermLiteralContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 362;
        literal();
        break;
      case 3:
        _localctx = TermNegateContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 363;
        match(TOKEN_T__39);
        state = 364;
        term();
        break;
      case 4:
        _localctx = TermFunctionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 365;
        function();
        break;
      case 5:
        _localctx = TermOrdinalContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 366;
        ordinal();
        state = 367;
        term();
        break;
      case 6:
        _localctx = TermWidgetContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 369;
        widget();
        break;
      case 7:
        _localctx = TermPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 370;
        property();
        state = 371;
        of();
        state = 372;
        term();
        break;
      case 8:
        _localctx = TermSymbolContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 374;
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
      state = 384;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__74:
      case TOKEN_T__75:
      case TOKEN_T__76:
        _localctx = BuiltinPropLengthContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 377;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 75)) & ~0x3f) == 0 && ((1 << (_la - 75)) & 7) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__161:
      case TOKEN_T__162:
      case TOKEN_T__163:
      case TOKEN_T__164:
        _localctx = BuiltinPropCharsContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 378;
        character();
        break;
      case TOKEN_T__169:
      case TOKEN_T__170:
        _localctx = BuiltinPropItemsContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 379;
        item();
        break;
      case TOKEN_T__165:
      case TOKEN_T__166:
        _localctx = BuiltinPropWordsContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 380;
        word();
        break;
      case TOKEN_T__167:
      case TOKEN_T__168:
        _localctx = BuiltinPropLinesContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 381;
        line();
        break;
      case TOKEN_T__8:
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
      case TOKEN_T__151:
      case TOKEN_T__152:
      case TOKEN_T__153:
      case TOKEN_T__154:
      case TOKEN_T__155:
      case TOKEN_T__156:
        _localctx = BuiltinPropWidgetTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 382;
        widgetType();
        break;
      case TOKEN_ID:
        _localctx = OtherPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 383;
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
      state = 435;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 68, context)) {
      case 1:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 386;
        match(TOKEN_T__77);
        state = 387;
        _localctx.date = term();
        state = 390;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__78) {
          state = 388;
          match(TOKEN_T__78);
          state = 389;
          _localctx.sourceFormat = term();
        }

        state = 392;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 393;
        _localctx.targetFormat = term();
        break;
      case 2:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 395;
        match(TOKEN_T__77);
        state = 396;
        _localctx.date = term();
        state = 397;
        match(TOKEN_T__78);
        state = 398;
        _localctx.sourceFormat = term();
        state = 401;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 61, context)) {
        case 1:
          state = 399;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__4 || _la == TOKEN_T__22)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 400;
          _localctx.targetFormat = term();
          break;
        }
        break;
      case 3:
        _localctx = FunctionNowContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 403;
        match(TOKEN_T__79);
        state = 406;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 62, context)) {
        case 1:
          state = 404;
          match(TOKEN_T__36);
          state = 405;
          match(TOKEN_T__37);
          break;
        }
        break;
      case 4:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 408;
        match(TOKEN_ID);
        state = 409;
        match(TOKEN_T__36);
        state = 420;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 1236950581760) != 0 || (((_la - 75)) & ~0x3f) == 0 && ((1 << (_la - 75)) & -6341631223143596113) != 0 || (((_la - 139)) & ~0x3f) == 0 && ((1 << (_la - 139)) & 2515691186415615) != 0) {
          state = 410;
          term();
          state = 417;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 412;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__80) {
                state = 411;
                match(TOKEN_T__80);
              }

              state = 414;
              term(); 
            }
            state = 419;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 64, context);
          }
        }

        state = 422;
        match(TOKEN_T__37);
        break;
      case 5:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 423;
        match(TOKEN_ID);
        state = 424;
        match(TOKEN_T__17);

        state = 425;
        term();
        state = 432;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 67, context);
        while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1 + 1) {
            state = 427;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__80) {
              state = 426;
              match(TOKEN_T__80);
            }

            state = 429;
            term(); 
          }
          state = 434;
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

  HandlerContext handler() {
    dynamic _localctx = HandlerContext(context, state);
    enterRule(_localctx, 20, RULE_handler);
    try {
      enterOuterAlt(_localctx, 1);
      state = 437;
      match(TOKEN_T__16);
      state = 438;
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
    enterRule(_localctx, 22, RULE_literal);
    try {
      state = 449;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
        _localctx = LiteralCardinalContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 441;
        cardinalValue();
        break;
      case TOKEN_STRING_LITERAL:
        _localctx = LiteralStringContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 442;
        match(TOKEN_STRING_LITERAL);
        break;
      case TOKEN_REGEX_LITERAL:
        _localctx = LiteralRegexContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 443;
        match(TOKEN_REGEX_LITERAL);
        state = 445;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 69, context)) {
        case 1:
          state = 444;
          match(TOKEN_REGEX_MODIFIER);
          break;
        }
        break;
      case TOKEN_NUMBER_LITERAL:
        _localctx = LiteralNumberContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 447;
        match(TOKEN_NUMBER_LITERAL);
        break;
      case TOKEN_BOOL_LITERAL:
        _localctx = LiteralBoolContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 448;
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
    enterRule(_localctx, 24, RULE_cardinalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 451;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 82)) & ~0x3f) == 0 && ((1 << (_la - 82)) & 2047) != 0)) {
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
    enterRule(_localctx, 26, RULE_ordinal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 453;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 93)) & ~0x3f) == 0 && ((1 << (_la - 93)) & 2047) != 0)) {
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
    enterRule(_localctx, 28, RULE_widgetIdent);
    int _la;
    try {
      int _alt;
      state = 509;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 458;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 455;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 460;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 461;
        widgetNameModifier();
        state = 462;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 467;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 72, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 463;
            match(TOKEN_T__56);
            state = 464;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal); 
          }
          state = 469;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 72, context);
        }
        state = 471;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 73, context)) {
        case 1:
          state = 470;
          widgetType();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 476;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 473;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 478;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 479;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 484;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__56) {
          state = 480;
          match(TOKEN_T__56);
          state = 481;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 486;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 487;
        widgetType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 492;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 489;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 494;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 496;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__103 || _la == TOKEN_T__104) {
          state = 495;
          widgetNameModifier();
        }

        state = 498;
        widgetType();
        state = 507;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 79, context)) {
        case 1:
          state = 499;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 504;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 78, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 500;
              match(TOKEN_T__56);
              state = 501;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal); 
            }
            state = 506;
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
    enterRule(_localctx, 30, RULE_widgetNameModifier);
    try {
      state = 516;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 81, context)) {
      case 1:
        _localctx = WidgetNameExactlyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 511;
        match(TOKEN_T__103);
        break;
      case 2:
        _localctx = WidgetNameCaseSensitiveContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 512;
        match(TOKEN_T__104);
        state = 513;
        match(TOKEN_T__105);
        break;
      case 3:
        _localctx = WidgetNameCaseInsensitiveContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 514;
        match(TOKEN_T__104);
        state = 515;
        match(TOKEN_T__106);
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
    enterRule(_localctx, 32, RULE_widgetReference);
    try {
      state = 529;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 82, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 518;
        widgetReferencePosition();
        state = 519;
        match(TOKEN_T__36);
        state = 520;
        term();
        state = 521;
        match(TOKEN_T__37);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 523;
        widgetReferencePosition();
        state = 524;
        match(TOKEN_T__107);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 526;
        widgetReferencePosition();
        state = 527;
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
      state = 592;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
      case 1:
        _localctx = WidgetReferenceEdgeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 531;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 532;
        singleDirection();
        state = 534;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__108) {
          state = 533;
          match(TOKEN_T__108);
        }

        state = 536;
        match(TOKEN_T__109);
        state = 538;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 537;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 2:
        _localctx = WidgetReferenceCornerContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 540;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 541;
        doubleDirection();
        state = 543;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__111) {
          state = 542;
          match(TOKEN_T__111);
        }

        state = 545;
        match(TOKEN_T__109);
        state = 547;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 546;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 3:
        _localctx = WidgetReferenceHalfContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 549;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 550;
        singleDirection();
        state = 551;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__112 || _la == TOKEN_T__113)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 552;
        match(TOKEN_T__109);
        state = 554;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 553;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 4:
        _localctx = WidgetReferenceFractionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 556;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 557;
        ordinal();
        state = 558;
        singleDirection();
        state = 562;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__94:
          state = 559;
          _localctx.f = match(TOKEN_T__94);
          break;
        case TOKEN_T__114:
          state = 560;
          _localctx.f = match(TOKEN_T__114);
          break;
        case TOKEN_T__99:
          state = 561;
          _localctx.f = match(TOKEN_T__99);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 564;
        match(TOKEN_T__109);
        state = 566;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 565;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 5:
        _localctx = WidgetReferencePercentageContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 568;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 67305472) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 569;
        singleDirection();
        state = 570;
        literal();
        state = 571;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__115 || _la == TOKEN_T__116)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 572;
        match(TOKEN_T__109);
        state = 574;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 573;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 6:
        _localctx = WidgetReferenceInsideContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 576;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__25 || _la == TOKEN_T__117 || _la == TOKEN_T__118)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 578;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 577;
          _localctx.isParent = match(TOKEN_T__110);
        }

        break;
      case 7:
        _localctx = WidgetReferenceToContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 587;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__119:
          state = 580;
          _localctx.below = match(TOKEN_T__119);
          break;
        case TOKEN_T__120:
          state = 581;
          _localctx.above = match(TOKEN_T__120);
          break;
        case TOKEN_T__4:
          state = 582;
          match(TOKEN_T__4);
          state = 585;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
          case 1:
            state = 583;
            singleDirection();
            break;
          case 2:
            state = 584;
            doubleDirection();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 590;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__109) {
          state = 589;
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
      state = 601;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 594;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__121 || _la == TOKEN_T__122)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 595;
        match(TOKEN_T__36);
        state = 596;
        expression(0);
        state = 597;
        match(TOKEN_T__37);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 599;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__17 || _la == TOKEN_T__121 || _la == TOKEN_T__122)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 600;
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
      state = 643;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 107, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 603;
        widgetIdent();
        state = 604;
        widgetReference();
        state = 606;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__55) {
          state = 605;
          match(TOKEN_T__55);
        }

        state = 608;
        widgetReference();
        state = 610;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__55) {
          state = 609;
          match(TOKEN_T__55);
        }

        state = 612;
        widgetReference();
        state = 614;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 99, context)) {
        case 1:
          state = 613;
          match(TOKEN_T__55);
          break;
        }
        state = 617;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
        case 1:
          state = 616;
          widgetWhere();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 619;
        widgetIdent();
        state = 620;
        widgetReference();
        state = 622;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__55) {
          state = 621;
          match(TOKEN_T__55);
        }

        state = 624;
        widgetReference();
        state = 626;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 102, context)) {
        case 1:
          state = 625;
          match(TOKEN_T__55);
          break;
        }
        state = 629;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 103, context)) {
        case 1:
          state = 628;
          widgetWhere();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 631;
        widgetIdent();
        state = 632;
        widgetReference();
        state = 634;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
        case 1:
          state = 633;
          match(TOKEN_T__55);
          break;
        }
        state = 637;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
        case 1:
          state = 636;
          widgetWhere();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 639;
        widgetIdent();
        state = 641;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 106, context)) {
        case 1:
          state = 640;
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
      state = 671;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__123:
      case TOKEN_T__124:
        _localctx = WidgetTypeWidgetContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 645;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
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
        state = 646;
        _la = tokenStream.LA(1)!;
        if (!((((_la - 126)) & ~0x3f) == 0 && ((1 << (_la - 126)) & 15) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__129:
      case TOKEN_T__130:
        _localctx = WidgetTypeLinkContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 647;
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
      case TOKEN_T__135:
      case TOKEN_T__137:
      case TOKEN_T__138:
      case TOKEN_T__139:
      case TOKEN_T__140:
      case TOKEN_T__141:
      case TOKEN_T__142:
        _localctx = WidgetTypeTextFieldContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 658;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__131:
        case TOKEN_T__132:
          state = 648;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__131 || _la == TOKEN_T__132)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 649;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__133 || _la == TOKEN_T__134)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__135:
          state = 650;
          match(TOKEN_T__135);
          state = 651;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__131 || _la == TOKEN_T__136)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          break;
        case TOKEN_T__137:
          state = 652;
          match(TOKEN_T__137);
          break;
        case TOKEN_T__138:
          state = 653;
          match(TOKEN_T__138);
          break;
        case TOKEN_T__139:
          state = 654;
          match(TOKEN_T__139);
          break;
        case TOKEN_T__140:
          state = 655;
          match(TOKEN_T__140);
          break;
        case TOKEN_T__141:
          state = 656;
          match(TOKEN_T__141);
          break;
        case TOKEN_T__142:
          state = 657;
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
        state = 660;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__143 || _la == TOKEN_T__144)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__145:
      case TOKEN_T__146:
        _localctx = WidgetTypeImageContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 661;
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
        _localctx = WidgetTypeListContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 662;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__147 || _la == TOKEN_T__148)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__8:
      case TOKEN_T__151:
      case TOKEN_T__152:
        _localctx = WidgetTypeCheckBoxContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 667;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__8:
          state = 663;
          match(TOKEN_T__8);
          state = 664;
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
          state = 665;
          match(TOKEN_T__151);
          break;
        case TOKEN_T__152:
          state = 666;
          match(TOKEN_T__152);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case TOKEN_T__153:
      case TOKEN_T__154:
        _localctx = WidgetTypeSwitchContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 669;
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
      case TOKEN_T__156:
        _localctx = WidgetTypeHeaderContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 670;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__155 || _la == TOKEN_T__156)) {
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
    enterRule(_localctx, 42, RULE_singleDirection);
    int _la;
    try {
      state = 677;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__32:
        _localctx = SingleDirectionLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 673;
        match(TOKEN_T__32);
        break;
      case TOKEN_T__35:
        _localctx = SingleDirectionRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 674;
        match(TOKEN_T__35);
        break;
      case TOKEN_T__157:
      case TOKEN_T__158:
        _localctx = SingleDirectionTopContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 675;
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
        _localctx = SingleDirectionBottomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 676;
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

  DoubleDirectionContext doubleDirection() {
    dynamic _localctx = DoubleDirectionContext(context, state);
    enterRule(_localctx, 44, RULE_doubleDirection);
    int _la;
    try {
      state = 715;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 120, context)) {
      case 1:
        _localctx = DoubleDirectionTopLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 686;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__157:
        case TOKEN_T__158:
          state = 679;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__157 || _la == TOKEN_T__158)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 681;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__39) {
            state = 680;
            match(TOKEN_T__39);
          }

          state = 683;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 684;
          match(TOKEN_T__32);
          state = 685;
          match(TOKEN_T__157);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        _localctx = DoubleDirectionTopRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 695;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__157:
        case TOKEN_T__158:
          state = 688;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__157 || _la == TOKEN_T__158)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 690;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__39) {
            state = 689;
            match(TOKEN_T__39);
          }

          state = 692;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 693;
          match(TOKEN_T__35);
          state = 694;
          match(TOKEN_T__157);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 3:
        _localctx = DoubleDirectionBottomLeftContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 704;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 697;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 699;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__39) {
            state = 698;
            match(TOKEN_T__39);
          }

          state = 701;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 702;
          match(TOKEN_T__32);
          state = 703;
          match(TOKEN_T__159);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = DoubleDirectionBottomRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 713;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 706;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 708;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__39) {
            state = 707;
            match(TOKEN_T__39);
          }

          state = 710;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 711;
          match(TOKEN_T__35);
          state = 712;
          match(TOKEN_T__159);
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
      state = 717;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 162)) & ~0x3f) == 0 && ((1 << (_la - 162)) & 15) != 0)) {
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
    enterRule(_localctx, 48, RULE_word);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 719;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__165 || _la == TOKEN_T__166)) {
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
    enterRule(_localctx, 50, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 721;
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

  ItemContext item() {
    dynamic _localctx = ItemContext(context, state);
    enterRule(_localctx, 52, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 723;
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

  OfContext of() {
    dynamic _localctx = OfContext(context, state);
    enterRule(_localctx, 54, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 725;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__25 || _la == TOKEN_T__78 || _la == TOKEN_T__109)) {
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
    enterRule(_localctx, 56, RULE_click);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 727;
      _la = tokenStream.LA(1)!;
      if (!((((_la - 172)) & ~0x3f) == 0 && ((1 << (_la - 172)) & 63) != 0)) {
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
    enterRule(_localctx, 58, RULE_isAre);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 729;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__41 || _la == TOKEN_T__177 || _la == TOKEN_T__178)) {
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
    enterRule(_localctx, 60, RULE_isAreNot);
    try {
      state = 740;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__41:
        enterOuterAlt(_localctx, 1);
        state = 731;
        match(TOKEN_T__41);
        state = 732;
        match(TOKEN_T__38);
        break;
      case TOKEN_T__179:
        enterOuterAlt(_localctx, 2);
        state = 733;
        match(TOKEN_T__179);
        break;
      case TOKEN_T__177:
        enterOuterAlt(_localctx, 3);
        state = 734;
        match(TOKEN_T__177);
        state = 735;
        match(TOKEN_T__38);
        break;
      case TOKEN_T__180:
        enterOuterAlt(_localctx, 4);
        state = 736;
        match(TOKEN_T__180);
        break;
      case TOKEN_T__178:
        enterOuterAlt(_localctx, 5);
        state = 737;
        match(TOKEN_T__178);
        state = 738;
        match(TOKEN_T__38);
        break;
      case TOKEN_T__181:
        enterOuterAlt(_localctx, 6);
        state = 739;
        match(TOKEN_T__181);
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
      4,1,197,743,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
      6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
      2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,
      20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,
      7,27,2,28,7,28,2,29,7,29,2,30,7,30,1,0,1,0,3,0,65,8,0,1,0,1,0,5,0,
      69,8,0,10,0,12,0,72,9,0,1,0,1,0,3,0,76,8,0,3,0,78,8,0,1,0,5,0,81,8,
      0,10,0,12,0,84,9,0,1,0,1,0,1,1,3,1,89,8,1,1,1,1,1,1,1,3,1,94,8,1,1,
      1,3,1,97,8,1,1,1,3,1,100,8,1,1,2,1,2,1,2,3,2,105,8,2,1,2,1,2,3,2,109,
      8,2,1,3,1,3,3,3,113,8,3,1,3,1,3,1,3,1,3,3,3,119,8,3,1,3,1,3,1,3,3,
      3,124,8,3,1,3,1,3,1,3,3,3,129,8,3,1,3,3,3,132,8,3,1,3,3,3,135,8,3,
      1,3,1,3,3,3,139,8,3,1,3,3,3,142,8,3,1,3,1,3,3,3,146,8,3,1,3,3,3,149,
      8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,
      3,166,8,3,1,3,1,3,1,3,3,3,171,8,3,1,4,3,4,174,8,4,1,4,1,4,1,4,1,4,
      1,4,1,4,1,4,3,4,183,8,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,3,5,198,8,5,1,5,3,5,201,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,3,5,244,8,5,1,5,1,5,1,5,1,5,1,5,3,5,251,8,5,1,5,1,5,5,5,255,8,
      5,10,5,12,5,258,9,5,1,6,1,6,3,6,262,8,6,1,6,1,6,3,6,266,8,6,1,6,1,
      6,3,6,270,8,6,1,6,3,6,273,8,6,1,6,1,6,1,6,3,6,278,8,6,1,6,1,6,1,6,
      3,6,283,8,6,1,6,1,6,3,6,287,8,6,3,6,289,8,6,1,6,1,6,3,6,293,8,6,1,
      6,1,6,3,6,297,8,6,1,6,1,6,1,6,3,6,302,8,6,1,6,1,6,3,6,306,8,6,3,6,
      308,8,6,1,6,1,6,3,6,312,8,6,1,6,1,6,3,6,316,8,6,1,6,1,6,3,6,320,8,
      6,3,6,322,8,6,1,6,1,6,3,6,326,8,6,1,6,1,6,3,6,330,8,6,1,6,1,6,1,6,
      3,6,335,8,6,1,6,1,6,3,6,339,8,6,3,6,341,8,6,1,6,1,6,3,6,345,8,6,1,
      6,1,6,3,6,349,8,6,1,6,1,6,3,6,353,8,6,3,6,355,8,6,3,6,357,8,6,1,7,
      1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,3,
      7,376,8,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,385,8,8,1,9,1,9,1,9,1,9,
      3,9,391,8,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,3,9,402,8,9,1,9,1,
      9,1,9,3,9,407,8,9,1,9,1,9,1,9,1,9,3,9,413,8,9,1,9,5,9,416,8,9,10,9,
      12,9,419,9,9,3,9,421,8,9,1,9,1,9,1,9,1,9,1,9,3,9,428,8,9,1,9,5,9,431,
      8,9,10,9,12,9,434,9,9,3,9,436,8,9,1,10,1,10,1,10,1,10,1,11,1,11,1,
      11,1,11,3,11,446,8,11,1,11,1,11,3,11,450,8,11,1,12,1,12,1,13,1,13,
      1,14,5,14,457,8,14,10,14,12,14,460,9,14,1,14,1,14,1,14,1,14,5,14,466,
      8,14,10,14,12,14,469,9,14,1,14,3,14,472,8,14,1,14,5,14,475,8,14,10,
      14,12,14,478,9,14,1,14,1,14,1,14,5,14,483,8,14,10,14,12,14,486,9,14,
      1,14,1,14,1,14,5,14,491,8,14,10,14,12,14,494,9,14,1,14,3,14,497,8,
      14,1,14,1,14,1,14,1,14,5,14,503,8,14,10,14,12,14,506,9,14,3,14,508,
      8,14,3,14,510,8,14,1,15,1,15,1,15,1,15,1,15,3,15,517,8,15,1,16,1,16,
      1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,3,16,530,8,16,1,17,1,
      17,1,17,3,17,535,8,17,1,17,1,17,3,17,539,8,17,1,17,1,17,1,17,3,17,
      544,8,17,1,17,1,17,3,17,548,8,17,1,17,1,17,1,17,1,17,1,17,3,17,555,
      8,17,1,17,1,17,1,17,1,17,1,17,1,17,3,17,563,8,17,1,17,1,17,3,17,567,
      8,17,1,17,1,17,1,17,1,17,1,17,1,17,3,17,575,8,17,1,17,1,17,3,17,579,
      8,17,1,17,1,17,1,17,1,17,1,17,3,17,586,8,17,3,17,588,8,17,1,17,3,17,
      591,8,17,3,17,593,8,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,602,
      8,18,1,19,1,19,1,19,3,19,607,8,19,1,19,1,19,3,19,611,8,19,1,19,1,19,
      3,19,615,8,19,1,19,3,19,618,8,19,1,19,1,19,1,19,3,19,623,8,19,1,19,
      1,19,3,19,627,8,19,1,19,3,19,630,8,19,1,19,1,19,1,19,3,19,635,8,19,
      1,19,3,19,638,8,19,1,19,1,19,3,19,642,8,19,3,19,644,8,19,1,20,1,20,
      1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,3,20,659,8,
      20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,3,20,668,8,20,1,20,1,20,3,20,
      672,8,20,1,21,1,21,1,21,1,21,3,21,678,8,21,1,22,1,22,3,22,682,8,22,
      1,22,1,22,1,22,3,22,687,8,22,1,22,1,22,3,22,691,8,22,1,22,1,22,1,22,
      3,22,696,8,22,1,22,1,22,3,22,700,8,22,1,22,1,22,1,22,3,22,705,8,22,
      1,22,1,22,3,22,709,8,22,1,22,1,22,1,22,3,22,714,8,22,3,22,716,8,22,
      1,23,1,23,1,24,1,24,1,25,1,25,1,26,1,26,1,27,1,27,1,28,1,28,1,29,1,
      29,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,3,30,741,8,30,1,30,
      2,417,432,1,10,31,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,
      36,38,40,42,44,46,48,50,52,54,56,58,60,0,39,1,0,8,12,1,0,20,21,2,0,
      5,5,23,23,1,0,24,25,1,0,26,27,1,0,30,32,1,0,47,48,2,0,40,40,49,49,
      1,0,50,51,1,0,43,45,1,0,75,77,1,0,82,92,1,0,93,103,2,0,16,17,26,26,
      1,0,113,114,1,0,116,117,2,0,26,26,118,119,2,0,18,18,122,123,1,0,124,
      125,1,0,126,129,1,0,130,131,1,0,132,133,1,0,134,135,2,0,132,132,137,
      137,1,0,144,145,1,0,146,147,1,0,148,149,1,0,150,151,1,0,154,155,1,
      0,156,157,1,0,158,159,1,0,160,161,1,0,162,165,1,0,166,167,1,0,168,
      169,1,0,170,171,3,0,26,26,79,79,110,110,1,0,172,177,2,0,42,42,178,
      179,922,0,70,1,0,0,0,2,99,1,0,0,0,4,108,1,0,0,0,6,170,1,0,0,0,8,182,
      1,0,0,0,10,200,1,0,0,0,12,356,1,0,0,0,14,375,1,0,0,0,16,384,1,0,0,
      0,18,435,1,0,0,0,20,437,1,0,0,0,22,449,1,0,0,0,24,451,1,0,0,0,26,453,
      1,0,0,0,28,509,1,0,0,0,30,516,1,0,0,0,32,529,1,0,0,0,34,592,1,0,0,
      0,36,601,1,0,0,0,38,643,1,0,0,0,40,671,1,0,0,0,42,677,1,0,0,0,44,715,
      1,0,0,0,46,717,1,0,0,0,48,719,1,0,0,0,50,721,1,0,0,0,52,723,1,0,0,
      0,54,725,1,0,0,0,56,727,1,0,0,0,58,729,1,0,0,0,60,740,1,0,0,0,62,64,
      3,2,1,0,63,65,5,1,0,0,64,63,1,0,0,0,64,65,1,0,0,0,65,66,1,0,0,0,66,
      67,5,195,0,0,67,69,1,0,0,0,68,62,1,0,0,0,69,72,1,0,0,0,70,68,1,0,0,
      0,70,71,1,0,0,0,71,77,1,0,0,0,72,70,1,0,0,0,73,75,3,2,1,0,74,76,5,
      1,0,0,75,74,1,0,0,0,75,76,1,0,0,0,76,78,1,0,0,0,77,73,1,0,0,0,77,78,
      1,0,0,0,78,82,1,0,0,0,79,81,5,195,0,0,80,79,1,0,0,0,81,84,1,0,0,0,
      82,80,1,0,0,0,82,83,1,0,0,0,83,85,1,0,0,0,84,82,1,0,0,0,85,86,5,0,
      0,1,86,1,1,0,0,0,87,89,3,4,2,0,88,87,1,0,0,0,88,89,1,0,0,0,89,90,1,
      0,0,0,90,93,3,6,3,0,91,92,5,2,0,0,92,94,3,10,5,0,93,91,1,0,0,0,93,
      94,1,0,0,0,94,100,1,0,0,0,95,97,3,4,2,0,96,95,1,0,0,0,96,97,1,0,0,
      0,97,98,1,0,0,0,98,100,3,10,5,0,99,88,1,0,0,0,99,96,1,0,0,0,100,3,
      1,0,0,0,101,109,5,3,0,0,102,104,5,4,0,0,103,105,5,5,0,0,104,103,1,
      0,0,0,104,105,1,0,0,0,105,109,1,0,0,0,106,109,5,6,0,0,107,109,5,7,
      0,0,108,101,1,0,0,0,108,102,1,0,0,0,108,106,1,0,0,0,108,107,1,0,0,
      0,109,5,1,0,0,0,110,112,7,0,0,0,111,113,5,13,0,0,112,111,1,0,0,0,112,
      113,1,0,0,0,113,114,1,0,0,0,114,171,3,10,5,0,115,119,5,14,0,0,116,
      117,5,15,0,0,117,119,5,16,0,0,118,115,1,0,0,0,118,116,1,0,0,0,119,
      120,1,0,0,0,120,171,3,10,5,0,121,123,3,8,4,0,122,124,5,17,0,0,123,
      122,1,0,0,0,123,124,1,0,0,0,124,125,1,0,0,0,125,134,3,10,5,0,126,132,
      5,16,0,0,127,129,5,18,0,0,128,127,1,0,0,0,128,129,1,0,0,0,129,130,
      1,0,0,0,130,132,5,19,0,0,131,126,1,0,0,0,131,128,1,0,0,0,132,133,1,
      0,0,0,133,135,3,10,5,0,134,131,1,0,0,0,134,135,1,0,0,0,135,171,1,0,
      0,0,136,141,3,8,4,0,137,139,5,17,0,0,138,137,1,0,0,0,138,139,1,0,0,
      0,139,140,1,0,0,0,140,142,3,10,5,0,141,138,1,0,0,0,141,142,1,0,0,0,
      142,148,1,0,0,0,143,149,5,16,0,0,144,146,5,18,0,0,145,144,1,0,0,0,
      145,146,1,0,0,0,146,147,1,0,0,0,147,149,5,19,0,0,148,143,1,0,0,0,148,
      145,1,0,0,0,149,150,1,0,0,0,150,151,3,10,5,0,151,171,1,0,0,0,152,153,
      7,1,0,0,153,171,3,10,5,0,154,155,5,22,0,0,155,156,5,190,0,0,156,157,
      7,2,0,0,157,171,3,10,5,0,158,159,7,3,0,0,159,160,3,10,5,0,160,161,
      7,4,0,0,161,162,5,190,0,0,162,171,1,0,0,0,163,165,5,28,0,0,164,166,
      5,29,0,0,165,164,1,0,0,0,165,166,1,0,0,0,166,167,1,0,0,0,167,171,3,
      10,5,0,168,169,7,5,0,0,169,171,3,10,5,0,170,110,1,0,0,0,170,118,1,
      0,0,0,170,121,1,0,0,0,170,136,1,0,0,0,170,152,1,0,0,0,170,154,1,0,
      0,0,170,158,1,0,0,0,170,163,1,0,0,0,170,168,1,0,0,0,171,7,1,0,0,0,
      172,174,5,33,0,0,173,172,1,0,0,0,173,174,1,0,0,0,174,175,1,0,0,0,175,
      183,3,56,28,0,176,177,5,34,0,0,177,183,3,56,28,0,178,179,5,35,0,0,
      179,183,3,56,28,0,180,181,5,36,0,0,181,183,3,56,28,0,182,173,1,0,0,
      0,182,176,1,0,0,0,182,178,1,0,0,0,182,180,1,0,0,0,183,9,1,0,0,0,184,
      185,6,5,-1,0,185,186,5,37,0,0,186,187,3,10,5,0,187,188,5,38,0,0,188,
      201,1,0,0,0,189,201,3,14,7,0,190,191,5,39,0,0,191,201,3,10,5,16,192,
      193,5,40,0,0,193,201,3,10,5,15,194,195,5,41,0,0,195,197,5,42,0,0,196,
      198,5,39,0,0,197,196,1,0,0,0,197,198,1,0,0,0,198,199,1,0,0,0,199,201,
      3,10,5,14,200,184,1,0,0,0,200,189,1,0,0,0,200,190,1,0,0,0,200,192,
      1,0,0,0,200,194,1,0,0,0,201,256,1,0,0,0,202,203,10,12,0,0,203,204,
      5,46,0,0,204,255,3,10,5,13,205,206,10,11,0,0,206,207,7,6,0,0,207,255,
      3,10,5,12,208,209,10,10,0,0,209,210,7,7,0,0,210,255,3,10,5,11,211,
      212,10,9,0,0,212,213,7,8,0,0,213,255,3,10,5,10,214,215,10,8,0,0,215,
      216,3,12,6,0,216,217,3,10,5,9,217,255,1,0,0,0,218,219,10,7,0,0,219,
      220,5,52,0,0,220,221,5,18,0,0,221,222,1,0,0,0,222,255,3,10,5,8,223,
      224,10,6,0,0,224,225,5,53,0,0,225,226,5,18,0,0,226,227,1,0,0,0,227,
      255,3,10,5,7,228,229,10,5,0,0,229,230,5,54,0,0,230,255,3,10,5,6,231,
      232,10,4,0,0,232,233,5,55,0,0,233,255,3,10,5,5,234,235,10,2,0,0,235,
      236,5,56,0,0,236,255,3,10,5,3,237,238,10,1,0,0,238,239,5,57,0,0,239,
      255,3,10,5,2,240,243,10,13,0,0,241,244,3,58,29,0,242,244,3,60,30,0,
      243,241,1,0,0,0,243,242,1,0,0,0,244,245,1,0,0,0,245,246,7,9,0,0,246,
      255,1,0,0,0,247,250,10,3,0,0,248,251,3,58,29,0,249,251,3,60,30,0,250,
      248,1,0,0,0,250,249,1,0,0,0,251,252,1,0,0,0,252,253,3,16,8,0,253,255,
      1,0,0,0,254,202,1,0,0,0,254,205,1,0,0,0,254,208,1,0,0,0,254,211,1,
      0,0,0,254,214,1,0,0,0,254,218,1,0,0,0,254,223,1,0,0,0,254,228,1,0,
      0,0,254,231,1,0,0,0,254,234,1,0,0,0,254,237,1,0,0,0,254,240,1,0,0,
      0,254,247,1,0,0,0,255,258,1,0,0,0,256,254,1,0,0,0,256,257,1,0,0,0,
      257,11,1,0,0,0,258,256,1,0,0,0,259,273,5,58,0,0,260,262,3,58,29,0,
      261,260,1,0,0,0,261,262,1,0,0,0,262,263,1,0,0,0,263,273,5,59,0,0,264,
      266,3,58,29,0,265,264,1,0,0,0,265,266,1,0,0,0,266,267,1,0,0,0,267,
      269,5,60,0,0,268,270,5,5,0,0,269,268,1,0,0,0,269,270,1,0,0,0,270,273,
      1,0,0,0,271,273,5,61,0,0,272,259,1,0,0,0,272,261,1,0,0,0,272,265,1,
      0,0,0,272,271,1,0,0,0,273,357,1,0,0,0,274,289,5,62,0,0,275,289,5,63,
      0,0,276,278,3,58,29,0,277,276,1,0,0,0,277,278,1,0,0,0,278,279,1,0,
      0,0,279,289,5,64,0,0,280,283,3,60,30,0,281,283,5,39,0,0,282,280,1,
      0,0,0,282,281,1,0,0,0,283,284,1,0,0,0,284,286,5,60,0,0,285,287,5,5,
      0,0,286,285,1,0,0,0,286,287,1,0,0,0,287,289,1,0,0,0,288,274,1,0,0,
      0,288,275,1,0,0,0,288,277,1,0,0,0,288,282,1,0,0,0,289,357,1,0,0,0,
      290,308,5,65,0,0,291,293,3,58,29,0,292,291,1,0,0,0,292,293,1,0,0,0,
      293,294,1,0,0,0,294,308,5,66,0,0,295,297,3,58,29,0,296,295,1,0,0,0,
      296,297,1,0,0,0,297,298,1,0,0,0,298,299,5,67,0,0,299,301,5,68,0,0,
      300,302,5,57,0,0,301,300,1,0,0,0,301,302,1,0,0,0,302,303,1,0,0,0,303,
      305,5,60,0,0,304,306,5,5,0,0,305,304,1,0,0,0,305,306,1,0,0,0,306,308,
      1,0,0,0,307,290,1,0,0,0,307,292,1,0,0,0,307,296,1,0,0,0,308,357,1,
      0,0,0,309,322,5,69,0,0,310,312,3,58,29,0,311,310,1,0,0,0,311,312,1,
      0,0,0,312,313,1,0,0,0,313,322,5,66,0,0,314,316,3,58,29,0,315,314,1,
      0,0,0,315,316,1,0,0,0,316,317,1,0,0,0,317,319,5,67,0,0,318,320,5,68,
      0,0,319,318,1,0,0,0,319,320,1,0,0,0,320,322,1,0,0,0,321,309,1,0,0,
      0,321,311,1,0,0,0,321,315,1,0,0,0,322,357,1,0,0,0,323,341,5,70,0,0,
      324,326,3,58,29,0,325,324,1,0,0,0,325,326,1,0,0,0,326,327,1,0,0,0,
      327,341,5,71,0,0,328,330,3,58,29,0,329,328,1,0,0,0,329,330,1,0,0,0,
      330,331,1,0,0,0,331,332,5,72,0,0,332,334,5,68,0,0,333,335,5,57,0,0,
      334,333,1,0,0,0,334,335,1,0,0,0,335,336,1,0,0,0,336,338,5,60,0,0,337,
      339,5,5,0,0,338,337,1,0,0,0,338,339,1,0,0,0,339,341,1,0,0,0,340,323,
      1,0,0,0,340,325,1,0,0,0,340,329,1,0,0,0,341,357,1,0,0,0,342,355,5,
      73,0,0,343,345,3,58,29,0,344,343,1,0,0,0,344,345,1,0,0,0,345,346,1,
      0,0,0,346,355,5,74,0,0,347,349,3,58,29,0,348,347,1,0,0,0,348,349,1,
      0,0,0,349,350,1,0,0,0,350,352,5,72,0,0,351,353,5,68,0,0,352,351,1,
      0,0,0,352,353,1,0,0,0,353,355,1,0,0,0,354,342,1,0,0,0,354,344,1,0,
      0,0,354,348,1,0,0,0,355,357,1,0,0,0,356,272,1,0,0,0,356,288,1,0,0,
      0,356,307,1,0,0,0,356,321,1,0,0,0,356,340,1,0,0,0,356,354,1,0,0,0,
      357,13,1,0,0,0,358,359,5,37,0,0,359,360,3,14,7,0,360,361,5,38,0,0,
      361,376,1,0,0,0,362,376,3,22,11,0,363,364,5,40,0,0,364,376,3,14,7,
      0,365,376,3,18,9,0,366,367,3,26,13,0,367,368,3,14,7,0,368,376,1,0,
      0,0,369,376,3,38,19,0,370,371,3,16,8,0,371,372,3,54,27,0,372,373,3,
      14,7,0,373,376,1,0,0,0,374,376,5,190,0,0,375,358,1,0,0,0,375,362,1,
      0,0,0,375,363,1,0,0,0,375,365,1,0,0,0,375,366,1,0,0,0,375,369,1,0,
      0,0,375,370,1,0,0,0,375,374,1,0,0,0,376,15,1,0,0,0,377,385,7,10,0,
      0,378,385,3,46,23,0,379,385,3,52,26,0,380,385,3,48,24,0,381,385,3,
      50,25,0,382,385,3,40,20,0,383,385,5,190,0,0,384,377,1,0,0,0,384,378,
      1,0,0,0,384,379,1,0,0,0,384,380,1,0,0,0,384,381,1,0,0,0,384,382,1,
      0,0,0,384,383,1,0,0,0,385,17,1,0,0,0,386,387,5,78,0,0,387,390,3,14,
      7,0,388,389,5,79,0,0,389,391,3,14,7,0,390,388,1,0,0,0,390,391,1,0,
      0,0,391,392,1,0,0,0,392,393,7,2,0,0,393,394,3,14,7,0,394,436,1,0,0,
      0,395,396,5,78,0,0,396,397,3,14,7,0,397,398,5,79,0,0,398,401,3,14,
      7,0,399,400,7,2,0,0,400,402,3,14,7,0,401,399,1,0,0,0,401,402,1,0,0,
      0,402,436,1,0,0,0,403,406,5,80,0,0,404,405,5,37,0,0,405,407,5,38,0,
      0,406,404,1,0,0,0,406,407,1,0,0,0,407,436,1,0,0,0,408,409,5,190,0,
      0,409,420,5,37,0,0,410,417,3,14,7,0,411,413,5,81,0,0,412,411,1,0,0,
      0,412,413,1,0,0,0,413,414,1,0,0,0,414,416,3,14,7,0,415,412,1,0,0,0,
      416,419,1,0,0,0,417,418,1,0,0,0,417,415,1,0,0,0,418,421,1,0,0,0,419,
      417,1,0,0,0,420,410,1,0,0,0,420,421,1,0,0,0,421,422,1,0,0,0,422,436,
      5,38,0,0,423,424,5,190,0,0,424,425,5,18,0,0,425,432,3,14,7,0,426,428,
      5,81,0,0,427,426,1,0,0,0,427,428,1,0,0,0,428,429,1,0,0,0,429,431,3,
      14,7,0,430,427,1,0,0,0,431,434,1,0,0,0,432,433,1,0,0,0,432,430,1,0,
      0,0,433,436,1,0,0,0,434,432,1,0,0,0,435,386,1,0,0,0,435,395,1,0,0,
      0,435,403,1,0,0,0,435,408,1,0,0,0,435,423,1,0,0,0,436,19,1,0,0,0,437,
      438,5,17,0,0,438,439,5,190,0,0,439,440,1,0,0,0,440,21,1,0,0,0,441,
      450,3,24,12,0,442,450,5,185,0,0,443,445,5,186,0,0,444,446,5,187,0,
      0,445,444,1,0,0,0,445,446,1,0,0,0,446,450,1,0,0,0,447,450,5,183,0,
      0,448,450,5,184,0,0,449,441,1,0,0,0,449,442,1,0,0,0,449,443,1,0,0,
      0,449,447,1,0,0,0,449,448,1,0,0,0,450,23,1,0,0,0,451,452,7,11,0,0,
      452,25,1,0,0,0,453,454,7,12,0,0,454,27,1,0,0,0,455,457,5,190,0,0,456,
      455,1,0,0,0,457,460,1,0,0,0,458,456,1,0,0,0,458,459,1,0,0,0,459,461,
      1,0,0,0,460,458,1,0,0,0,461,462,3,30,15,0,462,467,3,22,11,0,463,464,
      5,57,0,0,464,466,3,22,11,0,465,463,1,0,0,0,466,469,1,0,0,0,467,465,
      1,0,0,0,467,468,1,0,0,0,468,471,1,0,0,0,469,467,1,0,0,0,470,472,3,
      40,20,0,471,470,1,0,0,0,471,472,1,0,0,0,472,510,1,0,0,0,473,475,5,
      190,0,0,474,473,1,0,0,0,475,478,1,0,0,0,476,474,1,0,0,0,476,477,1,
      0,0,0,477,479,1,0,0,0,478,476,1,0,0,0,479,484,3,22,11,0,480,481,5,
      57,0,0,481,483,3,22,11,0,482,480,1,0,0,0,483,486,1,0,0,0,484,482,1,
      0,0,0,484,485,1,0,0,0,485,487,1,0,0,0,486,484,1,0,0,0,487,488,3,40,
      20,0,488,510,1,0,0,0,489,491,5,190,0,0,490,489,1,0,0,0,491,494,1,0,
      0,0,492,490,1,0,0,0,492,493,1,0,0,0,493,496,1,0,0,0,494,492,1,0,0,
      0,495,497,3,30,15,0,496,495,1,0,0,0,496,497,1,0,0,0,497,498,1,0,0,
      0,498,507,3,40,20,0,499,504,3,22,11,0,500,501,5,57,0,0,501,503,3,22,
      11,0,502,500,1,0,0,0,503,506,1,0,0,0,504,502,1,0,0,0,504,505,1,0,0,
      0,505,508,1,0,0,0,506,504,1,0,0,0,507,499,1,0,0,0,507,508,1,0,0,0,
      508,510,1,0,0,0,509,458,1,0,0,0,509,476,1,0,0,0,509,492,1,0,0,0,510,
      29,1,0,0,0,511,517,5,104,0,0,512,513,5,105,0,0,513,517,5,106,0,0,514,
      515,5,105,0,0,515,517,5,107,0,0,516,511,1,0,0,0,516,512,1,0,0,0,516,
      514,1,0,0,0,517,31,1,0,0,0,518,519,3,34,17,0,519,520,5,37,0,0,520,
      521,3,14,7,0,521,522,5,38,0,0,522,530,1,0,0,0,523,524,3,34,17,0,524,
      525,5,108,0,0,525,530,1,0,0,0,526,527,3,34,17,0,527,528,3,14,7,0,528,
      530,1,0,0,0,529,518,1,0,0,0,529,523,1,0,0,0,529,526,1,0,0,0,530,33,
      1,0,0,0,531,532,7,13,0,0,532,534,3,42,21,0,533,535,5,109,0,0,534,533,
      1,0,0,0,534,535,1,0,0,0,535,536,1,0,0,0,536,538,5,110,0,0,537,539,
      5,111,0,0,538,537,1,0,0,0,538,539,1,0,0,0,539,593,1,0,0,0,540,541,
      7,13,0,0,541,543,3,44,22,0,542,544,5,112,0,0,543,542,1,0,0,0,543,544,
      1,0,0,0,544,545,1,0,0,0,545,547,5,110,0,0,546,548,5,111,0,0,547,546,
      1,0,0,0,547,548,1,0,0,0,548,593,1,0,0,0,549,550,7,13,0,0,550,551,3,
      42,21,0,551,552,7,14,0,0,552,554,5,110,0,0,553,555,5,111,0,0,554,553,
      1,0,0,0,554,555,1,0,0,0,555,593,1,0,0,0,556,557,7,13,0,0,557,558,3,
      26,13,0,558,562,3,42,21,0,559,563,5,95,0,0,560,563,5,115,0,0,561,563,
      5,100,0,0,562,559,1,0,0,0,562,560,1,0,0,0,562,561,1,0,0,0,563,564,
      1,0,0,0,564,566,5,110,0,0,565,567,5,111,0,0,566,565,1,0,0,0,566,567,
      1,0,0,0,567,593,1,0,0,0,568,569,7,13,0,0,569,570,3,42,21,0,570,571,
      3,22,11,0,571,572,7,15,0,0,572,574,5,110,0,0,573,575,5,111,0,0,574,
      573,1,0,0,0,574,575,1,0,0,0,575,593,1,0,0,0,576,578,7,16,0,0,577,579,
      5,111,0,0,578,577,1,0,0,0,578,579,1,0,0,0,579,593,1,0,0,0,580,588,
      5,120,0,0,581,588,5,121,0,0,582,585,5,5,0,0,583,586,3,42,21,0,584,
      586,3,44,22,0,585,583,1,0,0,0,585,584,1,0,0,0,586,588,1,0,0,0,587,
      580,1,0,0,0,587,581,1,0,0,0,587,582,1,0,0,0,588,590,1,0,0,0,589,591,
      5,110,0,0,590,589,1,0,0,0,590,591,1,0,0,0,591,593,1,0,0,0,592,531,
      1,0,0,0,592,540,1,0,0,0,592,549,1,0,0,0,592,556,1,0,0,0,592,568,1,
      0,0,0,592,576,1,0,0,0,592,587,1,0,0,0,593,35,1,0,0,0,594,595,7,17,
      0,0,595,596,5,37,0,0,596,597,3,10,5,0,597,598,5,38,0,0,598,602,1,0,
      0,0,599,600,7,17,0,0,600,602,3,10,5,0,601,594,1,0,0,0,601,599,1,0,
      0,0,602,37,1,0,0,0,603,604,3,28,14,0,604,606,3,32,16,0,605,607,5,56,
      0,0,606,605,1,0,0,0,606,607,1,0,0,0,607,608,1,0,0,0,608,610,3,32,16,
      0,609,611,5,56,0,0,610,609,1,0,0,0,610,611,1,0,0,0,611,612,1,0,0,0,
      612,614,3,32,16,0,613,615,5,56,0,0,614,613,1,0,0,0,614,615,1,0,0,0,
      615,617,1,0,0,0,616,618,3,36,18,0,617,616,1,0,0,0,617,618,1,0,0,0,
      618,644,1,0,0,0,619,620,3,28,14,0,620,622,3,32,16,0,621,623,5,56,0,
      0,622,621,1,0,0,0,622,623,1,0,0,0,623,624,1,0,0,0,624,626,3,32,16,
      0,625,627,5,56,0,0,626,625,1,0,0,0,626,627,1,0,0,0,627,629,1,0,0,0,
      628,630,3,36,18,0,629,628,1,0,0,0,629,630,1,0,0,0,630,644,1,0,0,0,
      631,632,3,28,14,0,632,634,3,32,16,0,633,635,5,56,0,0,634,633,1,0,0,
      0,634,635,1,0,0,0,635,637,1,0,0,0,636,638,3,36,18,0,637,636,1,0,0,
      0,637,638,1,0,0,0,638,644,1,0,0,0,639,641,3,28,14,0,640,642,3,36,18,
      0,641,640,1,0,0,0,641,642,1,0,0,0,642,644,1,0,0,0,643,603,1,0,0,0,
      643,619,1,0,0,0,643,631,1,0,0,0,643,639,1,0,0,0,644,39,1,0,0,0,645,
      672,7,18,0,0,646,672,7,19,0,0,647,672,7,20,0,0,648,649,7,21,0,0,649,
      659,7,22,0,0,650,651,5,136,0,0,651,659,7,23,0,0,652,659,5,138,0,0,
      653,659,5,139,0,0,654,659,5,140,0,0,655,659,5,141,0,0,656,659,5,142,
      0,0,657,659,5,143,0,0,658,648,1,0,0,0,658,650,1,0,0,0,658,652,1,0,
      0,0,658,653,1,0,0,0,658,654,1,0,0,0,658,655,1,0,0,0,658,656,1,0,0,
      0,658,657,1,0,0,0,659,672,1,0,0,0,660,672,7,24,0,0,661,672,7,25,0,
      0,662,672,7,26,0,0,663,664,5,9,0,0,664,668,7,27,0,0,665,668,5,152,
      0,0,666,668,5,153,0,0,667,663,1,0,0,0,667,665,1,0,0,0,667,666,1,0,
      0,0,668,672,1,0,0,0,669,672,7,28,0,0,670,672,7,29,0,0,671,645,1,0,
      0,0,671,646,1,0,0,0,671,647,1,0,0,0,671,658,1,0,0,0,671,660,1,0,0,
      0,671,661,1,0,0,0,671,662,1,0,0,0,671,667,1,0,0,0,671,669,1,0,0,0,
      671,670,1,0,0,0,672,41,1,0,0,0,673,678,5,33,0,0,674,678,5,36,0,0,675,
      678,7,30,0,0,676,678,7,31,0,0,677,673,1,0,0,0,677,674,1,0,0,0,677,
      675,1,0,0,0,677,676,1,0,0,0,678,43,1,0,0,0,679,681,7,30,0,0,680,682,
      5,40,0,0,681,680,1,0,0,0,681,682,1,0,0,0,682,683,1,0,0,0,683,687,5,
      33,0,0,684,685,5,33,0,0,685,687,5,158,0,0,686,679,1,0,0,0,686,684,
      1,0,0,0,687,716,1,0,0,0,688,690,7,30,0,0,689,691,5,40,0,0,690,689,
      1,0,0,0,690,691,1,0,0,0,691,692,1,0,0,0,692,696,5,36,0,0,693,694,5,
      36,0,0,694,696,5,158,0,0,695,688,1,0,0,0,695,693,1,0,0,0,696,716,1,
      0,0,0,697,699,7,31,0,0,698,700,5,40,0,0,699,698,1,0,0,0,699,700,1,
      0,0,0,700,701,1,0,0,0,701,705,5,33,0,0,702,703,5,33,0,0,703,705,5,
      160,0,0,704,697,1,0,0,0,704,702,1,0,0,0,705,716,1,0,0,0,706,708,7,
      31,0,0,707,709,5,40,0,0,708,707,1,0,0,0,708,709,1,0,0,0,709,710,1,
      0,0,0,710,714,5,36,0,0,711,712,5,36,0,0,712,714,5,160,0,0,713,706,
      1,0,0,0,713,711,1,0,0,0,714,716,1,0,0,0,715,686,1,0,0,0,715,695,1,
      0,0,0,715,704,1,0,0,0,715,713,1,0,0,0,716,45,1,0,0,0,717,718,7,32,
      0,0,718,47,1,0,0,0,719,720,7,33,0,0,720,49,1,0,0,0,721,722,7,34,0,
      0,722,51,1,0,0,0,723,724,7,35,0,0,724,53,1,0,0,0,725,726,7,36,0,0,
      726,55,1,0,0,0,727,728,7,37,0,0,728,57,1,0,0,0,729,730,7,38,0,0,730,
      59,1,0,0,0,731,732,5,42,0,0,732,741,5,39,0,0,733,741,5,180,0,0,734,
      735,5,178,0,0,735,741,5,39,0,0,736,741,5,181,0,0,737,738,5,179,0,0,
      738,741,5,39,0,0,739,741,5,182,0,0,740,731,1,0,0,0,740,733,1,0,0,0,
      740,734,1,0,0,0,740,736,1,0,0,0,740,737,1,0,0,0,740,739,1,0,0,0,741,
      61,1,0,0,0,122,64,70,75,77,82,88,93,96,99,104,108,112,118,123,128,
      131,134,138,141,145,148,165,170,173,182,197,200,243,250,254,256,261,
      265,269,272,277,282,286,288,292,296,301,305,307,311,315,319,321,325,
      329,334,338,340,344,348,352,354,356,375,384,390,401,406,412,417,420,
      427,432,435,445,449,458,467,471,476,484,492,496,504,507,509,516,529,
      534,538,543,547,554,562,566,574,578,585,587,590,592,601,606,610,614,
      617,622,626,629,634,637,641,643,658,667,671,677,681,686,690,695,699,
      704,708,713,715,740
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