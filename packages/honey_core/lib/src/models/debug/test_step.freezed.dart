// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestStep _$TestStepFromJson(Map<String, dynamic> json) {
  return _TestStep.fromJson(json);
}

/// @nodoc
mixin _$TestStep {
  int get time => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get step => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  @ExpConverter()
  Map<String, Expression> get variables => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestStepCopyWith<TestStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStepCopyWith<$Res> {
  factory $TestStepCopyWith(TestStep value, $Res Function(TestStep) then) =
      _$TestStepCopyWithImpl<$Res>;
  $Res call(
      {int time,
      int index,
      String step,
      String message,
      bool error,
      @ExpConverter() Map<String, Expression> variables});
}

/// @nodoc
class _$TestStepCopyWithImpl<$Res> implements $TestStepCopyWith<$Res> {
  _$TestStepCopyWithImpl(this._value, this._then);

  final TestStep _value;
  // ignore: unused_field
  final $Res Function(TestStep) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? index = freezed,
    Object? step = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? variables = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      variables: variables == freezed
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, Expression>,
    ));
  }
}

/// @nodoc
abstract class _$$_TestStepCopyWith<$Res> implements $TestStepCopyWith<$Res> {
  factory _$$_TestStepCopyWith(
          _$_TestStep value, $Res Function(_$_TestStep) then) =
      __$$_TestStepCopyWithImpl<$Res>;
  @override
  $Res call(
      {int time,
      int index,
      String step,
      String message,
      bool error,
      @ExpConverter() Map<String, Expression> variables});
}

/// @nodoc
class __$$_TestStepCopyWithImpl<$Res> extends _$TestStepCopyWithImpl<$Res>
    implements _$$_TestStepCopyWith<$Res> {
  __$$_TestStepCopyWithImpl(
      _$_TestStep _value, $Res Function(_$_TestStep) _then)
      : super(_value, (v) => _then(v as _$_TestStep));

  @override
  _$_TestStep get _value => super._value as _$_TestStep;

  @override
  $Res call({
    Object? time = freezed,
    Object? index = freezed,
    Object? step = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? variables = freezed,
  }) {
    return _then(_$_TestStep(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      variables: variables == freezed
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, Expression>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TestStep extends _TestStep {
  const _$_TestStep(
      {required this.time,
      required this.index,
      required this.step,
      this.message = '',
      this.error = false,
      @ExpConverter() required final Map<String, Expression> variables})
      : _variables = variables,
        super._();

  factory _$_TestStep.fromJson(Map<String, dynamic> json) =>
      _$$_TestStepFromJson(json);

  @override
  final int time;
  @override
  final int index;
  @override
  final String step;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool error;
  final Map<String, Expression> _variables;
  @override
  @ExpConverter()
  Map<String, Expression> get variables {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_variables);
  }

  @override
  String toString() {
    return 'TestStep(time: $time, index: $index, step: $step, message: $message, error: $error, variables: $variables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestStep &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.step, step) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(step),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_variables));

  @JsonKey(ignore: true)
  @override
  _$$_TestStepCopyWith<_$_TestStep> get copyWith =>
      __$$_TestStepCopyWithImpl<_$_TestStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestStepToJson(
      this,
    );
  }
}

abstract class _TestStep extends TestStep {
  const factory _TestStep(
          {required final int time,
          required final int index,
          required final String step,
          final String message,
          final bool error,
          @ExpConverter() required final Map<String, Expression> variables}) =
      _$_TestStep;
  const _TestStep._() : super._();

  factory _TestStep.fromJson(Map<String, dynamic> json) = _$_TestStep.fromJson;

  @override
  int get time;
  @override
  int get index;
  @override
  String get step;
  @override
  String get message;
  @override
  bool get error;
  @override
  @ExpConverter()
  Map<String, Expression> get variables;
  @override
  @JsonKey(ignore: true)
  _$$_TestStepCopyWith<_$_TestStep> get copyWith =>
      throw _privateConstructorUsedError;
}
