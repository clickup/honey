// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Statement _$StatementFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'expression':
      return ExpressionStatement.fromJson(json);
    case 'condition':
      return ConditionStatement.fromJson(json);
    case 'if':
      return IfStatement.fromJson(json);
    case 'elseif':
      return ElseIfStatement.fromJson(json);
    case 'else':
      return ElseStatement.fromJson(json);
    case 'while':
      return WhileStatement.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Statement', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Statement {
  SourceInfo get sourceInfo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
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
  $Res call({SourceInfo sourceInfo});

  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class _$StatementCopyWithImpl<$Res> implements $StatementCopyWith<$Res> {
  _$StatementCopyWithImpl(this._value, this._then);

  final Statement _value;
  // ignore: unused_field
  final $Res Function(Statement) _then;

  @override
  $Res call({
    Object? sourceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
    ));
  }

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo {
    return $SourceInfoCopyWith<$Res>(_value.sourceInfo, (value) {
      return _then(_value.copyWith(sourceInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$ExpressionStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$ExpressionStatementCopyWith(_$ExpressionStatement value,
          $Res Function(_$ExpressionStatement) then) =
      __$$ExpressionStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceInfo sourceInfo,
      bool optional,
      @ExpConverter() Expression expression});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$ExpressionStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$ExpressionStatementCopyWith<$Res> {
  __$$ExpressionStatementCopyWithImpl(
      _$ExpressionStatement _value, $Res Function(_$ExpressionStatement) _then)
      : super(_value, (v) => _then(v as _$ExpressionStatement));

  @override
  _$ExpressionStatement get _value => super._value as _$ExpressionStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? optional = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$ExpressionStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      optional: optional == freezed
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as bool,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ExpressionStatement implements ExpressionStatement {
  const _$ExpressionStatement(
      {required this.sourceInfo,
      required this.optional,
      @ExpConverter() required this.expression,
      final String? $type})
      : $type = $type ?? 'expression';

  factory _$ExpressionStatement.fromJson(Map<String, dynamic> json) =>
      _$$ExpressionStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  @override
  final bool optional;
  @override
  @ExpConverter()
  final Expression expression;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.expression(sourceInfo: $sourceInfo, optional: $optional, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressionStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality().equals(other.optional, optional) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(optional),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$ExpressionStatementCopyWith<_$ExpressionStatement> get copyWith =>
      __$$ExpressionStatementCopyWithImpl<_$ExpressionStatement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return expression(sourceInfo, optional, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return expression?.call(sourceInfo, optional, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(sourceInfo, optional, this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
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
    return _$$ExpressionStatementToJson(
      this,
    );
  }
}

abstract class ExpressionStatement implements Statement {
  const factory ExpressionStatement(
          {required final SourceInfo sourceInfo,
          required final bool optional,
          @ExpConverter() required final Expression expression}) =
      _$ExpressionStatement;

  factory ExpressionStatement.fromJson(Map<String, dynamic> json) =
      _$ExpressionStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  bool get optional;
  @ExpConverter()
  Expression get expression;
  @override
  @JsonKey(ignore: true)
  _$$ExpressionStatementCopyWith<_$ExpressionStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConditionStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$ConditionStatementCopyWith(_$ConditionStatement value,
          $Res Function(_$ConditionStatement) then) =
      __$$ConditionStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceInfo sourceInfo,
      IfStatement? ifStatement,
      ElseIfStatement? elseIfStatement,
      ElseStatement? elseStatement});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$ConditionStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$ConditionStatementCopyWith<$Res> {
  __$$ConditionStatementCopyWithImpl(
      _$ConditionStatement _value, $Res Function(_$ConditionStatement) _then)
      : super(_value, (v) => _then(v as _$ConditionStatement));

  @override
  _$ConditionStatement get _value => super._value as _$ConditionStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? ifStatement = freezed,
    Object? elseIfStatement = freezed,
    Object? elseStatement = freezed,
  }) {
    return _then(_$ConditionStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      ifStatement: ifStatement == freezed
          ? _value.ifStatement
          : ifStatement // ignore: cast_nullable_to_non_nullable
              as IfStatement?,
      elseIfStatement: elseIfStatement == freezed
          ? _value.elseIfStatement
          : elseIfStatement // ignore: cast_nullable_to_non_nullable
              as ElseIfStatement?,
      elseStatement: elseStatement == freezed
          ? _value.elseStatement
          : elseStatement // ignore: cast_nullable_to_non_nullable
              as ElseStatement?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConditionStatement implements ConditionStatement {
  const _$ConditionStatement(
      {required this.sourceInfo,
      this.ifStatement,
      this.elseIfStatement,
      this.elseStatement,
      final String? $type})
      : $type = $type ?? 'condition';

  factory _$ConditionStatement.fromJson(Map<String, dynamic> json) =>
      _$$ConditionStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  @override
  final IfStatement? ifStatement;
  @override
  final ElseIfStatement? elseIfStatement;
  @override
  final ElseStatement? elseStatement;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.sCondition(sourceInfo: $sourceInfo, ifStatement: $ifStatement, elseIfStatement: $elseIfStatement, elseStatement: $elseStatement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality()
                .equals(other.ifStatement, ifStatement) &&
            const DeepCollectionEquality()
                .equals(other.elseIfStatement, elseIfStatement) &&
            const DeepCollectionEquality()
                .equals(other.elseStatement, elseStatement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(ifStatement),
      const DeepCollectionEquality().hash(elseIfStatement),
      const DeepCollectionEquality().hash(elseStatement));

  @JsonKey(ignore: true)
  @override
  _$$ConditionStatementCopyWith<_$ConditionStatement> get copyWith =>
      __$$ConditionStatementCopyWithImpl<_$ConditionStatement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return sCondition(sourceInfo, ifStatement, elseIfStatement, elseStatement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return sCondition?.call(
        sourceInfo, ifStatement, elseIfStatement, elseStatement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sCondition != null) {
      return sCondition(
          sourceInfo, ifStatement, elseIfStatement, elseStatement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sCondition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (sCondition != null) {
      return sCondition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionStatementToJson(
      this,
    );
  }
}

abstract class ConditionStatement implements Statement {
  const factory ConditionStatement(
      {required final SourceInfo sourceInfo,
      final IfStatement? ifStatement,
      final ElseIfStatement? elseIfStatement,
      final ElseStatement? elseStatement}) = _$ConditionStatement;

  factory ConditionStatement.fromJson(Map<String, dynamic> json) =
      _$ConditionStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  IfStatement? get ifStatement;
  ElseIfStatement? get elseIfStatement;
  ElseStatement? get elseStatement;
  @override
  @JsonKey(ignore: true)
  _$$ConditionStatementCopyWith<_$ConditionStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IfStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$IfStatementCopyWith(
          _$IfStatement value, $Res Function(_$IfStatement) then) =
      __$$IfStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceInfo sourceInfo,
      @ExpConverter() Expression condition,
      List<Statement> statements});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$IfStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$IfStatementCopyWith<$Res> {
  __$$IfStatementCopyWithImpl(
      _$IfStatement _value, $Res Function(_$IfStatement) _then)
      : super(_value, (v) => _then(v as _$IfStatement));

  @override
  _$IfStatement get _value => super._value as _$IfStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? condition = freezed,
    Object? statements = freezed,
  }) {
    return _then(_$IfStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Expression,
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$IfStatement implements IfStatement {
  const _$IfStatement(
      {required this.sourceInfo,
      @ExpConverter() required this.condition,
      required final List<Statement> statements,
      final String? $type})
      : _statements = statements,
        $type = $type ?? 'if';

  factory _$IfStatement.fromJson(Map<String, dynamic> json) =>
      _$$IfStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  @override
  @ExpConverter()
  final Expression condition;
  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.sIf(sourceInfo: $sourceInfo, condition: $condition, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IfStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  _$$IfStatementCopyWith<_$IfStatement> get copyWith =>
      __$$IfStatementCopyWithImpl<_$IfStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return sIf(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return sIf?.call(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sIf != null) {
      return sIf(sourceInfo, condition, statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sIf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sIf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
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
    return _$$IfStatementToJson(
      this,
    );
  }
}

abstract class IfStatement implements Statement {
  const factory IfStatement(
      {required final SourceInfo sourceInfo,
      @ExpConverter() required final Expression condition,
      required final List<Statement> statements}) = _$IfStatement;

  factory IfStatement.fromJson(Map<String, dynamic> json) =
      _$IfStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  @ExpConverter()
  Expression get condition;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  _$$IfStatementCopyWith<_$IfStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElseIfStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$ElseIfStatementCopyWith(
          _$ElseIfStatement value, $Res Function(_$ElseIfStatement) then) =
      __$$ElseIfStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceInfo sourceInfo,
      @ExpConverter() Expression condition,
      List<Statement> statements});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$ElseIfStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$ElseIfStatementCopyWith<$Res> {
  __$$ElseIfStatementCopyWithImpl(
      _$ElseIfStatement _value, $Res Function(_$ElseIfStatement) _then)
      : super(_value, (v) => _then(v as _$ElseIfStatement));

  @override
  _$ElseIfStatement get _value => super._value as _$ElseIfStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? condition = freezed,
    Object? statements = freezed,
  }) {
    return _then(_$ElseIfStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Expression,
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ElseIfStatement implements ElseIfStatement {
  const _$ElseIfStatement(
      {required this.sourceInfo,
      @ExpConverter() required this.condition,
      required final List<Statement> statements,
      final String? $type})
      : _statements = statements,
        $type = $type ?? 'elseif';

  factory _$ElseIfStatement.fromJson(Map<String, dynamic> json) =>
      _$$ElseIfStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  @override
  @ExpConverter()
  final Expression condition;
  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.sElseIf(sourceInfo: $sourceInfo, condition: $condition, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElseIfStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  _$$ElseIfStatementCopyWith<_$ElseIfStatement> get copyWith =>
      __$$ElseIfStatementCopyWithImpl<_$ElseIfStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return sElseIf(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return sElseIf?.call(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sElseIf != null) {
      return sElseIf(sourceInfo, condition, statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sElseIf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sElseIf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (sElseIf != null) {
      return sElseIf(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ElseIfStatementToJson(
      this,
    );
  }
}

abstract class ElseIfStatement implements Statement {
  const factory ElseIfStatement(
      {required final SourceInfo sourceInfo,
      @ExpConverter() required final Expression condition,
      required final List<Statement> statements}) = _$ElseIfStatement;

  factory ElseIfStatement.fromJson(Map<String, dynamic> json) =
      _$ElseIfStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  @ExpConverter()
  Expression get condition;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  _$$ElseIfStatementCopyWith<_$ElseIfStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElseStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$ElseStatementCopyWith(
          _$ElseStatement value, $Res Function(_$ElseStatement) then) =
      __$$ElseStatementCopyWithImpl<$Res>;
  @override
  $Res call({SourceInfo sourceInfo, List<Statement> statements});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$ElseStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$ElseStatementCopyWith<$Res> {
  __$$ElseStatementCopyWithImpl(
      _$ElseStatement _value, $Res Function(_$ElseStatement) _then)
      : super(_value, (v) => _then(v as _$ElseStatement));

  @override
  _$ElseStatement get _value => super._value as _$ElseStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? statements = freezed,
  }) {
    return _then(_$ElseStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ElseStatement implements ElseStatement {
  const _$ElseStatement(
      {required this.sourceInfo,
      required final List<Statement> statements,
      final String? $type})
      : _statements = statements,
        $type = $type ?? 'else';

  factory _$ElseStatement.fromJson(Map<String, dynamic> json) =>
      _$$ElseStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.sElse(sourceInfo: $sourceInfo, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElseStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  _$$ElseStatementCopyWith<_$ElseStatement> get copyWith =>
      __$$ElseStatementCopyWithImpl<_$ElseStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return sElse(sourceInfo, statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return sElse?.call(sourceInfo, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sElse != null) {
      return sElse(sourceInfo, statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sElse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sElse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
    required TResult orElse(),
  }) {
    if (sElse != null) {
      return sElse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ElseStatementToJson(
      this,
    );
  }
}

abstract class ElseStatement implements Statement {
  const factory ElseStatement(
      {required final SourceInfo sourceInfo,
      required final List<Statement> statements}) = _$ElseStatement;

  factory ElseStatement.fromJson(Map<String, dynamic> json) =
      _$ElseStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  _$$ElseStatementCopyWith<_$ElseStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhileStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$WhileStatementCopyWith(
          _$WhileStatement value, $Res Function(_$WhileStatement) then) =
      __$$WhileStatementCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceInfo sourceInfo,
      @ExpConverter() Expression condition,
      List<Statement> statements});

  @override
  $SourceInfoCopyWith<$Res> get sourceInfo;
}

/// @nodoc
class __$$WhileStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$WhileStatementCopyWith<$Res> {
  __$$WhileStatementCopyWithImpl(
      _$WhileStatement _value, $Res Function(_$WhileStatement) _then)
      : super(_value, (v) => _then(v as _$WhileStatement));

  @override
  _$WhileStatement get _value => super._value as _$WhileStatement;

  @override
  $Res call({
    Object? sourceInfo = freezed,
    Object? condition = freezed,
    Object? statements = freezed,
  }) {
    return _then(_$WhileStatement(
      sourceInfo: sourceInfo == freezed
          ? _value.sourceInfo
          : sourceInfo // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Expression,
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WhileStatement implements WhileStatement {
  const _$WhileStatement(
      {required this.sourceInfo,
      @ExpConverter() required this.condition,
      required final List<Statement> statements,
      final String? $type})
      : _statements = statements,
        $type = $type ?? 'while';

  factory _$WhileStatement.fromJson(Map<String, dynamic> json) =>
      _$$WhileStatementFromJson(json);

  @override
  final SourceInfo sourceInfo;
  @override
  @ExpConverter()
  final Expression condition;
  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Statement.sWhile(sourceInfo: $sourceInfo, condition: $condition, statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhileStatement &&
            const DeepCollectionEquality()
                .equals(other.sourceInfo, sourceInfo) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceInfo),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  _$$WhileStatementCopyWith<_$WhileStatement> get copyWith =>
      __$$WhileStatementCopyWithImpl<_$WhileStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)
        expression,
    required TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)
        sCondition,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sIf,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sElseIf,
    required TResult Function(SourceInfo sourceInfo, List<Statement> statements)
        sElse,
    required TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)
        sWhile,
  }) {
    return sWhile(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
  }) {
    return sWhile?.call(sourceInfo, condition, statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SourceInfo sourceInfo, bool optional,
            @ExpConverter() Expression expression)?
        expression,
    TResult Function(SourceInfo sourceInfo, IfStatement? ifStatement,
            ElseIfStatement? elseIfStatement, ElseStatement? elseStatement)?
        sCondition,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sIf,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sElseIf,
    TResult Function(SourceInfo sourceInfo, List<Statement> statements)? sElse,
    TResult Function(SourceInfo sourceInfo,
            @ExpConverter() Expression condition, List<Statement> statements)?
        sWhile,
    required TResult orElse(),
  }) {
    if (sWhile != null) {
      return sWhile(sourceInfo, condition, statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(ConditionStatement value) sCondition,
    required TResult Function(IfStatement value) sIf,
    required TResult Function(ElseIfStatement value) sElseIf,
    required TResult Function(ElseStatement value) sElse,
    required TResult Function(WhileStatement value) sWhile,
  }) {
    return sWhile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
    TResult Function(WhileStatement value)? sWhile,
  }) {
    return sWhile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(ConditionStatement value)? sCondition,
    TResult Function(IfStatement value)? sIf,
    TResult Function(ElseIfStatement value)? sElseIf,
    TResult Function(ElseStatement value)? sElse,
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
    return _$$WhileStatementToJson(
      this,
    );
  }
}

abstract class WhileStatement implements Statement {
  const factory WhileStatement(
      {required final SourceInfo sourceInfo,
      @ExpConverter() required final Expression condition,
      required final List<Statement> statements}) = _$WhileStatement;

  factory WhileStatement.fromJson(Map<String, dynamic> json) =
      _$WhileStatement.fromJson;

  @override
  SourceInfo get sourceInfo;
  @ExpConverter()
  Expression get condition;
  List<Statement> get statements;
  @override
  @JsonKey(ignore: true)
  _$$WhileStatementCopyWith<_$WhileStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceInfo _$SourceInfoFromJson(Map<String, dynamic> json) {
  return _SourceInfo.fromJson(json);
}

/// @nodoc
mixin _$SourceInfo {
  String get source => throw _privateConstructorUsedError;
  int get startLine => throw _privateConstructorUsedError;
  int get startColumn => throw _privateConstructorUsedError;
  int get endLine => throw _privateConstructorUsedError;
  int get endColumn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceInfoCopyWith<SourceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceInfoCopyWith<$Res> {
  factory $SourceInfoCopyWith(
          SourceInfo value, $Res Function(SourceInfo) then) =
      _$SourceInfoCopyWithImpl<$Res>;
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn});
}

/// @nodoc
class _$SourceInfoCopyWithImpl<$Res> implements $SourceInfoCopyWith<$Res> {
  _$SourceInfoCopyWithImpl(this._value, this._then);

  final SourceInfo _value;
  // ignore: unused_field
  final $Res Function(SourceInfo) _then;

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
abstract class _$$_SourceInfoCopyWith<$Res>
    implements $SourceInfoCopyWith<$Res> {
  factory _$$_SourceInfoCopyWith(
          _$_SourceInfo value, $Res Function(_$_SourceInfo) then) =
      __$$_SourceInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source,
      int startLine,
      int startColumn,
      int endLine,
      int endColumn});
}

/// @nodoc
class __$$_SourceInfoCopyWithImpl<$Res> extends _$SourceInfoCopyWithImpl<$Res>
    implements _$$_SourceInfoCopyWith<$Res> {
  __$$_SourceInfoCopyWithImpl(
      _$_SourceInfo _value, $Res Function(_$_SourceInfo) _then)
      : super(_value, (v) => _then(v as _$_SourceInfo));

  @override
  _$_SourceInfo get _value => super._value as _$_SourceInfo;

  @override
  $Res call({
    Object? source = freezed,
    Object? startLine = freezed,
    Object? startColumn = freezed,
    Object? endLine = freezed,
    Object? endColumn = freezed,
  }) {
    return _then(_$_SourceInfo(
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

@JsonSerializable(explicitToJson: true)
class _$_SourceInfo implements _SourceInfo {
  const _$_SourceInfo(
      {required this.source,
      required this.startLine,
      required this.startColumn,
      required this.endLine,
      required this.endColumn});

  factory _$_SourceInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SourceInfoFromJson(json);

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
  String toString() {
    return 'SourceInfo(source: $source, startLine: $startLine, startColumn: $startColumn, endLine: $endLine, endColumn: $endColumn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceInfo &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.startLine, startLine) &&
            const DeepCollectionEquality()
                .equals(other.startColumn, startColumn) &&
            const DeepCollectionEquality().equals(other.endLine, endLine) &&
            const DeepCollectionEquality().equals(other.endColumn, endColumn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(startLine),
      const DeepCollectionEquality().hash(startColumn),
      const DeepCollectionEquality().hash(endLine),
      const DeepCollectionEquality().hash(endColumn));

  @JsonKey(ignore: true)
  @override
  _$$_SourceInfoCopyWith<_$_SourceInfo> get copyWith =>
      __$$_SourceInfoCopyWithImpl<_$_SourceInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceInfoToJson(
      this,
    );
  }
}

abstract class _SourceInfo implements SourceInfo {
  const factory _SourceInfo(
      {required final String source,
      required final int startLine,
      required final int startColumn,
      required final int endLine,
      required final int endColumn}) = _$_SourceInfo;

  factory _SourceInfo.fromJson(Map<String, dynamic> json) =
      _$_SourceInfo.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_SourceInfoCopyWith<_$_SourceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
