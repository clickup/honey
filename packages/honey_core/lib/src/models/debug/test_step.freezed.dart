// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestStep _$TestStepFromJson(Map<String, dynamic> json) {
  return _TestStep.fromJson(json);
}

/// @nodoc
class _$TestStepTearOff {
  const _$TestStepTearOff();

  _TestStep call(
      {required int time,
      required int index,
      required String step,
      String message = '',
      bool error = false,
      @ExpConverter() required Map<String, Expression> variables}) {
    return _TestStep(
      time: time,
      index: index,
      step: step,
      message: message,
      error: error,
      variables: variables,
    );
  }

  TestStep fromJson(Map<String, Object?> json) {
    return TestStep.fromJson(json);
  }
}

/// @nodoc
const $TestStep = _$TestStepTearOff();

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
abstract class _$TestStepCopyWith<$Res> implements $TestStepCopyWith<$Res> {
  factory _$TestStepCopyWith(_TestStep value, $Res Function(_TestStep) then) =
      __$TestStepCopyWithImpl<$Res>;
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
class __$TestStepCopyWithImpl<$Res> extends _$TestStepCopyWithImpl<$Res>
    implements _$TestStepCopyWith<$Res> {
  __$TestStepCopyWithImpl(_TestStep _value, $Res Function(_TestStep) _then)
      : super(_value, (v) => _then(v as _TestStep));

  @override
  _TestStep get _value => super._value as _TestStep;

  @override
  $Res call({
    Object? time = freezed,
    Object? index = freezed,
    Object? step = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? variables = freezed,
  }) {
    return _then(_TestStep(
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

@JsonSerializable()
class _$_TestStep extends _TestStep {
  const _$_TestStep(
      {required this.time,
      required this.index,
      required this.step,
      this.message = '',
      this.error = false,
      @ExpConverter() required this.variables})
      : super._();

  factory _$_TestStep.fromJson(Map<String, dynamic> json) =>
      _$$_TestStepFromJson(json);

  @override
  final int time;
  @override
  final int index;
  @override
  final String step;
  @JsonKey(defaultValue: '')
  @override
  final String message;
  @JsonKey(defaultValue: false)
  @override
  final bool error;
  @override
  @ExpConverter()
  final Map<String, Expression> variables;

  @override
  String toString() {
    return 'TestStep(time: $time, index: $index, step: $step, message: $message, error: $error, variables: $variables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestStep &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.variables, variables));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, index, step, message,
      error, const DeepCollectionEquality().hash(variables));

  @JsonKey(ignore: true)
  @override
  _$TestStepCopyWith<_TestStep> get copyWith =>
      __$TestStepCopyWithImpl<_TestStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestStepToJson(this);
  }
}

abstract class _TestStep extends TestStep {
  const factory _TestStep(
          {required int time,
          required int index,
          required String step,
          String message,
          bool error,
          @ExpConverter() required Map<String, Expression> variables}) =
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
  _$TestStepCopyWith<_TestStep> get copyWith =>
      throw _privateConstructorUsedError;
}
