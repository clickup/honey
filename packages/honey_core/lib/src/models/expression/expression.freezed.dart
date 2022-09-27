// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FunctionExp {
  String get name => throw _privateConstructorUsedError;
  @ExpConverter()
  List<Expression> get params => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FunctionExpCopyWith<FunctionExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionExpCopyWith<$Res> {
  factory $FunctionExpCopyWith(
          FunctionExp value, $Res Function(FunctionExp) then) =
      _$FunctionExpCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @ExpConverter() List<Expression> params,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class _$FunctionExpCopyWithImpl<$Res> implements $FunctionExpCopyWith<$Res> {
  _$FunctionExpCopyWithImpl(this._value, this._then);

  final FunctionExp _value;
  // ignore: unused_field
  final $Res Function(FunctionExp) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? params = freezed,
    Object? retry = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<Expression>,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_FunctionExpCopyWith<$Res>
    implements $FunctionExpCopyWith<$Res> {
  factory _$$_FunctionExpCopyWith(
          _$_FunctionExp value, $Res Function(_$_FunctionExp) then) =
      __$$_FunctionExpCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @ExpConverter() List<Expression> params,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class __$$_FunctionExpCopyWithImpl<$Res> extends _$FunctionExpCopyWithImpl<$Res>
    implements _$$_FunctionExpCopyWith<$Res> {
  __$$_FunctionExpCopyWithImpl(
      _$_FunctionExp _value, $Res Function(_$_FunctionExp) _then)
      : super(_value, (v) => _then(v as _$_FunctionExp));

  @override
  _$_FunctionExp get _value => super._value as _$_FunctionExp;

  @override
  $Res call({
    Object? name = freezed,
    Object? params = freezed,
    Object? retry = freezed,
  }) {
    return _then(_$_FunctionExp(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params == freezed
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<Expression>,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FunctionExp extends _FunctionExp {
  const _$_FunctionExp(this.name, @ExpConverter() final List<Expression> params,
      {@JsonKey(ignore: true, defaultValue: false) this.retry = false})
      : _params = params,
        super._();

  @override
  final String name;
  final List<Expression> _params;
  @override
  @ExpConverter()
  List<Expression> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  @JsonKey(ignore: true, defaultValue: false)
  final bool retry;

  @override
  String toString() {
    return 'FunctionExp(name: $name, params: $params, retry: $retry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FunctionExp &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_params),
      const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  _$$_FunctionExpCopyWith<_$_FunctionExp> get copyWith =>
      __$$_FunctionExpCopyWithImpl<_$_FunctionExp>(this, _$identity);
}

abstract class _FunctionExp extends FunctionExp {
  const factory _FunctionExp(
          final String name, @ExpConverter() final List<Expression> params,
          {@JsonKey(ignore: true, defaultValue: false) final bool retry}) =
      _$_FunctionExp;
  const _FunctionExp._() : super._();

  @override
  String get name;
  @override
  @ExpConverter()
  List<Expression> get params;
  @override
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry;
  @override
  @JsonKey(ignore: true)
  _$$_FunctionExpCopyWith<_$_FunctionExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListExp {
  @ExpConverter()
  List<Expression> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListExpCopyWith<ListExp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListExpCopyWith<$Res> {
  factory $ListExpCopyWith(ListExp value, $Res Function(ListExp) then) =
      _$ListExpCopyWithImpl<$Res>;
  $Res call(
      {@ExpConverter() List<Expression> list,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class _$ListExpCopyWithImpl<$Res> implements $ListExpCopyWith<$Res> {
  _$ListExpCopyWithImpl(this._value, this._then);

  final ListExp _value;
  // ignore: unused_field
  final $Res Function(ListExp) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? retry = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Expression>,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ListExpCopyWith<$Res> implements $ListExpCopyWith<$Res> {
  factory _$$_ListExpCopyWith(
          _$_ListExp value, $Res Function(_$_ListExp) then) =
      __$$_ListExpCopyWithImpl<$Res>;
  @override
  $Res call(
      {@ExpConverter() List<Expression> list,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class __$$_ListExpCopyWithImpl<$Res> extends _$ListExpCopyWithImpl<$Res>
    implements _$$_ListExpCopyWith<$Res> {
  __$$_ListExpCopyWithImpl(_$_ListExp _value, $Res Function(_$_ListExp) _then)
      : super(_value, (v) => _then(v as _$_ListExp));

  @override
  _$_ListExp get _value => super._value as _$_ListExp;

  @override
  $Res call({
    Object? list = freezed,
    Object? retry = freezed,
  }) {
    return _then(_$_ListExp(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Expression>,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListExp extends _ListExp {
  const _$_ListExp(@ExpConverter() final List<Expression> list,
      {@JsonKey(ignore: true, defaultValue: false) this.retry = false})
      : _list = list,
        super._();

  final List<Expression> _list;
  @override
  @ExpConverter()
  List<Expression> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(ignore: true, defaultValue: false)
  final bool retry;

  @override
  String toString() {
    return 'ListExp(list: $list, retry: $retry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListExp &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  _$$_ListExpCopyWith<_$_ListExp> get copyWith =>
      __$$_ListExpCopyWithImpl<_$_ListExp>(this, _$identity);
}

abstract class _ListExp extends ListExp {
  const factory _ListExp(@ExpConverter() final List<Expression> list,
          {@JsonKey(ignore: true, defaultValue: false) final bool retry}) =
      _$_ListExp;
  const _ListExp._() : super._();

  @override
  @ExpConverter()
  List<Expression> get list;
  @override
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry;
  @override
  @JsonKey(ignore: true)
  _$$_ListExpCopyWith<_$_ListExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValueExp {
  String get value => throw _privateConstructorUsedError;
  String? get regexFlags => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)
        str,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)?
        str,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)?
        str,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueExp value) str,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ValueExp value)? str,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueExp value)? str,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueExpCopyWith<ValueExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueExpCopyWith<$Res> {
  factory $ValueExpCopyWith(ValueExp value, $Res Function(ValueExp) then) =
      _$ValueExpCopyWithImpl<$Res>;
  $Res call(
      {String value,
      String? regexFlags,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class _$ValueExpCopyWithImpl<$Res> implements $ValueExpCopyWith<$Res> {
  _$ValueExpCopyWithImpl(this._value, this._then);

  final ValueExp _value;
  // ignore: unused_field
  final $Res Function(ValueExp) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? regexFlags = freezed,
    Object? retry = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      regexFlags: regexFlags == freezed
          ? _value.regexFlags
          : regexFlags // ignore: cast_nullable_to_non_nullable
              as String?,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ValueExpCopyWith<$Res> implements $ValueExpCopyWith<$Res> {
  factory _$$_ValueExpCopyWith(
          _$_ValueExp value, $Res Function(_$_ValueExp) then) =
      __$$_ValueExpCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value,
      String? regexFlags,
      @JsonKey(ignore: true, defaultValue: false) bool retry});
}

/// @nodoc
class __$$_ValueExpCopyWithImpl<$Res> extends _$ValueExpCopyWithImpl<$Res>
    implements _$$_ValueExpCopyWith<$Res> {
  __$$_ValueExpCopyWithImpl(
      _$_ValueExp _value, $Res Function(_$_ValueExp) _then)
      : super(_value, (v) => _then(v as _$_ValueExp));

  @override
  _$_ValueExp get _value => super._value as _$_ValueExp;

  @override
  $Res call({
    Object? value = freezed,
    Object? regexFlags = freezed,
    Object? retry = freezed,
  }) {
    return _then(_$_ValueExp(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      regexFlags: regexFlags == freezed
          ? _value.regexFlags
          : regexFlags // ignore: cast_nullable_to_non_nullable
              as String?,
      retry: retry == freezed
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ValueExp extends _ValueExp {
  const _$_ValueExp(this.value,
      {this.regexFlags,
      @JsonKey(ignore: true, defaultValue: false) this.retry = false})
      : super._();

  @override
  final String value;
  @override
  final String? regexFlags;
  @override
  @JsonKey(ignore: true, defaultValue: false)
  final bool retry;

  @override
  String toString() {
    return 'ValueExp.str(value: $value, regexFlags: $regexFlags, retry: $retry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueExp &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.regexFlags, regexFlags) &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(regexFlags),
      const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  _$$_ValueExpCopyWith<_$_ValueExp> get copyWith =>
      __$$_ValueExpCopyWithImpl<_$_ValueExp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)
        str,
  }) {
    return str(value, regexFlags, retry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)?
        str,
  }) {
    return str?.call(value, regexFlags, retry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String? regexFlags,
            @JsonKey(ignore: true, defaultValue: false) bool retry)?
        str,
    required TResult orElse(),
  }) {
    if (str != null) {
      return str(value, regexFlags, retry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueExp value) str,
  }) {
    return str(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ValueExp value)? str,
  }) {
    return str?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueExp value)? str,
    required TResult orElse(),
  }) {
    if (str != null) {
      return str(this);
    }
    return orElse();
  }
}

abstract class _ValueExp extends ValueExp {
  const factory _ValueExp(final String value,
          {final String? regexFlags,
          @JsonKey(ignore: true, defaultValue: false) final bool retry}) =
      _$_ValueExp;
  const _ValueExp._() : super._();

  @override
  String get value;
  @override
  String? get regexFlags;
  @override
  @JsonKey(ignore: true, defaultValue: false)
  bool get retry;
  @override
  @JsonKey(ignore: true)
  _$$_ValueExpCopyWith<_$_ValueExp> get copyWith =>
      throw _privateConstructorUsedError;
}
