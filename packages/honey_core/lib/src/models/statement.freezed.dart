// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Statement _$StatementFromJson(Map<String, dynamic> json) {
  switch (json['type'] as String?) {
    case 'expression':
      return ExpressionStatement.fromJson(json);
    case 'if':
      return IfStatement.fromJson(json);
    case 'while':
      return WhileStatement.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Statement', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$StatementTearOff {
  const _$StatementTearOff();

  ExpressionStatement expression(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression expression}) {
    return ExpressionStatement(
      source: source,
      startLine: startLine,
      startColumn: startColumn,
      endLine: endLine,
      endColumn: endColumn,
      expression: expression,
    );
  }

  IfStatement sIf(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression condition,
      required List<Statement> statements}) {
    return IfStatement(
      source: source,
      startLine: startLine,
      startColumn: startColumn,
      endLine: endLine,
      endColumn: endColumn,
      condition: condition,
      statements: statements,
    );
  }

  WhileStatement sWhile(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression condition,
      required List<Statement> statements}) {
    return WhileStatement(
      source: source,
      startLine: startLine,
      startColumn: startColumn,
      endLine: endLine,
      endColumn: endColumn,
      condition: condition,
      statements: statements,
    );
  }

  Statement fromJson(Map<String, Object?> json) {
    return Statement.fromJson(json);
  }
}

/// @nodoc
const $Statement = _$StatementTearOff();

/// @nodoc
mixin _$Statement {
  String get source => throw _privateConstructorUsedError;
  int get startLine => throw _privateConstructorUsedError;
  int get startColumn => throw _privateConstructorUsedError;
  int get endLine => throw _privateConstructorUsedError;
  int get endColumn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, int startLine, int startColumn,
            int endLine, int endColumn, @ExpConverter() Expression expression)
        expression,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sIf,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(WhileStatement value) sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatementCopyWith<Statement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementCopyWith<$Res> {
  factory $StatementCopyWith(Statement value, $Res Function(Statement) then) =
      _$StatementCopyWithImpl<$Res>;
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn});
}

/// @nodoc
class _$StatementCopyWithImpl<$Res> implements $StatementCopyWith<$Res> {
  _$StatementCopyWithImpl(this._value, this._then);

  final Statement _value;
  // ignore: unused_field
  final $Res Function(Statement) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? startLine = freezed,
    Object? startColumn = freezed,
    Object? endLine = freezed,
    Object? endColumn = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      startLine: startLine == freezed
          ? _value.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: startColumn == freezed
          ? _value.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: endLine == freezed
          ? _value.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: endColumn == freezed
          ? _value.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $ExpressionStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory $ExpressionStatementCopyWith(
          ExpressionStatement value, $Res Function(ExpressionStatement) then) =
      _$ExpressionStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn,
      @ExpConverter() Expression expression});
}

/// @nodoc
class _$ExpressionStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements $ExpressionStatementCopyWith<$Res> {
  _$ExpressionStatementCopyWithImpl(
      ExpressionStatement _value, $Res Function(ExpressionStatement) _then)
      : super(_value, (v) => _then(v as ExpressionStatement));

  @override
  ExpressionStatement get _value => super._value as ExpressionStatement;

  @override
  $Res call({
    Object? source = freezed,
    Object? startLine = freezed,
    Object? startColumn = freezed,
    Object? endLine = freezed,
    Object? endColumn = freezed,
    Object? expression = freezed,
  }) {
    return _then(ExpressionStatement(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      startLine: startLine == freezed
          ? _value.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: startColumn == freezed
          ? _value.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: endLine == freezed
          ? _value.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: endColumn == freezed
          ? _value.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@FreezedUnionValue('expression')
class _$ExpressionStatement implements ExpressionStatement {
  const _$ExpressionStatement(
      {required this.source,
      required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn,
      @ExpConverter() required this.expression});

  factory _$ExpressionStatement.fromJson(Map<String, dynamic> json) =>
      _$$ExpressionStatementFromJson(json);

  @override
  final String source;
  @override
  final int startLine;
  @override
  final int startColumn;
  @override
  final int endLine;
  @override
  final int endColumn;
  @override
  @ExpConverter()
  final Expression expression;

  @override
  String toString() {
    return 'Statement.expression(source: $source, startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpressionStatement &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn) &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, startLine, startColumn,
      endLine, endColumn, expression);

  @JsonKey(ignore: true)
  @override
  $ExpressionStatementCopyWith<ExpressionStatement> get copyWith =>
      _$ExpressionStatementCopyWithImpl<ExpressionStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, int startLine, int startColumn,
            int endLine, int endColumn, @ExpConverter() Expression expression)
        expression,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sIf,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sWhile,
  }) {
    return expression(
        source, startLine, startColumn, endLine, endColumn, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
  }) {
    return expression?.call(
        source, startLine, startColumn, endLine, endColumn, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(
          source, startLine, startColumn, endLine, endColumn, this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpressionStatementToJson(this)..['type'] = 'expression';
  }
}

abstract class ExpressionStatement implements Statement {
  const factory ExpressionStatement(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression expression}) = _$ExpressionStatement;

  factory ExpressionStatement.fromJson(Map<String, dynamic> json) =
      _$ExpressionStatement.fromJson;

  @override
  String get source;
  @override
  int get startLine;
  @override
  int get startColumn;
  @override
  int get endLine;
  @override
  int get endColumn;
  @ExpConverter()
  Expression get expression;
  @override
  @JsonKey(ignore: true)
  $ExpressionStatementCopyWith<ExpressionStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IfStatementCopyWith<$Res> implements $StatementCopyWith<$Res> {
  factory $IfStatementCopyWith(
          IfStatement value, $Res Function(IfStatement) then) =
      _$IfStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn,
      @ExpConverter() Expression condition,
      List<Statement> statements});
}

/// @nodoc
class _$IfStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements $IfStatementCopyWith<$Res> {
  _$IfStatementCopyWithImpl(
      IfStatement _value, $Res Function(IfStatement) _then)
      : super(_value, (v) => _then(v as IfStatement));

  @override
  IfStatement get _value => super._value as IfStatement;

  @override
  $Res call({
    Object? source = freezed,
    Object? startLine = freezed,
    Object? startColumn = freezed,
    Object? endLine = freezed,
    Object? endColumn = freezed,
    Object? condition = freezed,
    Object? statements = freezed,
  }) {
    return _then(IfStatement(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      startLine: startLine == freezed
          ? _value.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: startColumn == freezed
          ? _value.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: endLine == freezed
          ? _value.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: endColumn == freezed
          ? _value.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Expression,
      statements: statements == freezed
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@FreezedUnionValue('if')
class _$IfStatement implements IfStatement {
  const _$IfStatement(
      {required this.source,
      required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn,
      @ExpConverter() required this.condition,
      required this.statements});

  factory _$IfStatement.fromJson(Map<String, dynamic> json) =>
      _$$IfStatementFromJson(json);

  @override
  final String source;
  @override
  final int startLine;
  @override
  final int startColumn;
  @override
  final int endLine;
  @override
  final int endColumn;
  @override
  @ExpConverter()
  final Expression condition;
  @override
  final List<Statement> statements;

  @override
  String toString() {
    return 'Statement.sIf(source: $source, startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn, condition: $condition, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IfStatement &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other.statements, statements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      startLine,
      startColumn,
      endLine,
      endColumn,
      condition,
      const DeepCollectionEquality().hash(statements));

  @JsonKey(ignore: true)
  @override
  $IfStatementCopyWith<IfStatement> get copyWith =>
      _$IfStatementCopyWithImpl<IfStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, int startLine, int startColumn,
            int endLine, int endColumn, @ExpConverter() Expression expression)
        expression,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sIf,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sWhile,
  }) {
    return sIf(source, startLine, startColumn, endLine, endColumn, condition,
        statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
  }) {
    return sIf?.call(source, startLine, startColumn, endLine, endColumn,
        condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sIf != null) {
      return sIf(source, startLine, startColumn, endLine, endColumn, condition,
          statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sIf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sIf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (sIf != null) {
      return sIf(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IfStatementToJson(this)..['type'] = 'if';
  }
}

abstract class IfStatement implements Statement {
  const factory IfStatement(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression condition,
      required List<Statement> statements}) = _$IfStatement;

  factory IfStatement.fromJson(Map<String, dynamic> json) =
      _$IfStatement.fromJson;

  @override
  String get source;
  @override
  int get startLine;
  @override
  int get startColumn;
  @override
  int get endLine;
  @override
  int get endColumn;
  @ExpConverter()
  Expression get condition;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  $IfStatementCopyWith<IfStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhileStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory $WhileStatementCopyWith(
          WhileStatement value, $Res Function(WhileStatement) then) =
      _$WhileStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn,
      @ExpConverter() Expression condition,
      List<Statement> statements});
}

/// @nodoc
class _$WhileStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements $WhileStatementCopyWith<$Res> {
  _$WhileStatementCopyWithImpl(
      WhileStatement _value, $Res Function(WhileStatement) _then)
      : super(_value, (v) => _then(v as WhileStatement));

  @override
  WhileStatement get _value => super._value as WhileStatement;

  @override
  $Res call({
    Object? source = freezed,
    Object? startLine = freezed,
    Object? startColumn = freezed,
    Object? endLine = freezed,
    Object? endColumn = freezed,
    Object? condition = freezed,
    Object? statements = freezed,
  }) {
    return _then(WhileStatement(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      startLine: startLine == freezed
          ? _value.startLine
          : startLine // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn: startColumn == freezed
          ? _value.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
      endLine: endLine == freezed
          ? _value.endLine
          : endLine // ignore: cast_nullable_to_non_nullable
              as int,
      endColumn: endColumn == freezed
          ? _value.endColumn
          : endColumn // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Expression,
      statements: statements == freezed
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@FreezedUnionValue('while')
class _$WhileStatement implements WhileStatement {
  const _$WhileStatement(
      {required this.source,
      required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn,
      @ExpConverter() required this.condition,
      required this.statements});

  factory _$WhileStatement.fromJson(Map<String, dynamic> json) =>
      _$$WhileStatementFromJson(json);

  @override
  final String source;
  @override
  final int startLine;
  @override
  final int startColumn;
  @override
  final int endLine;
  @override
  final int endColumn;
  @override
  @ExpConverter()
  final Expression condition;
  @override
  final List<Statement> statements;

  @override
  String toString() {
    return 'Statement.sWhile(source: $source, startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn, condition: $condition, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WhileStatement &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.startLine, startLine) ||
                other.startLine == startLine) &&
            (identical(other.startColumn, startColumn) ||
                other.startColumn == startColumn) &&
            (identical(other.endLine, endLine) || other.endLine == endLine) &&
            (identical(other.endColumn, endColumn) ||
                other.endColumn == endColumn) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other.statements, statements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      startLine,
      startColumn,
      endLine,
      endColumn,
      condition,
      const DeepCollectionEquality().hash(statements));

  @JsonKey(ignore: true)
  @override
  $WhileStatementCopyWith<WhileStatement> get copyWith =>
      _$WhileStatementCopyWithImpl<WhileStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, int startLine, int startColumn,
            int endLine, int endColumn, @ExpConverter() Expression expression)
        expression,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sIf,
    required TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)
        sWhile,
  }) {
    return sWhile(source, startLine, startColumn, endLine, endColumn, condition,
        statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
  }) {
    return sWhile?.call(source, startLine, startColumn, endLine, endColumn,
        condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, int startLine, int startColumn, int endLine,
            int endColumn, @ExpConverter() Expression expression)?
        expression,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sIf,
    TResult Function(
            String source,
            int startLine,
            int startColumn,
            int endLine,
            int endColumn,
            @ExpConverter() Expression condition,
            List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sWhile != null) {
      return sWhile(source, startLine, startColumn, endLine, endColumn,
          condition, statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sWhile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sWhile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(IfStatement value)? sIf,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (sWhile != null) {
      return sWhile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WhileStatementToJson(this)..['type'] = 'while';
  }
}

abstract class WhileStatement implements Statement {
  const factory WhileStatement(
      {required String source,
      required int startLine,
      required int startColumn,
      required int endLine,
      required int endColumn,
      @ExpConverter() required Expression condition,
      required List<Statement> statements}) = _$WhileStatement;

  factory WhileStatement.fromJson(Map<String, dynamic> json) =
      _$WhileStatement.fromJson;

  @override
  String get source;
  @override
  int get startLine;
  @override
  int get startColumn;
  @override
  int get endLine;
  @override
  int get endColumn;
  @ExpConverter()
  Expression get condition;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  $WhileStatementCopyWith<WhileStatement> get copyWith =>
      throw _privateConstructorUsedError;
}
