// Generated from HoneyTalk.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'HoneyTalkVisitor.dart';
import 'HoneyTalkBaseVisitor.dart';
const int RULE_script = 0, RULE_statement = 1, RULE_maybe = 2, RULE_actionStatement = 3, 
          RULE_clickType = 4, RULE_swipeType = 5, RULE_expression = 6, RULE_ifStat = 7, 
          RULE_elseIfStat = 8, RULE_elseStat = 9, RULE_comparisonOp = 10, 
          RULE_term = 11, RULE_property = 12, RULE_function = 13, RULE_handler = 14, 
          RULE_literal = 15, RULE_cardinalValue = 16, RULE_ordinal = 17, 
          RULE_widgetIdent = 18, RULE_widgetNameModifier = 19, RULE_widgetReference = 20, 
          RULE_widgetReferencePosition = 21, RULE_widgetWhere = 22, RULE_widget = 23, 
          RULE_widgetType = 24, RULE_singleDirection = 25, RULE_doubleDirection = 26, 
          RULE_character = 27, RULE_word = 28, RULE_line = 29, RULE_item = 30, 
          RULE_of = 31, RULE_click = 32, RULE_swipe = 33, RULE_isAre = 34, 
          RULE_isAreNot = 35;
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
                   TOKEN_T__186 = 187, TOKEN_NUMBER_LITERAL = 188, TOKEN_IF = 189, 
                   TOKEN_ELSE = 190, TOKEN_END_IF = 191, TOKEN_THEN = 192, 
                   TOKEN_BOOL_LITERAL = 193, TOKEN_STRING_LITERAL = 194, 
                   TOKEN_REGEX_LITERAL = 195, TOKEN_REGEX_MODIFIER = 196, 
                   TOKEN_THE = 197, TOKEN_A_AN = 198, TOKEN_ID = 199, TOKEN_ALPHA = 200, 
                   TOKEN_DIGIT = 201, TOKEN_COMMENT = 202, TOKEN_MULTILINE_COMMENT = 203, 
                   TOKEN_NEWLINE = 204, TOKEN_WHITESPACE = 205, TOKEN_UNLEXED_CHAR = 206;

  @override
  final List<String> ruleNames = [
    'script', 'statement', 'maybe', 'actionStatement', 'clickType', 'swipeType', 
    'expression', 'ifStat', 'elseIfStat', 'elseStat', 'comparisonOp', 'term', 
    'property', 'function', 'handler', 'literal', 'cardinalValue', 'ordinal', 
    'widgetIdent', 'widgetNameModifier', 'widgetReference', 'widgetReferencePosition', 
    'widgetWhere', 'widget', 'widgetType', 'singleDirection', 'doubleDirection', 
    'character', 'word', 'line', 'item', 'of', 'click', 'swipe', 'isAre', 
    'isAreNot'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'.'", "'maybe'", "'try'", "'to'", "'optional'", "'optionally'", 
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
      "'are'", "'does'", "'isn't'", "'aren't'", "'doesn't'", null, "'if'", 
      "'else'", "'endif'", "'then'", null, null, null, null, "'the'"
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
      null, "NUMBER_LITERAL", "IF", "ELSE", "END_IF", "THEN", "BOOL_LITERAL", 
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
      state = 80;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 72;
          statement();
          state = 74;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__0) {
            state = 73;
            match(TOKEN_T__0);
          }

          state = 76;
          match(TOKEN_NEWLINE); 
        }
        state = 82;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
      }
      state = 87;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (((_la) & ~0x3f) == 0 && ((1 << _la) & 16075688800236) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 320182184047011839) != 0) {
        state = 83;
        statement();
        state = 85;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__0) {
          state = 84;
          match(TOKEN_T__0);
        }

      }

      state = 92;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 89;
        match(TOKEN_NEWLINE);
        state = 94;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 95;
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
      state = 110;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
      case 1:
        _localctx = StatementIfContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 97;
        ifStat();
        break;
      case 2:
        _localctx = StatementActionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 99;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 108) != 0) {
          state = 98;
          maybe();
        }

        state = 101;
        actionStatement();
        state = 104;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_IF) {
          state = 102;
          match(TOKEN_IF);
          state = 103;
          expression(0);
        }

        break;
      case 3:
        _localctx = StatementExpressionContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 107;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 108) != 0) {
          state = 106;
          maybe();
        }

        state = 109;
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
      state = 119;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 1);
        state = 112;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 2);
        state = 113;
        match(TOKEN_T__2);
        state = 115;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__3) {
          state = 114;
          match(TOKEN_T__3);
        }

        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 3);
        state = 117;
        match(TOKEN_T__4);
        break;
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 4);
        state = 118;
        match(TOKEN_T__5);
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
      state = 219;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
      case 1:
        _localctx = ActionVerifyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 121;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 3968) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 123;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__11) {
          state = 122;
          match(TOKEN_T__11);
        }

        state = 125;
        expression(0);
        break;
      case 2:
        _localctx = ActionSeeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 129;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__12:
          state = 126;
          match(TOKEN_T__12);
          break;
        case TOKEN_T__13:
          state = 127;
          match(TOKEN_T__13);
          state = 128;
          match(TOKEN_T__14);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 131;
        expression(0);
        break;
      case 3:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 132;
        clickType();
        state = 134;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__15) {
          state = 133;
          match(TOKEN_T__15);
        }

        state = 136;
        _localctx.target = expression(0);
        state = 145;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 425984) != 0) {
          state = 142;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__14:
            state = 137;
            match(TOKEN_T__14);
            break;
          case TOKEN_T__16:
          case TOKEN_T__17:
            state = 139;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__16) {
              state = 138;
              match(TOKEN_T__16);
            }

            state = 141;
            match(TOKEN_T__17);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 144;
          _localctx.offset = expression(0);
        }

        break;
      case 4:
        _localctx = ActionClickContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 147;
        clickType();
        state = 152;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 15942918668544) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 319896319613724671) != 0) {
          state = 149;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__15) {
            state = 148;
            match(TOKEN_T__15);
          }

          state = 151;
          _localctx.target = expression(0);
        }

        state = 159;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__14:
          state = 154;
          match(TOKEN_T__14);
          break;
        case TOKEN_T__16:
        case TOKEN_T__17:
          state = 156;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 155;
            match(TOKEN_T__16);
          }

          state = 158;
          match(TOKEN_T__17);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 161;
        _localctx.offset = expression(0);
        break;
      case 5:
        _localctx = ActionEnterContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 163;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__18 || _la == TOKEN_T__19)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 164;
        _localctx.value = expression(0);
        break;
      case 6:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 165;
        match(TOKEN_T__20);
        state = 166;
        _localctx.variable = match(TOKEN_ID);
        state = 167;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__3 || _la == TOKEN_T__21)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 168;
        expression(0);
        break;
      case 7:
        _localctx = ActionSetVariableContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 169;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__22 || _la == TOKEN_T__23)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 170;
        expression(0);
        state = 171;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__24 || _la == TOKEN_T__25)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 172;
        _localctx.variable = match(TOKEN_ID);
        break;
      case 8:
        _localctx = ActionWaitContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 174;
        match(TOKEN_T__26);
        state = 176;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__27) {
          state = 175;
          match(TOKEN_T__27);
        }

        state = 178;
        expression(0);
        break;
      case 9:
        _localctx = ActionPrintContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 179;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 3758096384) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 180;
        expression(0);
        break;
      case 10:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 181;
        swipeType();
        state = 183;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__15) {
          state = 182;
          match(TOKEN_T__15);
        }

        state = 185;
        _localctx.target = expression(0);
        state = 194;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 425984) != 0) {
          state = 191;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__14:
            state = 186;
            match(TOKEN_T__14);
            break;
          case TOKEN_T__16:
          case TOKEN_T__17:
            state = 188;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__16) {
              state = 187;
              match(TOKEN_T__16);
            }

            state = 190;
            match(TOKEN_T__17);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 193;
          _localctx.offset = expression(0);
        }

        state = 197;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__31) {
          state = 196;
          match(TOKEN_T__31);
        }

        state = 199;
        _localctx.pixels = expression(0);
        break;
      case 11:
        _localctx = ActionSwipeContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 201;
        swipeType();
        state = 206;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 15942918668544) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 319896319613724671) != 0) {
          state = 203;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__15) {
            state = 202;
            match(TOKEN_T__15);
          }

          state = 205;
          _localctx.target = expression(0);
        }

        state = 213;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__14:
          state = 208;
          match(TOKEN_T__14);
          break;
        case TOKEN_T__16:
        case TOKEN_T__17:
          state = 210;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__16) {
            state = 209;
            match(TOKEN_T__16);
          }

          state = 212;
          match(TOKEN_T__17);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 215;
        _localctx.offset = expression(0);

        state = 216;
        match(TOKEN_T__31);
        state = 217;
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
      state = 231;
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
        state = 222;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 221;
          match(TOKEN_T__32);
        }

        state = 224;
        click();
        break;
      case TOKEN_T__33:
        _localctx = ClickTypeDoubleContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 225;
        match(TOKEN_T__33);
        state = 226;
        click();
        break;
      case TOKEN_T__34:
        _localctx = ClickTypeLongContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 227;
        match(TOKEN_T__34);
        state = 228;
        click();
        break;
      case TOKEN_T__35:
        _localctx = ClickTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 229;
        match(TOKEN_T__35);
        state = 230;
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
      state = 246;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 35, context)) {
      case 1:
        _localctx = SwipeTypeLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 233;
        swipe();
        state = 235;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__32) {
          state = 234;
          match(TOKEN_T__32);
        }

        break;
      case 2:
        _localctx = SwipeTypeRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 237;
        swipe();
        state = 238;
        match(TOKEN_T__35);
        break;
      case 3:
        _localctx = SwipeTypeUpContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 240;
        swipe();
        state = 241;
        match(TOKEN_T__36);
        break;
      case 4:
        _localctx = SwipeTypeDownContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 243;
        swipe();
        state = 244;
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
      state = 264;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
      case 1:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 249;
        match(TOKEN_T__38);
        state = 250;
        expression(0);
        state = 251;
        match(TOKEN_T__39);
        break;
      case 2:
        _localctx = ExpressionTermContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 253;
        term();
        break;
      case 3:
        _localctx = ExpressionNotContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 254;
        match(TOKEN_T__40);
        state = 255;
        expression(16);
        break;
      case 4:
        _localctx = ExpressionNegateContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 256;
        match(TOKEN_T__41);
        state = 257;
        expression(15);
        break;
      case 5:
        _localctx = ExpressionExistsContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 258;
        match(TOKEN_T__42);
        state = 259;
        match(TOKEN_T__43);
        state = 261;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
        case 1:
          state = 260;
          _localctx.not = match(TOKEN_T__40);
          break;
        }
        state = 263;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 320;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 318;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
          case 1:
            _localctx = ExpressionPowContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 266;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 267;
            match(TOKEN_T__47);
            state = 268;
            expression(13);
            break;
          case 2:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 269;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 270;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__48 || _la == TOKEN_T__49)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 271;
            expression(12);
            break;
          case 3:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 272;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 273;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__41 || _la == TOKEN_T__50)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 274;
            expression(11);
            break;
          case 4:
            _localctx = ExpressionBinaryOpContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 275;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 276;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_T__51 || _la == TOKEN_T__52)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 277;
            expression(10);
            break;
          case 5:
            _localctx = ExpressionComparisonContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 278;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 279;
            _localctx.op = comparisonOp();
            state = 280;
            expression(9);
            break;
          case 6:
            _localctx = ExpressionStartsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 282;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }

            state = 283;
            match(TOKEN_T__53);
            state = 284;
            match(TOKEN_T__16);
            state = 286;
            expression(8);
            break;
          case 7:
            _localctx = ExpressionEndsWithContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 287;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }

            state = 288;
            match(TOKEN_T__54);
            state = 289;
            match(TOKEN_T__16);
            state = 291;
            expression(7);
            break;
          case 8:
            _localctx = ExpressionContainsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 292;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }

            state = 293;
            match(TOKEN_T__55);
            state = 294;
            expression(6);
            break;
          case 9:
            _localctx = ExpressionMatchesContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 295;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 296;
            match(TOKEN_T__56);
            state = 297;
            expression(5);
            break;
          case 10:
            _localctx = ExpressionAndContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 298;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 299;
            match(TOKEN_T__57);
            state = 300;
            expression(3);
            break;
          case 11:
            _localctx = ExpressionOrContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 301;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 302;
            match(TOKEN_T__58);
            state = 303;
            expression(2);
            break;
          case 12:
            _localctx = ExpressionExistsContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 304;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 307;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
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
            state = 311;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 314;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
            case 1:
              state = 312;
              isAre();
              break;
            case 2:
              state = 313;
              isAreNot();
              break;
            }
            state = 316;
            property();
            break;
          } 
        }
        state = 322;
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

  IfStatContext ifStat() {
    dynamic _localctx = IfStatContext(context, state);
    enterRule(_localctx, 14, RULE_ifStat);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 323;
      match(TOKEN_IF);
      state = 324;
      expression(0);
      state = 325;
      match(TOKEN_THEN);
      state = 329;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 326;
        match(TOKEN_NEWLINE);
        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 337;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((_la) & ~0x3f) == 0 && ((1 << _la) & 132770197376) != 0 || (((_la - 174)) & ~0x3f) == 0 && ((1 << (_la - 174)) & 511) != 0) {
        state = 332;
        actionStatement();
        state = 333;
        match(TOKEN_NEWLINE);
        state = 339;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 341;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 44, context)) {
      case 1:
        state = 340;
        elseIfStat();
        break;
      }
      state = 344;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 343;
        elseStat();
      }

      state = 346;
      match(TOKEN_END_IF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElseIfStatContext elseIfStat() {
    dynamic _localctx = ElseIfStatContext(context, state);
    enterRule(_localctx, 16, RULE_elseIfStat);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 348;
      match(TOKEN_ELSE);
      state = 349;
      match(TOKEN_IF);
      state = 350;
      expression(0);
      state = 351;
      match(TOKEN_THEN);
      state = 355;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 352;
        match(TOKEN_NEWLINE);
        state = 357;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 363;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((_la) & ~0x3f) == 0 && ((1 << _la) & 132770197376) != 0 || (((_la - 174)) & ~0x3f) == 0 && ((1 << (_la - 174)) & 511) != 0) {
        state = 358;
        actionStatement();
        state = 359;
        match(TOKEN_NEWLINE);
        state = 365;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
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

  ElseStatContext elseStat() {
    dynamic _localctx = ElseStatContext(context, state);
    enterRule(_localctx, 18, RULE_elseStat);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 366;
      match(TOKEN_ELSE);
      state = 370;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 367;
        match(TOKEN_NEWLINE);
        state = 372;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 378;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (((_la) & ~0x3f) == 0 && ((1 << _la) & 132770197376) != 0 || (((_la - 174)) & ~0x3f) == 0 && ((1 << (_la - 174)) & 511) != 0) {
        state = 373;
        actionStatement();
        state = 374;
        match(TOKEN_NEWLINE);
        state = 380;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
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

  ComparisonOpContext comparisonOp() {
    dynamic _localctx = ComparisonOpContext(context, state);
    enterRule(_localctx, 20, RULE_comparisonOp);
    int _la;
    try {
      state = 478;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 76, context)) {
      case 1:
        _localctx = ComparisonOpEqContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 394;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 53, context)) {
        case 1:
          state = 381;
          match(TOKEN_T__59);
          break;
        case 2:
          state = 383;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 382;
            isAre();
          }

          state = 385;
          match(TOKEN_T__60);
          break;
        case 3:
          state = 387;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 386;
            isAre();
          }

          state = 389;
          match(TOKEN_T__61);
          state = 391;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__3) {
            state = 390;
            match(TOKEN_T__3);
          }

          break;
        case 4:
          state = 393;
          match(TOKEN_T__62);
          break;
        }
        break;
      case 2:
        _localctx = ComparisonOpNeqContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 410;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
        case 1:
          state = 396;
          match(TOKEN_T__63);
          break;
        case 2:
          state = 397;
          match(TOKEN_T__64);
          break;
        case 3:
          state = 399;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 398;
            isAre();
          }

          state = 401;
          match(TOKEN_T__65);
          break;
        case 4:
          state = 404;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_T__43:
          case TOKEN_T__182:
          case TOKEN_T__183:
          case TOKEN_T__184:
          case TOKEN_T__185:
          case TOKEN_T__186:
            state = 402;
            isAreNot();
            break;
          case TOKEN_T__40:
            state = 403;
            match(TOKEN_T__40);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 406;
          match(TOKEN_T__61);
          state = 408;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__3) {
            state = 407;
            match(TOKEN_T__3);
          }

          break;
        }
        break;
      case 3:
        _localctx = ComparisonOpGteContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 429;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 62, context)) {
        case 1:
          state = 412;
          match(TOKEN_T__66);
          break;
        case 2:
          state = 414;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 413;
            isAre();
          }

          state = 416;
          match(TOKEN_T__67);
          break;
        case 3:
          state = 418;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 417;
            isAre();
          }

          state = 420;
          match(TOKEN_T__68);
          state = 421;
          match(TOKEN_T__69);
          state = 423;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__58) {
            state = 422;
            match(TOKEN_T__58);
          }

          state = 425;
          match(TOKEN_T__61);
          state = 427;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__3) {
            state = 426;
            match(TOKEN_T__3);
          }

          break;
        }
        break;
      case 4:
        _localctx = ComparisonOpGtContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 443;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 66, context)) {
        case 1:
          state = 431;
          match(TOKEN_T__70);
          break;
        case 2:
          state = 433;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 432;
            isAre();
          }

          state = 435;
          match(TOKEN_T__67);
          break;
        case 3:
          state = 437;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 436;
            isAre();
          }

          state = 439;
          match(TOKEN_T__68);
          state = 441;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__69) {
            state = 440;
            match(TOKEN_T__69);
          }

          break;
        }
        break;
      case 5:
        _localctx = ComparisonOpLteContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 462;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 71, context)) {
        case 1:
          state = 445;
          match(TOKEN_T__71);
          break;
        case 2:
          state = 447;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 446;
            isAre();
          }

          state = 449;
          match(TOKEN_T__72);
          break;
        case 3:
          state = 451;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 450;
            isAre();
          }

          state = 453;
          match(TOKEN_T__73);
          state = 454;
          match(TOKEN_T__69);
          state = 456;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__58) {
            state = 455;
            match(TOKEN_T__58);
          }

          state = 458;
          match(TOKEN_T__61);
          state = 460;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__3) {
            state = 459;
            match(TOKEN_T__3);
          }

          break;
        }
        break;
      case 6:
        _localctx = ComparisonOpLtContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 476;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 75, context)) {
        case 1:
          state = 464;
          match(TOKEN_T__74);
          break;
        case 2:
          state = 466;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 465;
            isAre();
          }

          state = 468;
          match(TOKEN_T__75);
          break;
        case 3:
          state = 470;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__43 || _la == TOKEN_T__182 || _la == TOKEN_T__183) {
            state = 469;
            isAre();
          }

          state = 472;
          match(TOKEN_T__73);
          state = 474;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__69) {
            state = 473;
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
    enterRule(_localctx, 22, RULE_term);
    try {
      state = 497;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 77, context)) {
      case 1:
        _localctx = TermTermContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 480;
        match(TOKEN_T__38);
        state = 481;
        term();
        state = 482;
        match(TOKEN_T__39);
        break;
      case 2:
        _localctx = TermLiteralContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 484;
        literal();
        break;
      case 3:
        _localctx = TermNegateContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 485;
        match(TOKEN_T__41);
        state = 486;
        term();
        break;
      case 4:
        _localctx = TermFunctionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 487;
        function();
        break;
      case 5:
        _localctx = TermOrdinalContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 488;
        ordinal();
        state = 489;
        term();
        break;
      case 6:
        _localctx = TermWidgetContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 491;
        widget();
        break;
      case 7:
        _localctx = TermPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 492;
        property();
        state = 493;
        of();
        state = 494;
        term();
        break;
      case 8:
        _localctx = TermSymbolContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 496;
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
    enterRule(_localctx, 24, RULE_property);
    int _la;
    try {
      state = 506;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__76:
      case TOKEN_T__77:
      case TOKEN_T__78:
        _localctx = BuiltinPropLengthContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 499;
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
        state = 500;
        character();
        break;
      case TOKEN_T__171:
      case TOKEN_T__172:
        _localctx = BuiltinPropItemsContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 501;
        item();
        break;
      case TOKEN_T__167:
      case TOKEN_T__168:
        _localctx = BuiltinPropWordsContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 502;
        word();
        break;
      case TOKEN_T__169:
      case TOKEN_T__170:
        _localctx = BuiltinPropLinesContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 503;
        line();
        break;
      case TOKEN_T__7:
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
        state = 504;
        widgetType();
        break;
      case TOKEN_ID:
        _localctx = OtherPropertyContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 505;
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
    enterRule(_localctx, 26, RULE_function);
    int _la;
    try {
      int _alt;
      state = 557;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 87, context)) {
      case 1:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 508;
        match(TOKEN_T__79);
        state = 509;
        _localctx.date = term();
        state = 512;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__80) {
          state = 510;
          match(TOKEN_T__80);
          state = 511;
          _localctx.sourceFormat = term();
        }

        state = 514;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__3 || _la == TOKEN_T__21)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 515;
        _localctx.targetFormat = term();
        break;
      case 2:
        _localctx = FunctionFormatContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 517;
        match(TOKEN_T__79);
        state = 518;
        _localctx.date = term();
        state = 519;
        match(TOKEN_T__80);
        state = 520;
        _localctx.sourceFormat = term();
        state = 523;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
        case 1:
          state = 521;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__3 || _la == TOKEN_T__21)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 522;
          _localctx.targetFormat = term();
          break;
        }
        break;
      case 3:
        _localctx = FunctionNowContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 525;
        match(TOKEN_T__81);
        state = 528;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 81, context)) {
        case 1:
          state = 526;
          match(TOKEN_T__38);
          state = 527;
          match(TOKEN_T__39);
          break;
        }
        break;
      case 4:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 530;
        match(TOKEN_ID);
        state = 531;
        match(TOKEN_T__38);
        state = 542;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (((_la) & ~0x3f) == 0 && ((1 << _la) & 4947802325248) != 0 || (((_la - 77)) & ~0x3f) == 0 && ((1 << (_la - 77)) & -6341631223143596113) != 0 || (((_la - 141)) & ~0x3f) == 0 && ((1 << (_la - 141)) & 319896319613724671) != 0) {
          state = 532;
          term();
          state = 539;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 83, context);
          while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1 + 1) {
              state = 534;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
              if (_la == TOKEN_T__82) {
                state = 533;
                match(TOKEN_T__82);
              }

              state = 536;
              term(); 
            }
            state = 541;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 83, context);
          }
        }

        state = 544;
        match(TOKEN_T__39);
        break;
      case 5:
        _localctx = FunctionCustomContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 545;
        match(TOKEN_ID);
        state = 546;
        match(TOKEN_T__16);

        state = 547;
        term();
        state = 554;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 86, context);
        while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1 + 1) {
            state = 549;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_T__82) {
              state = 548;
              match(TOKEN_T__82);
            }

            state = 551;
            term(); 
          }
          state = 556;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 86, context);
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
    enterRule(_localctx, 28, RULE_handler);
    try {
      enterOuterAlt(_localctx, 1);
      state = 559;
      match(TOKEN_T__15);
      state = 560;
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
    enterRule(_localctx, 30, RULE_literal);
    try {
      state = 571;
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
        state = 563;
        cardinalValue();
        break;
      case TOKEN_STRING_LITERAL:
        _localctx = LiteralStringContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 564;
        match(TOKEN_STRING_LITERAL);
        break;
      case TOKEN_REGEX_LITERAL:
        _localctx = LiteralRegexContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 565;
        match(TOKEN_REGEX_LITERAL);
        state = 567;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 88, context)) {
        case 1:
          state = 566;
          match(TOKEN_REGEX_MODIFIER);
          break;
        }
        break;
      case TOKEN_NUMBER_LITERAL:
        _localctx = LiteralNumberContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 569;
        match(TOKEN_NUMBER_LITERAL);
        break;
      case TOKEN_BOOL_LITERAL:
        _localctx = LiteralBoolContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 570;
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
    enterRule(_localctx, 32, RULE_cardinalValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 573;
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
    enterRule(_localctx, 34, RULE_ordinal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 575;
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
    enterRule(_localctx, 36, RULE_widgetIdent);
    int _la;
    try {
      int _alt;
      state = 631;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 99, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 580;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 577;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 582;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 583;
        widgetNameModifier();
        state = 584;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 589;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 91, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 585;
            match(TOKEN_T__58);
            state = 586;
            _localctx._literal = literal();
            _localctx.name.add(_localctx._literal); 
          }
          state = 591;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 91, context);
        }
        state = 593;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
        case 1:
          state = 592;
          widgetType();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 598;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 595;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 600;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 601;
        _localctx._literal = literal();
        _localctx.name.add(_localctx._literal);
        state = 606;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__58) {
          state = 602;
          match(TOKEN_T__58);
          state = 603;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 608;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 609;
        widgetType();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 614;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_ID) {
          state = 611;
          _localctx._ID = match(TOKEN_ID);
          _localctx.attr.add(_localctx._ID);
          state = 616;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 618;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__105 || _la == TOKEN_T__106) {
          state = 617;
          widgetNameModifier();
        }

        state = 620;
        widgetType();
        state = 629;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 98, context)) {
        case 1:
          state = 621;
          _localctx._literal = literal();
          _localctx.name.add(_localctx._literal);
          state = 626;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 97, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 622;
              match(TOKEN_T__58);
              state = 623;
              _localctx._literal = literal();
              _localctx.name.add(_localctx._literal); 
            }
            state = 628;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 97, context);
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
    enterRule(_localctx, 38, RULE_widgetNameModifier);
    try {
      state = 638;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 100, context)) {
      case 1:
        _localctx = WidgetNameExactlyContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 633;
        match(TOKEN_T__105);
        break;
      case 2:
        _localctx = WidgetNameCaseSensitiveContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 634;
        match(TOKEN_T__106);
        state = 635;
        match(TOKEN_T__107);
        break;
      case 3:
        _localctx = WidgetNameCaseInsensitiveContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 636;
        match(TOKEN_T__106);
        state = 637;
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
    enterRule(_localctx, 40, RULE_widgetReference);
    try {
      state = 651;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 101, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 640;
        widgetReferencePosition();
        state = 641;
        match(TOKEN_T__38);
        state = 642;
        term();
        state = 643;
        match(TOKEN_T__39);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 645;
        widgetReferencePosition();
        state = 646;
        match(TOKEN_T__109);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 648;
        widgetReferencePosition();
        state = 649;
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
    enterRule(_localctx, 42, RULE_widgetReferencePosition);
    int _la;
    try {
      state = 714;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 114, context)) {
      case 1:
        _localctx = WidgetReferenceEdgeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 653;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 33652736) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 654;
        singleDirection();
        state = 656;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__110) {
          state = 655;
          match(TOKEN_T__110);
        }

        state = 658;
        match(TOKEN_T__111);
        state = 660;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 659;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 2:
        _localctx = WidgetReferenceCornerContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 662;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 33652736) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 663;
        doubleDirection();
        state = 665;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__113) {
          state = 664;
          match(TOKEN_T__113);
        }

        state = 667;
        match(TOKEN_T__111);
        state = 669;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 668;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 3:
        _localctx = WidgetReferenceHalfContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 671;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 33652736) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 672;
        singleDirection();
        state = 673;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__114 || _la == TOKEN_T__115)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 674;
        match(TOKEN_T__111);
        state = 676;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 675;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 4:
        _localctx = WidgetReferenceFractionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 678;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 33652736) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 679;
        ordinal();
        state = 680;
        singleDirection();
        state = 684;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__96:
          state = 681;
          _localctx.f = match(TOKEN_T__96);
          break;
        case TOKEN_T__116:
          state = 682;
          _localctx.f = match(TOKEN_T__116);
          break;
        case TOKEN_T__101:
          state = 683;
          _localctx.f = match(TOKEN_T__101);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 686;
        match(TOKEN_T__111);
        state = 688;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 687;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 5:
        _localctx = WidgetReferencePercentageContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 690;
        _la = tokenStream.LA(1)!;
        if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 33652736) != 0)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 691;
        singleDirection();
        state = 692;
        literal();
        state = 693;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__117 || _la == TOKEN_T__118)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 694;
        match(TOKEN_T__111);
        state = 696;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 695;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 6:
        _localctx = WidgetReferenceInsideContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 698;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__24 || _la == TOKEN_T__119 || _la == TOKEN_T__120)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 700;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__112) {
          state = 699;
          _localctx.isParent = match(TOKEN_T__112);
        }

        break;
      case 7:
        _localctx = WidgetReferenceToContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 709;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__121:
          state = 702;
          _localctx.below = match(TOKEN_T__121);
          break;
        case TOKEN_T__122:
          state = 703;
          _localctx.above = match(TOKEN_T__122);
          break;
        case TOKEN_T__3:
          state = 704;
          match(TOKEN_T__3);
          state = 707;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 111, context)) {
          case 1:
            state = 705;
            singleDirection();
            break;
          case 2:
            state = 706;
            doubleDirection();
            break;
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 712;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__111) {
          state = 711;
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
    enterRule(_localctx, 44, RULE_widgetWhere);
    int _la;
    try {
      state = 723;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 115, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 716;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__16 || _la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 717;
        match(TOKEN_T__38);
        state = 718;
        expression(0);
        state = 719;
        match(TOKEN_T__39);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 721;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__16 || _la == TOKEN_T__123 || _la == TOKEN_T__124)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 722;
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
    enterRule(_localctx, 46, RULE_widget);
    int _la;
    try {
      state = 765;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 126, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 725;
        widgetIdent();
        state = 726;
        widgetReference();
        state = 728;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 727;
          match(TOKEN_T__57);
        }

        state = 730;
        widgetReference();
        state = 732;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 731;
          match(TOKEN_T__57);
        }

        state = 734;
        widgetReference();
        state = 736;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 118, context)) {
        case 1:
          state = 735;
          match(TOKEN_T__57);
          break;
        }
        state = 739;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 119, context)) {
        case 1:
          state = 738;
          widgetWhere();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 741;
        widgetIdent();
        state = 742;
        widgetReference();
        state = 744;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_T__57) {
          state = 743;
          match(TOKEN_T__57);
        }

        state = 746;
        widgetReference();
        state = 748;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 121, context)) {
        case 1:
          state = 747;
          match(TOKEN_T__57);
          break;
        }
        state = 751;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 122, context)) {
        case 1:
          state = 750;
          widgetWhere();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 753;
        widgetIdent();
        state = 754;
        widgetReference();
        state = 756;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 123, context)) {
        case 1:
          state = 755;
          match(TOKEN_T__57);
          break;
        }
        state = 759;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 124, context)) {
        case 1:
          state = 758;
          widgetWhere();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 761;
        widgetIdent();
        state = 763;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 125, context)) {
        case 1:
          state = 762;
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
    enterRule(_localctx, 48, RULE_widgetType);
    int _la;
    try {
      state = 793;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__125:
      case TOKEN_T__126:
        _localctx = WidgetTypeWidgetContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 767;
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
        state = 768;
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
        state = 769;
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
        state = 780;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__133:
        case TOKEN_T__134:
          state = 770;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__133 || _la == TOKEN_T__134)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 771;
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
          state = 772;
          match(TOKEN_T__137);
          state = 773;
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
          state = 774;
          match(TOKEN_T__139);
          break;
        case TOKEN_T__140:
          state = 775;
          match(TOKEN_T__140);
          break;
        case TOKEN_T__141:
          state = 776;
          match(TOKEN_T__141);
          break;
        case TOKEN_T__142:
          state = 777;
          match(TOKEN_T__142);
          break;
        case TOKEN_T__143:
          state = 778;
          match(TOKEN_T__143);
          break;
        case TOKEN_T__144:
          state = 779;
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
        state = 782;
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
        state = 783;
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
        state = 784;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_T__149 || _la == TOKEN_T__150)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        break;
      case TOKEN_T__7:
      case TOKEN_T__153:
      case TOKEN_T__154:
        _localctx = WidgetTypeCheckBoxContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 789;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__7:
          state = 785;
          match(TOKEN_T__7);
          state = 786;
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
          state = 787;
          match(TOKEN_T__153);
          break;
        case TOKEN_T__154:
          state = 788;
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
        state = 791;
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
        state = 792;
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
    enterRule(_localctx, 50, RULE_singleDirection);
    int _la;
    try {
      state = 799;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__32:
        _localctx = SingleDirectionLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 795;
        match(TOKEN_T__32);
        break;
      case TOKEN_T__35:
        _localctx = SingleDirectionRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 796;
        match(TOKEN_T__35);
        break;
      case TOKEN_T__159:
      case TOKEN_T__160:
        _localctx = SingleDirectionTopContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 797;
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
        state = 798;
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
    enterRule(_localctx, 52, RULE_doubleDirection);
    int _la;
    try {
      state = 837;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 139, context)) {
      case 1:
        _localctx = DoubleDirectionTopLeftContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 808;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 801;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 803;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 802;
            match(TOKEN_T__41);
          }

          state = 805;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 806;
          match(TOKEN_T__32);
          state = 807;
          match(TOKEN_T__159);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 2:
        _localctx = DoubleDirectionTopRightContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 817;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__159:
        case TOKEN_T__160:
          state = 810;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__159 || _la == TOKEN_T__160)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 812;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 811;
            match(TOKEN_T__41);
          }

          state = 814;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 815;
          match(TOKEN_T__35);
          state = 816;
          match(TOKEN_T__159);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 3:
        _localctx = DoubleDirectionBottomLeftContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 826;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 819;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 821;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 820;
            match(TOKEN_T__41);
          }

          state = 823;
          match(TOKEN_T__32);
          break;
        case TOKEN_T__32:
          state = 824;
          match(TOKEN_T__32);
          state = 825;
          match(TOKEN_T__161);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = DoubleDirectionBottomRightContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 835;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_T__161:
        case TOKEN_T__162:
          state = 828;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_T__161 || _la == TOKEN_T__162)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 830;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_T__41) {
            state = 829;
            match(TOKEN_T__41);
          }

          state = 832;
          match(TOKEN_T__35);
          break;
        case TOKEN_T__35:
          state = 833;
          match(TOKEN_T__35);
          state = 834;
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
    enterRule(_localctx, 54, RULE_character);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 839;
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
    enterRule(_localctx, 56, RULE_word);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 841;
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
    enterRule(_localctx, 58, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 843;
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
    enterRule(_localctx, 60, RULE_item);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 845;
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
    enterRule(_localctx, 62, RULE_of);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 847;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__24 || _la == TOKEN_T__80 || _la == TOKEN_T__111)) {
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
    enterRule(_localctx, 64, RULE_click);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 849;
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
    enterRule(_localctx, 66, RULE_swipe);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 851;
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
    enterRule(_localctx, 68, RULE_isAre);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 853;
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
    enterRule(_localctx, 70, RULE_isAreNot);
    try {
      state = 864;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__43:
        enterOuterAlt(_localctx, 1);
        state = 855;
        match(TOKEN_T__43);
        state = 856;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__184:
        enterOuterAlt(_localctx, 2);
        state = 857;
        match(TOKEN_T__184);
        break;
      case TOKEN_T__182:
        enterOuterAlt(_localctx, 3);
        state = 858;
        match(TOKEN_T__182);
        state = 859;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__185:
        enterOuterAlt(_localctx, 4);
        state = 860;
        match(TOKEN_T__185);
        break;
      case TOKEN_T__183:
        enterOuterAlt(_localctx, 5);
        state = 861;
        match(TOKEN_T__183);
        state = 862;
        match(TOKEN_T__40);
        break;
      case TOKEN_T__186:
        enterOuterAlt(_localctx, 6);
        state = 863;
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
      4,1,206,867,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
      6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
      2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,
      20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,
      7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,
      34,7,34,2,35,7,35,1,0,1,0,3,0,75,8,0,1,0,1,0,5,0,79,8,0,10,0,12,0,
      82,9,0,1,0,1,0,3,0,86,8,0,3,0,88,8,0,1,0,5,0,91,8,0,10,0,12,0,94,9,
      0,1,0,1,0,1,1,1,1,3,1,100,8,1,1,1,1,1,1,1,3,1,105,8,1,1,1,3,1,108,
      8,1,1,1,3,1,111,8,1,1,2,1,2,1,2,3,2,116,8,2,1,2,1,2,3,2,120,8,2,1,
      3,1,3,3,3,124,8,3,1,3,1,3,1,3,1,3,3,3,130,8,3,1,3,1,3,1,3,3,3,135,
      8,3,1,3,1,3,1,3,3,3,140,8,3,1,3,3,3,143,8,3,1,3,3,3,146,8,3,1,3,1,
      3,3,3,150,8,3,1,3,3,3,153,8,3,1,3,1,3,3,3,157,8,3,1,3,3,3,160,8,3,
      1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,3,177,
      8,3,1,3,1,3,1,3,1,3,1,3,3,3,184,8,3,1,3,1,3,1,3,3,3,189,8,3,1,3,3,
      3,192,8,3,1,3,3,3,195,8,3,1,3,3,3,198,8,3,1,3,1,3,1,3,1,3,3,3,204,
      8,3,1,3,3,3,207,8,3,1,3,1,3,3,3,211,8,3,1,3,3,3,214,8,3,1,3,1,3,1,
      3,1,3,3,3,220,8,3,1,4,3,4,223,8,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,
      232,8,4,1,5,1,5,3,5,236,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,
      5,247,8,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,
      262,8,6,1,6,3,6,265,8,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,
      1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,308,8,
      6,1,6,1,6,1,6,1,6,1,6,3,6,315,8,6,1,6,1,6,5,6,319,8,6,10,6,12,6,322,
      9,6,1,7,1,7,1,7,1,7,5,7,328,8,7,10,7,12,7,331,9,7,1,7,1,7,1,7,5,7,
      336,8,7,10,7,12,7,339,9,7,1,7,3,7,342,8,7,1,7,3,7,345,8,7,1,7,1,7,
      1,8,1,8,1,8,1,8,1,8,5,8,354,8,8,10,8,12,8,357,9,8,1,8,1,8,1,8,5,8,
      362,8,8,10,8,12,8,365,9,8,1,9,1,9,5,9,369,8,9,10,9,12,9,372,9,9,1,
      9,1,9,1,9,5,9,377,8,9,10,9,12,9,380,9,9,1,10,1,10,3,10,384,8,10,1,
      10,1,10,3,10,388,8,10,1,10,1,10,3,10,392,8,10,1,10,3,10,395,8,10,1,
      10,1,10,1,10,3,10,400,8,10,1,10,1,10,1,10,3,10,405,8,10,1,10,1,10,
      3,10,409,8,10,3,10,411,8,10,1,10,1,10,3,10,415,8,10,1,10,1,10,3,10,
      419,8,10,1,10,1,10,1,10,3,10,424,8,10,1,10,1,10,3,10,428,8,10,3,10,
      430,8,10,1,10,1,10,3,10,434,8,10,1,10,1,10,3,10,438,8,10,1,10,1,10,
      3,10,442,8,10,3,10,444,8,10,1,10,1,10,3,10,448,8,10,1,10,1,10,3,10,
      452,8,10,1,10,1,10,1,10,3,10,457,8,10,1,10,1,10,3,10,461,8,10,3,10,
      463,8,10,1,10,1,10,3,10,467,8,10,1,10,1,10,3,10,471,8,10,1,10,1,10,
      3,10,475,8,10,3,10,477,8,10,3,10,479,8,10,1,11,1,11,1,11,1,11,1,11,
      1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,3,11,498,
      8,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,507,8,12,1,13,1,13,1,
      13,1,13,3,13,513,8,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,
      3,13,524,8,13,1,13,1,13,1,13,3,13,529,8,13,1,13,1,13,1,13,1,13,3,13,
      535,8,13,1,13,5,13,538,8,13,10,13,12,13,541,9,13,3,13,543,8,13,1,13,
      1,13,1,13,1,13,1,13,3,13,550,8,13,1,13,5,13,553,8,13,10,13,12,13,556,
      9,13,3,13,558,8,13,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,3,15,568,
      8,15,1,15,1,15,3,15,572,8,15,1,16,1,16,1,17,1,17,1,18,5,18,579,8,18,
      10,18,12,18,582,9,18,1,18,1,18,1,18,1,18,5,18,588,8,18,10,18,12,18,
      591,9,18,1,18,3,18,594,8,18,1,18,5,18,597,8,18,10,18,12,18,600,9,18,
      1,18,1,18,1,18,5,18,605,8,18,10,18,12,18,608,9,18,1,18,1,18,1,18,5,
      18,613,8,18,10,18,12,18,616,9,18,1,18,3,18,619,8,18,1,18,1,18,1,18,
      1,18,5,18,625,8,18,10,18,12,18,628,9,18,3,18,630,8,18,3,18,632,8,18,
      1,19,1,19,1,19,1,19,1,19,3,19,639,8,19,1,20,1,20,1,20,1,20,1,20,1,
      20,1,20,1,20,1,20,1,20,1,20,3,20,652,8,20,1,21,1,21,1,21,3,21,657,
      8,21,1,21,1,21,3,21,661,8,21,1,21,1,21,1,21,3,21,666,8,21,1,21,1,21,
      3,21,670,8,21,1,21,1,21,1,21,1,21,1,21,3,21,677,8,21,1,21,1,21,1,21,
      1,21,1,21,1,21,3,21,685,8,21,1,21,1,21,3,21,689,8,21,1,21,1,21,1,21,
      1,21,1,21,1,21,3,21,697,8,21,1,21,1,21,3,21,701,8,21,1,21,1,21,1,21,
      1,21,1,21,3,21,708,8,21,3,21,710,8,21,1,21,3,21,713,8,21,3,21,715,
      8,21,1,22,1,22,1,22,1,22,1,22,1,22,1,22,3,22,724,8,22,1,23,1,23,1,
      23,3,23,729,8,23,1,23,1,23,3,23,733,8,23,1,23,1,23,3,23,737,8,23,1,
      23,3,23,740,8,23,1,23,1,23,1,23,3,23,745,8,23,1,23,1,23,3,23,749,8,
      23,1,23,3,23,752,8,23,1,23,1,23,1,23,3,23,757,8,23,1,23,3,23,760,8,
      23,1,23,1,23,3,23,764,8,23,3,23,766,8,23,1,24,1,24,1,24,1,24,1,24,
      1,24,1,24,1,24,1,24,1,24,1,24,1,24,1,24,3,24,781,8,24,1,24,1,24,1,
      24,1,24,1,24,1,24,1,24,3,24,790,8,24,1,24,1,24,3,24,794,8,24,1,25,
      1,25,1,25,1,25,3,25,800,8,25,1,26,1,26,3,26,804,8,26,1,26,1,26,1,26,
      3,26,809,8,26,1,26,1,26,3,26,813,8,26,1,26,1,26,1,26,3,26,818,8,26,
      1,26,1,26,3,26,822,8,26,1,26,1,26,1,26,3,26,827,8,26,1,26,1,26,3,26,
      831,8,26,1,26,1,26,1,26,3,26,836,8,26,3,26,838,8,26,1,27,1,27,1,28,
      1,28,1,29,1,29,1,30,1,30,1,31,1,31,1,32,1,32,1,33,1,33,1,34,1,34,1,
      35,1,35,1,35,1,35,1,35,1,35,1,35,1,35,1,35,3,35,865,8,35,1,35,2,539,
      554,1,12,36,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,
      40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,0,40,1,0,7,11,1,0,
      19,20,2,0,4,4,22,22,1,0,23,24,1,0,25,26,1,0,29,31,1,0,49,50,2,0,42,
      42,51,51,1,0,52,53,1,0,45,47,1,0,77,79,1,0,84,94,1,0,95,105,2,0,15,
      16,25,25,1,0,115,116,1,0,118,119,2,0,25,25,120,121,2,0,17,17,124,125,
      1,0,126,127,1,0,128,131,1,0,132,133,1,0,134,135,1,0,136,137,2,0,134,
      134,139,139,1,0,146,147,1,0,148,149,1,0,150,151,1,0,152,153,1,0,156,
      157,1,0,158,159,1,0,160,161,1,0,162,163,1,0,164,167,1,0,168,169,1,
      0,170,171,1,0,172,173,3,0,25,25,81,81,112,112,1,0,174,179,1,0,180,
      182,2,0,44,44,183,184,1065,0,80,1,0,0,0,2,110,1,0,0,0,4,119,1,0,0,
      0,6,219,1,0,0,0,8,231,1,0,0,0,10,246,1,0,0,0,12,264,1,0,0,0,14,323,
      1,0,0,0,16,348,1,0,0,0,18,366,1,0,0,0,20,478,1,0,0,0,22,497,1,0,0,
      0,24,506,1,0,0,0,26,557,1,0,0,0,28,559,1,0,0,0,30,571,1,0,0,0,32,573,
      1,0,0,0,34,575,1,0,0,0,36,631,1,0,0,0,38,638,1,0,0,0,40,651,1,0,0,
      0,42,714,1,0,0,0,44,723,1,0,0,0,46,765,1,0,0,0,48,793,1,0,0,0,50,799,
      1,0,0,0,52,837,1,0,0,0,54,839,1,0,0,0,56,841,1,0,0,0,58,843,1,0,0,
      0,60,845,1,0,0,0,62,847,1,0,0,0,64,849,1,0,0,0,66,851,1,0,0,0,68,853,
      1,0,0,0,70,864,1,0,0,0,72,74,3,2,1,0,73,75,5,1,0,0,74,73,1,0,0,0,74,
      75,1,0,0,0,75,76,1,0,0,0,76,77,5,204,0,0,77,79,1,0,0,0,78,72,1,0,0,
      0,79,82,1,0,0,0,80,78,1,0,0,0,80,81,1,0,0,0,81,87,1,0,0,0,82,80,1,
      0,0,0,83,85,3,2,1,0,84,86,5,1,0,0,85,84,1,0,0,0,85,86,1,0,0,0,86,88,
      1,0,0,0,87,83,1,0,0,0,87,88,1,0,0,0,88,92,1,0,0,0,89,91,5,204,0,0,
      90,89,1,0,0,0,91,94,1,0,0,0,92,90,1,0,0,0,92,93,1,0,0,0,93,95,1,0,
      0,0,94,92,1,0,0,0,95,96,5,0,0,1,96,1,1,0,0,0,97,111,3,14,7,0,98,100,
      3,4,2,0,99,98,1,0,0,0,99,100,1,0,0,0,100,101,1,0,0,0,101,104,3,6,3,
      0,102,103,5,189,0,0,103,105,3,12,6,0,104,102,1,0,0,0,104,105,1,0,0,
      0,105,111,1,0,0,0,106,108,3,4,2,0,107,106,1,0,0,0,107,108,1,0,0,0,
      108,109,1,0,0,0,109,111,3,12,6,0,110,97,1,0,0,0,110,99,1,0,0,0,110,
      107,1,0,0,0,111,3,1,0,0,0,112,120,5,2,0,0,113,115,5,3,0,0,114,116,
      5,4,0,0,115,114,1,0,0,0,115,116,1,0,0,0,116,120,1,0,0,0,117,120,5,
      5,0,0,118,120,5,6,0,0,119,112,1,0,0,0,119,113,1,0,0,0,119,117,1,0,
      0,0,119,118,1,0,0,0,120,5,1,0,0,0,121,123,7,0,0,0,122,124,5,12,0,0,
      123,122,1,0,0,0,123,124,1,0,0,0,124,125,1,0,0,0,125,220,3,12,6,0,126,
      130,5,13,0,0,127,128,5,14,0,0,128,130,5,15,0,0,129,126,1,0,0,0,129,
      127,1,0,0,0,130,131,1,0,0,0,131,220,3,12,6,0,132,134,3,8,4,0,133,135,
      5,16,0,0,134,133,1,0,0,0,134,135,1,0,0,0,135,136,1,0,0,0,136,145,3,
      12,6,0,137,143,5,15,0,0,138,140,5,17,0,0,139,138,1,0,0,0,139,140,1,
      0,0,0,140,141,1,0,0,0,141,143,5,18,0,0,142,137,1,0,0,0,142,139,1,0,
      0,0,143,144,1,0,0,0,144,146,3,12,6,0,145,142,1,0,0,0,145,146,1,0,0,
      0,146,220,1,0,0,0,147,152,3,8,4,0,148,150,5,16,0,0,149,148,1,0,0,0,
      149,150,1,0,0,0,150,151,1,0,0,0,151,153,3,12,6,0,152,149,1,0,0,0,152,
      153,1,0,0,0,153,159,1,0,0,0,154,160,5,15,0,0,155,157,5,17,0,0,156,
      155,1,0,0,0,156,157,1,0,0,0,157,158,1,0,0,0,158,160,5,18,0,0,159,154,
      1,0,0,0,159,156,1,0,0,0,160,161,1,0,0,0,161,162,3,12,6,0,162,220,1,
      0,0,0,163,164,7,1,0,0,164,220,3,12,6,0,165,166,5,21,0,0,166,167,5,
      199,0,0,167,168,7,2,0,0,168,220,3,12,6,0,169,170,7,3,0,0,170,171,3,
      12,6,0,171,172,7,4,0,0,172,173,5,199,0,0,173,220,1,0,0,0,174,176,5,
      27,0,0,175,177,5,28,0,0,176,175,1,0,0,0,176,177,1,0,0,0,177,178,1,
      0,0,0,178,220,3,12,6,0,179,180,7,5,0,0,180,220,3,12,6,0,181,183,3,
      10,5,0,182,184,5,16,0,0,183,182,1,0,0,0,183,184,1,0,0,0,184,185,1,
      0,0,0,185,194,3,12,6,0,186,192,5,15,0,0,187,189,5,17,0,0,188,187,1,
      0,0,0,188,189,1,0,0,0,189,190,1,0,0,0,190,192,5,18,0,0,191,186,1,0,
      0,0,191,188,1,0,0,0,192,193,1,0,0,0,193,195,3,12,6,0,194,191,1,0,0,
      0,194,195,1,0,0,0,195,197,1,0,0,0,196,198,5,32,0,0,197,196,1,0,0,0,
      197,198,1,0,0,0,198,199,1,0,0,0,199,200,3,12,6,0,200,220,1,0,0,0,201,
      206,3,10,5,0,202,204,5,16,0,0,203,202,1,0,0,0,203,204,1,0,0,0,204,
      205,1,0,0,0,205,207,3,12,6,0,206,203,1,0,0,0,206,207,1,0,0,0,207,213,
      1,0,0,0,208,214,5,15,0,0,209,211,5,17,0,0,210,209,1,0,0,0,210,211,
      1,0,0,0,211,212,1,0,0,0,212,214,5,18,0,0,213,208,1,0,0,0,213,210,1,
      0,0,0,214,215,1,0,0,0,215,216,3,12,6,0,216,217,5,32,0,0,217,218,3,
      12,6,0,218,220,1,0,0,0,219,121,1,0,0,0,219,129,1,0,0,0,219,132,1,0,
      0,0,219,147,1,0,0,0,219,163,1,0,0,0,219,165,1,0,0,0,219,169,1,0,0,
      0,219,174,1,0,0,0,219,179,1,0,0,0,219,181,1,0,0,0,219,201,1,0,0,0,
      220,7,1,0,0,0,221,223,5,33,0,0,222,221,1,0,0,0,222,223,1,0,0,0,223,
      224,1,0,0,0,224,232,3,64,32,0,225,226,5,34,0,0,226,232,3,64,32,0,227,
      228,5,35,0,0,228,232,3,64,32,0,229,230,5,36,0,0,230,232,3,64,32,0,
      231,222,1,0,0,0,231,225,1,0,0,0,231,227,1,0,0,0,231,229,1,0,0,0,232,
      9,1,0,0,0,233,235,3,66,33,0,234,236,5,33,0,0,235,234,1,0,0,0,235,236,
      1,0,0,0,236,247,1,0,0,0,237,238,3,66,33,0,238,239,5,36,0,0,239,247,
      1,0,0,0,240,241,3,66,33,0,241,242,5,37,0,0,242,247,1,0,0,0,243,244,
      3,66,33,0,244,245,5,38,0,0,245,247,1,0,0,0,246,233,1,0,0,0,246,237,
      1,0,0,0,246,240,1,0,0,0,246,243,1,0,0,0,247,11,1,0,0,0,248,249,6,6,
      -1,0,249,250,5,39,0,0,250,251,3,12,6,0,251,252,5,40,0,0,252,265,1,
      0,0,0,253,265,3,22,11,0,254,255,5,41,0,0,255,265,3,12,6,16,256,257,
      5,42,0,0,257,265,3,12,6,15,258,259,5,43,0,0,259,261,5,44,0,0,260,262,
      5,41,0,0,261,260,1,0,0,0,261,262,1,0,0,0,262,263,1,0,0,0,263,265,3,
      12,6,14,264,248,1,0,0,0,264,253,1,0,0,0,264,254,1,0,0,0,264,256,1,
      0,0,0,264,258,1,0,0,0,265,320,1,0,0,0,266,267,10,12,0,0,267,268,5,
      48,0,0,268,319,3,12,6,13,269,270,10,11,0,0,270,271,7,6,0,0,271,319,
      3,12,6,12,272,273,10,10,0,0,273,274,7,7,0,0,274,319,3,12,6,11,275,
      276,10,9,0,0,276,277,7,8,0,0,277,319,3,12,6,10,278,279,10,8,0,0,279,
      280,3,20,10,0,280,281,3,12,6,9,281,319,1,0,0,0,282,283,10,7,0,0,283,
      284,5,54,0,0,284,285,5,17,0,0,285,286,1,0,0,0,286,319,3,12,6,8,287,
      288,10,6,0,0,288,289,5,55,0,0,289,290,5,17,0,0,290,291,1,0,0,0,291,
      319,3,12,6,7,292,293,10,5,0,0,293,294,5,56,0,0,294,319,3,12,6,6,295,
      296,10,4,0,0,296,297,5,57,0,0,297,319,3,12,6,5,298,299,10,2,0,0,299,
      300,5,58,0,0,300,319,3,12,6,3,301,302,10,1,0,0,302,303,5,59,0,0,303,
      319,3,12,6,2,304,307,10,13,0,0,305,308,3,68,34,0,306,308,3,70,35,0,
      307,305,1,0,0,0,307,306,1,0,0,0,308,309,1,0,0,0,309,310,7,9,0,0,310,
      319,1,0,0,0,311,314,10,3,0,0,312,315,3,68,34,0,313,315,3,70,35,0,314,
      312,1,0,0,0,314,313,1,0,0,0,315,316,1,0,0,0,316,317,3,24,12,0,317,
      319,1,0,0,0,318,266,1,0,0,0,318,269,1,0,0,0,318,272,1,0,0,0,318,275,
      1,0,0,0,318,278,1,0,0,0,318,282,1,0,0,0,318,287,1,0,0,0,318,292,1,
      0,0,0,318,295,1,0,0,0,318,298,1,0,0,0,318,301,1,0,0,0,318,304,1,0,
      0,0,318,311,1,0,0,0,319,322,1,0,0,0,320,318,1,0,0,0,320,321,1,0,0,
      0,321,13,1,0,0,0,322,320,1,0,0,0,323,324,5,189,0,0,324,325,3,12,6,
      0,325,329,5,192,0,0,326,328,5,204,0,0,327,326,1,0,0,0,328,331,1,0,
      0,0,329,327,1,0,0,0,329,330,1,0,0,0,330,337,1,0,0,0,331,329,1,0,0,
      0,332,333,3,6,3,0,333,334,5,204,0,0,334,336,1,0,0,0,335,332,1,0,0,
      0,336,339,1,0,0,0,337,335,1,0,0,0,337,338,1,0,0,0,338,341,1,0,0,0,
      339,337,1,0,0,0,340,342,3,16,8,0,341,340,1,0,0,0,341,342,1,0,0,0,342,
      344,1,0,0,0,343,345,3,18,9,0,344,343,1,0,0,0,344,345,1,0,0,0,345,346,
      1,0,0,0,346,347,5,191,0,0,347,15,1,0,0,0,348,349,5,190,0,0,349,350,
      5,189,0,0,350,351,3,12,6,0,351,355,5,192,0,0,352,354,5,204,0,0,353,
      352,1,0,0,0,354,357,1,0,0,0,355,353,1,0,0,0,355,356,1,0,0,0,356,363,
      1,0,0,0,357,355,1,0,0,0,358,359,3,6,3,0,359,360,5,204,0,0,360,362,
      1,0,0,0,361,358,1,0,0,0,362,365,1,0,0,0,363,361,1,0,0,0,363,364,1,
      0,0,0,364,17,1,0,0,0,365,363,1,0,0,0,366,370,5,190,0,0,367,369,5,204,
      0,0,368,367,1,0,0,0,369,372,1,0,0,0,370,368,1,0,0,0,370,371,1,0,0,
      0,371,378,1,0,0,0,372,370,1,0,0,0,373,374,3,6,3,0,374,375,5,204,0,
      0,375,377,1,0,0,0,376,373,1,0,0,0,377,380,1,0,0,0,378,376,1,0,0,0,
      378,379,1,0,0,0,379,19,1,0,0,0,380,378,1,0,0,0,381,395,5,60,0,0,382,
      384,3,68,34,0,383,382,1,0,0,0,383,384,1,0,0,0,384,385,1,0,0,0,385,
      395,5,61,0,0,386,388,3,68,34,0,387,386,1,0,0,0,387,388,1,0,0,0,388,
      389,1,0,0,0,389,391,5,62,0,0,390,392,5,4,0,0,391,390,1,0,0,0,391,392,
      1,0,0,0,392,395,1,0,0,0,393,395,5,63,0,0,394,381,1,0,0,0,394,383,1,
      0,0,0,394,387,1,0,0,0,394,393,1,0,0,0,395,479,1,0,0,0,396,411,5,64,
      0,0,397,411,5,65,0,0,398,400,3,68,34,0,399,398,1,0,0,0,399,400,1,0,
      0,0,400,401,1,0,0,0,401,411,5,66,0,0,402,405,3,70,35,0,403,405,5,41,
      0,0,404,402,1,0,0,0,404,403,1,0,0,0,405,406,1,0,0,0,406,408,5,62,0,
      0,407,409,5,4,0,0,408,407,1,0,0,0,408,409,1,0,0,0,409,411,1,0,0,0,
      410,396,1,0,0,0,410,397,1,0,0,0,410,399,1,0,0,0,410,404,1,0,0,0,411,
      479,1,0,0,0,412,430,5,67,0,0,413,415,3,68,34,0,414,413,1,0,0,0,414,
      415,1,0,0,0,415,416,1,0,0,0,416,430,5,68,0,0,417,419,3,68,34,0,418,
      417,1,0,0,0,418,419,1,0,0,0,419,420,1,0,0,0,420,421,5,69,0,0,421,423,
      5,70,0,0,422,424,5,59,0,0,423,422,1,0,0,0,423,424,1,0,0,0,424,425,
      1,0,0,0,425,427,5,62,0,0,426,428,5,4,0,0,427,426,1,0,0,0,427,428,1,
      0,0,0,428,430,1,0,0,0,429,412,1,0,0,0,429,414,1,0,0,0,429,418,1,0,
      0,0,430,479,1,0,0,0,431,444,5,71,0,0,432,434,3,68,34,0,433,432,1,0,
      0,0,433,434,1,0,0,0,434,435,1,0,0,0,435,444,5,68,0,0,436,438,3,68,
      34,0,437,436,1,0,0,0,437,438,1,0,0,0,438,439,1,0,0,0,439,441,5,69,
      0,0,440,442,5,70,0,0,441,440,1,0,0,0,441,442,1,0,0,0,442,444,1,0,0,
      0,443,431,1,0,0,0,443,433,1,0,0,0,443,437,1,0,0,0,444,479,1,0,0,0,
      445,463,5,72,0,0,446,448,3,68,34,0,447,446,1,0,0,0,447,448,1,0,0,0,
      448,449,1,0,0,0,449,463,5,73,0,0,450,452,3,68,34,0,451,450,1,0,0,0,
      451,452,1,0,0,0,452,453,1,0,0,0,453,454,5,74,0,0,454,456,5,70,0,0,
      455,457,5,59,0,0,456,455,1,0,0,0,456,457,1,0,0,0,457,458,1,0,0,0,458,
      460,5,62,0,0,459,461,5,4,0,0,460,459,1,0,0,0,460,461,1,0,0,0,461,463,
      1,0,0,0,462,445,1,0,0,0,462,447,1,0,0,0,462,451,1,0,0,0,463,479,1,
      0,0,0,464,477,5,75,0,0,465,467,3,68,34,0,466,465,1,0,0,0,466,467,1,
      0,0,0,467,468,1,0,0,0,468,477,5,76,0,0,469,471,3,68,34,0,470,469,1,
      0,0,0,470,471,1,0,0,0,471,472,1,0,0,0,472,474,5,74,0,0,473,475,5,70,
      0,0,474,473,1,0,0,0,474,475,1,0,0,0,475,477,1,0,0,0,476,464,1,0,0,
      0,476,466,1,0,0,0,476,470,1,0,0,0,477,479,1,0,0,0,478,394,1,0,0,0,
      478,410,1,0,0,0,478,429,1,0,0,0,478,443,1,0,0,0,478,462,1,0,0,0,478,
      476,1,0,0,0,479,21,1,0,0,0,480,481,5,39,0,0,481,482,3,22,11,0,482,
      483,5,40,0,0,483,498,1,0,0,0,484,498,3,30,15,0,485,486,5,42,0,0,486,
      498,3,22,11,0,487,498,3,26,13,0,488,489,3,34,17,0,489,490,3,22,11,
      0,490,498,1,0,0,0,491,498,3,46,23,0,492,493,3,24,12,0,493,494,3,62,
      31,0,494,495,3,22,11,0,495,498,1,0,0,0,496,498,5,199,0,0,497,480,1,
      0,0,0,497,484,1,0,0,0,497,485,1,0,0,0,497,487,1,0,0,0,497,488,1,0,
      0,0,497,491,1,0,0,0,497,492,1,0,0,0,497,496,1,0,0,0,498,23,1,0,0,0,
      499,507,7,10,0,0,500,507,3,54,27,0,501,507,3,60,30,0,502,507,3,56,
      28,0,503,507,3,58,29,0,504,507,3,48,24,0,505,507,5,199,0,0,506,499,
      1,0,0,0,506,500,1,0,0,0,506,501,1,0,0,0,506,502,1,0,0,0,506,503,1,
      0,0,0,506,504,1,0,0,0,506,505,1,0,0,0,507,25,1,0,0,0,508,509,5,80,
      0,0,509,512,3,22,11,0,510,511,5,81,0,0,511,513,3,22,11,0,512,510,1,
      0,0,0,512,513,1,0,0,0,513,514,1,0,0,0,514,515,7,2,0,0,515,516,3,22,
      11,0,516,558,1,0,0,0,517,518,5,80,0,0,518,519,3,22,11,0,519,520,5,
      81,0,0,520,523,3,22,11,0,521,522,7,2,0,0,522,524,3,22,11,0,523,521,
      1,0,0,0,523,524,1,0,0,0,524,558,1,0,0,0,525,528,5,82,0,0,526,527,5,
      39,0,0,527,529,5,40,0,0,528,526,1,0,0,0,528,529,1,0,0,0,529,558,1,
      0,0,0,530,531,5,199,0,0,531,542,5,39,0,0,532,539,3,22,11,0,533,535,
      5,83,0,0,534,533,1,0,0,0,534,535,1,0,0,0,535,536,1,0,0,0,536,538,3,
      22,11,0,537,534,1,0,0,0,538,541,1,0,0,0,539,540,1,0,0,0,539,537,1,
      0,0,0,540,543,1,0,0,0,541,539,1,0,0,0,542,532,1,0,0,0,542,543,1,0,
      0,0,543,544,1,0,0,0,544,558,5,40,0,0,545,546,5,199,0,0,546,547,5,17,
      0,0,547,554,3,22,11,0,548,550,5,83,0,0,549,548,1,0,0,0,549,550,1,0,
      0,0,550,551,1,0,0,0,551,553,3,22,11,0,552,549,1,0,0,0,553,556,1,0,
      0,0,554,555,1,0,0,0,554,552,1,0,0,0,555,558,1,0,0,0,556,554,1,0,0,
      0,557,508,1,0,0,0,557,517,1,0,0,0,557,525,1,0,0,0,557,530,1,0,0,0,
      557,545,1,0,0,0,558,27,1,0,0,0,559,560,5,16,0,0,560,561,5,199,0,0,
      561,562,1,0,0,0,562,29,1,0,0,0,563,572,3,32,16,0,564,572,5,194,0,0,
      565,567,5,195,0,0,566,568,5,196,0,0,567,566,1,0,0,0,567,568,1,0,0,
      0,568,572,1,0,0,0,569,572,5,188,0,0,570,572,5,193,0,0,571,563,1,0,
      0,0,571,564,1,0,0,0,571,565,1,0,0,0,571,569,1,0,0,0,571,570,1,0,0,
      0,572,31,1,0,0,0,573,574,7,11,0,0,574,33,1,0,0,0,575,576,7,12,0,0,
      576,35,1,0,0,0,577,579,5,199,0,0,578,577,1,0,0,0,579,582,1,0,0,0,580,
      578,1,0,0,0,580,581,1,0,0,0,581,583,1,0,0,0,582,580,1,0,0,0,583,584,
      3,38,19,0,584,589,3,30,15,0,585,586,5,59,0,0,586,588,3,30,15,0,587,
      585,1,0,0,0,588,591,1,0,0,0,589,587,1,0,0,0,589,590,1,0,0,0,590,593,
      1,0,0,0,591,589,1,0,0,0,592,594,3,48,24,0,593,592,1,0,0,0,593,594,
      1,0,0,0,594,632,1,0,0,0,595,597,5,199,0,0,596,595,1,0,0,0,597,600,
      1,0,0,0,598,596,1,0,0,0,598,599,1,0,0,0,599,601,1,0,0,0,600,598,1,
      0,0,0,601,606,3,30,15,0,602,603,5,59,0,0,603,605,3,30,15,0,604,602,
      1,0,0,0,605,608,1,0,0,0,606,604,1,0,0,0,606,607,1,0,0,0,607,609,1,
      0,0,0,608,606,1,0,0,0,609,610,3,48,24,0,610,632,1,0,0,0,611,613,5,
      199,0,0,612,611,1,0,0,0,613,616,1,0,0,0,614,612,1,0,0,0,614,615,1,
      0,0,0,615,618,1,0,0,0,616,614,1,0,0,0,617,619,3,38,19,0,618,617,1,
      0,0,0,618,619,1,0,0,0,619,620,1,0,0,0,620,629,3,48,24,0,621,626,3,
      30,15,0,622,623,5,59,0,0,623,625,3,30,15,0,624,622,1,0,0,0,625,628,
      1,0,0,0,626,624,1,0,0,0,626,627,1,0,0,0,627,630,1,0,0,0,628,626,1,
      0,0,0,629,621,1,0,0,0,629,630,1,0,0,0,630,632,1,0,0,0,631,580,1,0,
      0,0,631,598,1,0,0,0,631,614,1,0,0,0,632,37,1,0,0,0,633,639,5,106,0,
      0,634,635,5,107,0,0,635,639,5,108,0,0,636,637,5,107,0,0,637,639,5,
      109,0,0,638,633,1,0,0,0,638,634,1,0,0,0,638,636,1,0,0,0,639,39,1,0,
      0,0,640,641,3,42,21,0,641,642,5,39,0,0,642,643,3,22,11,0,643,644,5,
      40,0,0,644,652,1,0,0,0,645,646,3,42,21,0,646,647,5,110,0,0,647,652,
      1,0,0,0,648,649,3,42,21,0,649,650,3,22,11,0,650,652,1,0,0,0,651,640,
      1,0,0,0,651,645,1,0,0,0,651,648,1,0,0,0,652,41,1,0,0,0,653,654,7,13,
      0,0,654,656,3,50,25,0,655,657,5,111,0,0,656,655,1,0,0,0,656,657,1,
      0,0,0,657,658,1,0,0,0,658,660,5,112,0,0,659,661,5,113,0,0,660,659,
      1,0,0,0,660,661,1,0,0,0,661,715,1,0,0,0,662,663,7,13,0,0,663,665,3,
      52,26,0,664,666,5,114,0,0,665,664,1,0,0,0,665,666,1,0,0,0,666,667,
      1,0,0,0,667,669,5,112,0,0,668,670,5,113,0,0,669,668,1,0,0,0,669,670,
      1,0,0,0,670,715,1,0,0,0,671,672,7,13,0,0,672,673,3,50,25,0,673,674,
      7,14,0,0,674,676,5,112,0,0,675,677,5,113,0,0,676,675,1,0,0,0,676,677,
      1,0,0,0,677,715,1,0,0,0,678,679,7,13,0,0,679,680,3,34,17,0,680,684,
      3,50,25,0,681,685,5,97,0,0,682,685,5,117,0,0,683,685,5,102,0,0,684,
      681,1,0,0,0,684,682,1,0,0,0,684,683,1,0,0,0,685,686,1,0,0,0,686,688,
      5,112,0,0,687,689,5,113,0,0,688,687,1,0,0,0,688,689,1,0,0,0,689,715,
      1,0,0,0,690,691,7,13,0,0,691,692,3,50,25,0,692,693,3,30,15,0,693,694,
      7,15,0,0,694,696,5,112,0,0,695,697,5,113,0,0,696,695,1,0,0,0,696,697,
      1,0,0,0,697,715,1,0,0,0,698,700,7,16,0,0,699,701,5,113,0,0,700,699,
      1,0,0,0,700,701,1,0,0,0,701,715,1,0,0,0,702,710,5,122,0,0,703,710,
      5,123,0,0,704,707,5,4,0,0,705,708,3,50,25,0,706,708,3,52,26,0,707,
      705,1,0,0,0,707,706,1,0,0,0,708,710,1,0,0,0,709,702,1,0,0,0,709,703,
      1,0,0,0,709,704,1,0,0,0,710,712,1,0,0,0,711,713,5,112,0,0,712,711,
      1,0,0,0,712,713,1,0,0,0,713,715,1,0,0,0,714,653,1,0,0,0,714,662,1,
      0,0,0,714,671,1,0,0,0,714,678,1,0,0,0,714,690,1,0,0,0,714,698,1,0,
      0,0,714,709,1,0,0,0,715,43,1,0,0,0,716,717,7,17,0,0,717,718,5,39,0,
      0,718,719,3,12,6,0,719,720,5,40,0,0,720,724,1,0,0,0,721,722,7,17,0,
      0,722,724,3,12,6,0,723,716,1,0,0,0,723,721,1,0,0,0,724,45,1,0,0,0,
      725,726,3,36,18,0,726,728,3,40,20,0,727,729,5,58,0,0,728,727,1,0,0,
      0,728,729,1,0,0,0,729,730,1,0,0,0,730,732,3,40,20,0,731,733,5,58,0,
      0,732,731,1,0,0,0,732,733,1,0,0,0,733,734,1,0,0,0,734,736,3,40,20,
      0,735,737,5,58,0,0,736,735,1,0,0,0,736,737,1,0,0,0,737,739,1,0,0,0,
      738,740,3,44,22,0,739,738,1,0,0,0,739,740,1,0,0,0,740,766,1,0,0,0,
      741,742,3,36,18,0,742,744,3,40,20,0,743,745,5,58,0,0,744,743,1,0,0,
      0,744,745,1,0,0,0,745,746,1,0,0,0,746,748,3,40,20,0,747,749,5,58,0,
      0,748,747,1,0,0,0,748,749,1,0,0,0,749,751,1,0,0,0,750,752,3,44,22,
      0,751,750,1,0,0,0,751,752,1,0,0,0,752,766,1,0,0,0,753,754,3,36,18,
      0,754,756,3,40,20,0,755,757,5,58,0,0,756,755,1,0,0,0,756,757,1,0,0,
      0,757,759,1,0,0,0,758,760,3,44,22,0,759,758,1,0,0,0,759,760,1,0,0,
      0,760,766,1,0,0,0,761,763,3,36,18,0,762,764,3,44,22,0,763,762,1,0,
      0,0,763,764,1,0,0,0,764,766,1,0,0,0,765,725,1,0,0,0,765,741,1,0,0,
      0,765,753,1,0,0,0,765,761,1,0,0,0,766,47,1,0,0,0,767,794,7,18,0,0,
      768,794,7,19,0,0,769,794,7,20,0,0,770,771,7,21,0,0,771,781,7,22,0,
      0,772,773,5,138,0,0,773,781,7,23,0,0,774,781,5,140,0,0,775,781,5,141,
      0,0,776,781,5,142,0,0,777,781,5,143,0,0,778,781,5,144,0,0,779,781,
      5,145,0,0,780,770,1,0,0,0,780,772,1,0,0,0,780,774,1,0,0,0,780,775,
      1,0,0,0,780,776,1,0,0,0,780,777,1,0,0,0,780,778,1,0,0,0,780,779,1,
      0,0,0,781,794,1,0,0,0,782,794,7,24,0,0,783,794,7,25,0,0,784,794,7,
      26,0,0,785,786,5,8,0,0,786,790,7,27,0,0,787,790,5,154,0,0,788,790,
      5,155,0,0,789,785,1,0,0,0,789,787,1,0,0,0,789,788,1,0,0,0,790,794,
      1,0,0,0,791,794,7,28,0,0,792,794,7,29,0,0,793,767,1,0,0,0,793,768,
      1,0,0,0,793,769,1,0,0,0,793,780,1,0,0,0,793,782,1,0,0,0,793,783,1,
      0,0,0,793,784,1,0,0,0,793,789,1,0,0,0,793,791,1,0,0,0,793,792,1,0,
      0,0,794,49,1,0,0,0,795,800,5,33,0,0,796,800,5,36,0,0,797,800,7,30,
      0,0,798,800,7,31,0,0,799,795,1,0,0,0,799,796,1,0,0,0,799,797,1,0,0,
      0,799,798,1,0,0,0,800,51,1,0,0,0,801,803,7,30,0,0,802,804,5,42,0,0,
      803,802,1,0,0,0,803,804,1,0,0,0,804,805,1,0,0,0,805,809,5,33,0,0,806,
      807,5,33,0,0,807,809,5,160,0,0,808,801,1,0,0,0,808,806,1,0,0,0,809,
      838,1,0,0,0,810,812,7,30,0,0,811,813,5,42,0,0,812,811,1,0,0,0,812,
      813,1,0,0,0,813,814,1,0,0,0,814,818,5,36,0,0,815,816,5,36,0,0,816,
      818,5,160,0,0,817,810,1,0,0,0,817,815,1,0,0,0,818,838,1,0,0,0,819,
      821,7,31,0,0,820,822,5,42,0,0,821,820,1,0,0,0,821,822,1,0,0,0,822,
      823,1,0,0,0,823,827,5,33,0,0,824,825,5,33,0,0,825,827,5,162,0,0,826,
      819,1,0,0,0,826,824,1,0,0,0,827,838,1,0,0,0,828,830,7,31,0,0,829,831,
      5,42,0,0,830,829,1,0,0,0,830,831,1,0,0,0,831,832,1,0,0,0,832,836,5,
      36,0,0,833,834,5,36,0,0,834,836,5,162,0,0,835,828,1,0,0,0,835,833,
      1,0,0,0,836,838,1,0,0,0,837,808,1,0,0,0,837,817,1,0,0,0,837,826,1,
      0,0,0,837,835,1,0,0,0,838,53,1,0,0,0,839,840,7,32,0,0,840,55,1,0,0,
      0,841,842,7,33,0,0,842,57,1,0,0,0,843,844,7,34,0,0,844,59,1,0,0,0,
      845,846,7,35,0,0,846,61,1,0,0,0,847,848,7,36,0,0,848,63,1,0,0,0,849,
      850,7,37,0,0,850,65,1,0,0,0,851,852,7,38,0,0,852,67,1,0,0,0,853,854,
      7,39,0,0,854,69,1,0,0,0,855,856,5,44,0,0,856,865,5,41,0,0,857,865,
      5,185,0,0,858,859,5,183,0,0,859,865,5,41,0,0,860,865,5,186,0,0,861,
      862,5,184,0,0,862,865,5,41,0,0,863,865,5,187,0,0,864,855,1,0,0,0,864,
      857,1,0,0,0,864,858,1,0,0,0,864,860,1,0,0,0,864,861,1,0,0,0,864,863,
      1,0,0,0,865,71,1,0,0,0,141,74,80,85,87,92,99,104,107,110,115,119,123,
      129,134,139,142,145,149,152,156,159,176,183,188,191,194,197,203,206,
      210,213,219,222,231,235,246,261,264,307,314,318,320,329,337,341,344,
      355,363,370,378,383,387,391,394,399,404,408,410,414,418,423,427,429,
      433,437,441,443,447,451,456,460,462,466,470,474,476,478,497,506,512,
      523,528,534,539,542,549,554,557,567,571,580,589,593,598,606,614,618,
      626,629,631,638,651,656,660,665,669,676,684,688,696,700,707,709,712,
      714,723,728,732,736,739,744,748,751,756,759,763,765,780,789,793,799,
      803,808,812,817,821,826,830,835,837,864
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

class IfStatContext extends ParserRuleContext {
  TerminalNode? IF() => getToken(HoneyTalkParser.TOKEN_IF, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? THEN() => getToken(HoneyTalkParser.TOKEN_THEN, 0);
  TerminalNode? END_IF() => getToken(HoneyTalkParser.TOKEN_END_IF, 0);
  List<TerminalNode> NEWLINEs() => getTokens(HoneyTalkParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(HoneyTalkParser.TOKEN_NEWLINE, i);
  List<ActionStatementContext> actionStatements() => getRuleContexts<ActionStatementContext>();
  ActionStatementContext? actionStatement(int i) => getRuleContext<ActionStatementContext>(i);
  ElseIfStatContext? elseIfStat() => getRuleContext<ElseIfStatContext>(0);
  ElseStatContext? elseStat() => getRuleContext<ElseStatContext>(0);
  IfStatContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStat;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitIfStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ElseIfStatContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(HoneyTalkParser.TOKEN_ELSE, 0);
  TerminalNode? IF() => getToken(HoneyTalkParser.TOKEN_IF, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? THEN() => getToken(HoneyTalkParser.TOKEN_THEN, 0);
  List<TerminalNode> NEWLINEs() => getTokens(HoneyTalkParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(HoneyTalkParser.TOKEN_NEWLINE, i);
  List<ActionStatementContext> actionStatements() => getRuleContexts<ActionStatementContext>();
  ActionStatementContext? actionStatement(int i) => getRuleContext<ActionStatementContext>(i);
  ElseIfStatContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseIfStat;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitElseIfStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ElseStatContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(HoneyTalkParser.TOKEN_ELSE, 0);
  List<TerminalNode> NEWLINEs() => getTokens(HoneyTalkParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(HoneyTalkParser.TOKEN_NEWLINE, i);
  List<ActionStatementContext> actionStatements() => getRuleContexts<ActionStatementContext>();
  ActionStatementContext? actionStatement(int i) => getRuleContext<ActionStatementContext>(i);
  ElseStatContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseStat;
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitElseStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
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
  TerminalNode? IF() => getToken(HoneyTalkParser.TOKEN_IF, 0);
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
}

class StatementIfContext extends StatementContext {
  IfStatContext? ifStat() => getRuleContext<IfStatContext>(0);
  StatementIfContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is HoneyTalkVisitor<T>) {
     return visitor.visitStatementIf(this);
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