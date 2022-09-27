// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'debug_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebugMessage _$DebugMessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'device_status':
      return DeviceStatus.fromJson(json);
    case 'start_test':
      return StartTest.fromJson(json);
    case 'test_step':
      return Step.fromJson(json);
    case 'cancel_tests':
      return CancelTests.fromJson(json);
    case 'toggle_overlay':
      return ToggleOverlay.fromJson(json);
    case 'toggle_recording':
      return ToggleRecording.fromJson(json);
    case 'recoreded_statement':
      return RecordedStatement.fromJson(json);
    case 'reset_app':
      return ResetApp.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DebugMessage',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DebugMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugMessageCopyWith<$Res> {
  factory $DebugMessageCopyWith(
          DebugMessage value, $Res Function(DebugMessage) then) =
      _$DebugMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$DebugMessageCopyWithImpl<$Res> implements $DebugMessageCopyWith<$Res> {
  _$DebugMessageCopyWithImpl(this._value, this._then);

  final DebugMessage _value;
  // ignore: unused_field
  final $Res Function(DebugMessage) _then;
}

/// @nodoc
abstract class _$$DeviceStatusCopyWith<$Res> {
  factory _$$DeviceStatusCopyWith(
          _$DeviceStatus value, $Res Function(_$DeviceStatus) then) =
      __$$DeviceStatusCopyWithImpl<$Res>;
  $Res call(
      {String appName,
      String appBuild,
      bool overlayEnabled,
      bool testRunning,
      bool recording});
}

/// @nodoc
class __$$DeviceStatusCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$DeviceStatusCopyWith<$Res> {
  __$$DeviceStatusCopyWithImpl(
      _$DeviceStatus _value, $Res Function(_$DeviceStatus) _then)
      : super(_value, (v) => _then(v as _$DeviceStatus));

  @override
  _$DeviceStatus get _value => super._value as _$DeviceStatus;

  @override
  $Res call({
    Object? appName = freezed,
    Object? appBuild = freezed,
    Object? overlayEnabled = freezed,
    Object? testRunning = freezed,
    Object? recording = freezed,
  }) {
    return _then(_$DeviceStatus(
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appBuild: appBuild == freezed
          ? _value.appBuild
          : appBuild // ignore: cast_nullable_to_non_nullable
              as String,
      overlayEnabled: overlayEnabled == freezed
          ? _value.overlayEnabled
          : overlayEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      testRunning: testRunning == freezed
          ? _value.testRunning
          : testRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      recording: recording == freezed
          ? _value.recording
          : recording // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceStatus extends DeviceStatus {
  const _$DeviceStatus(
      {required this.appName,
      required this.appBuild,
      required this.overlayEnabled,
      required this.testRunning,
      required this.recording,
      final String? $type})
      : $type = $type ?? 'device_status',
        super._();

  factory _$DeviceStatus.fromJson(Map<String, dynamic> json) =>
      _$$DeviceStatusFromJson(json);

  @override
  final String appName;
  @override
  final String appBuild;
  @override
  final bool overlayEnabled;
  @override
  final bool testRunning;
  @override
  final bool recording;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.deviceStatus(appName: $appName, appBuild: $appBuild, overlayEnabled: $overlayEnabled, testRunning: $testRunning, recording: $recording)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceStatus &&
            const DeepCollectionEquality().equals(other.appName, appName) &&
            const DeepCollectionEquality().equals(other.appBuild, appBuild) &&
            const DeepCollectionEquality()
                .equals(other.overlayEnabled, overlayEnabled) &&
            const DeepCollectionEquality()
                .equals(other.testRunning, testRunning) &&
            const DeepCollectionEquality().equals(other.recording, recording));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appName),
      const DeepCollectionEquality().hash(appBuild),
      const DeepCollectionEquality().hash(overlayEnabled),
      const DeepCollectionEquality().hash(testRunning),
      const DeepCollectionEquality().hash(recording));

  @JsonKey(ignore: true)
  @override
  _$$DeviceStatusCopyWith<_$DeviceStatus> get copyWith =>
      __$$DeviceStatusCopyWithImpl<_$DeviceStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return deviceStatus(
        appName, appBuild, overlayEnabled, testRunning, recording);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return deviceStatus?.call(
        appName, appBuild, overlayEnabled, testRunning, recording);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (deviceStatus != null) {
      return deviceStatus(
          appName, appBuild, overlayEnabled, testRunning, recording);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return deviceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return deviceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (deviceStatus != null) {
      return deviceStatus(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceStatusToJson(
      this,
    );
  }
}

abstract class DeviceStatus extends DebugMessage {
  const factory DeviceStatus(
      {required final String appName,
      required final String appBuild,
      required final bool overlayEnabled,
      required final bool testRunning,
      required final bool recording}) = _$DeviceStatus;
  const DeviceStatus._() : super._();

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =
      _$DeviceStatus.fromJson;

  String get appName;
  String get appBuild;
  bool get overlayEnabled;
  bool get testRunning;
  bool get recording;
  @JsonKey(ignore: true)
  _$$DeviceStatusCopyWith<_$DeviceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTestCopyWith<$Res> {
  factory _$$StartTestCopyWith(
          _$StartTest value, $Res Function(_$StartTest) then) =
      __$$StartTestCopyWithImpl<$Res>;
  $Res call(
      {int runId,
      List<Statement> statements,
      @ExpConverter() Map<String, Expression> variables});
}

/// @nodoc
class __$$StartTestCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$StartTestCopyWith<$Res> {
  __$$StartTestCopyWithImpl(
      _$StartTest _value, $Res Function(_$StartTest) _then)
      : super(_value, (v) => _then(v as _$StartTest));

  @override
  _$StartTest get _value => super._value as _$StartTest;

  @override
  $Res call({
    Object? runId = freezed,
    Object? statements = freezed,
    Object? variables = freezed,
  }) {
    return _then(_$StartTest(
      runId: runId == freezed
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as int,
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
      variables: variables == freezed
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, Expression>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartTest extends StartTest {
  const _$StartTest(
      {required this.runId,
      required final List<Statement> statements,
      @ExpConverter() final Map<String, Expression> variables = const {},
      final String? $type})
      : _statements = statements,
        _variables = variables,
        $type = $type ?? 'start_test',
        super._();

  factory _$StartTest.fromJson(Map<String, dynamic> json) =>
      _$$StartTestFromJson(json);

  @override
  final int runId;
  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  final Map<String, Expression> _variables;
  @override
  @JsonKey()
  @ExpConverter()
  Map<String, Expression> get variables {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_variables);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.startTest(runId: $runId, statements: $statements, variables: $variables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTest &&
            const DeepCollectionEquality().equals(other.runId, runId) &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(runId),
      const DeepCollectionEquality().hash(_statements),
      const DeepCollectionEquality().hash(_variables));

  @JsonKey(ignore: true)
  @override
  _$$StartTestCopyWith<_$StartTest> get copyWith =>
      __$$StartTestCopyWithImpl<_$StartTest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return startTest(runId, statements, variables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return startTest?.call(runId, statements, variables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(runId, statements, variables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return startTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return startTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StartTestToJson(
      this,
    );
  }
}

abstract class StartTest extends DebugMessage {
  const factory StartTest(
      {required final int runId,
      required final List<Statement> statements,
      @ExpConverter() final Map<String, Expression> variables}) = _$StartTest;
  const StartTest._() : super._();

  factory StartTest.fromJson(Map<String, dynamic> json) = _$StartTest.fromJson;

  int get runId;
  List<Statement> get statements;
  @ExpConverter()
  Map<String, Expression> get variables;
  @JsonKey(ignore: true)
  _$$StartTestCopyWith<_$StartTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepCopyWith<$Res> {
  factory _$$StepCopyWith(_$Step value, $Res Function(_$Step) then) =
      __$$StepCopyWithImpl<$Res>;
  $Res call({int runId, TestStep step});

  $TestStepCopyWith<$Res> get step;
}

/// @nodoc
class __$$StepCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$StepCopyWith<$Res> {
  __$$StepCopyWithImpl(_$Step _value, $Res Function(_$Step) _then)
      : super(_value, (v) => _then(v as _$Step));

  @override
  _$Step get _value => super._value as _$Step;

  @override
  $Res call({
    Object? runId = freezed,
    Object? step = freezed,
  }) {
    return _then(_$Step(
      runId: runId == freezed
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as int,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as TestStep,
    ));
  }

  @override
  $TestStepCopyWith<$Res> get step {
    return $TestStepCopyWith<$Res>(_value.step, (value) {
      return _then(_value.copyWith(step: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Step extends Step {
  const _$Step({required this.runId, required this.step, final String? $type})
      : $type = $type ?? 'test_step',
        super._();

  factory _$Step.fromJson(Map<String, dynamic> json) => _$$StepFromJson(json);

  @override
  final int runId;
  @override
  final TestStep step;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.testStep(runId: $runId, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step &&
            const DeepCollectionEquality().equals(other.runId, runId) &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(runId),
      const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  _$$StepCopyWith<_$Step> get copyWith =>
      __$$StepCopyWithImpl<_$Step>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return testStep(runId, step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return testStep?.call(runId, step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (testStep != null) {
      return testStep(runId, step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return testStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return testStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (testStep != null) {
      return testStep(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StepToJson(
      this,
    );
  }
}

abstract class Step extends DebugMessage {
  const factory Step({required final int runId, required final TestStep step}) =
      _$Step;
  const Step._() : super._();

  factory Step.fromJson(Map<String, dynamic> json) = _$Step.fromJson;

  int get runId;
  TestStep get step;
  @JsonKey(ignore: true)
  _$$StepCopyWith<_$Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelTestsCopyWith<$Res> {
  factory _$$CancelTestsCopyWith(
          _$CancelTests value, $Res Function(_$CancelTests) then) =
      __$$CancelTestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelTestsCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$CancelTestsCopyWith<$Res> {
  __$$CancelTestsCopyWithImpl(
      _$CancelTests _value, $Res Function(_$CancelTests) _then)
      : super(_value, (v) => _then(v as _$CancelTests));

  @override
  _$CancelTests get _value => super._value as _$CancelTests;
}

/// @nodoc
@JsonSerializable()
class _$CancelTests extends CancelTests {
  const _$CancelTests({final String? $type})
      : $type = $type ?? 'cancel_tests',
        super._();

  factory _$CancelTests.fromJson(Map<String, dynamic> json) =>
      _$$CancelTestsFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.cancelTests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelTests);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return cancelTests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return cancelTests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (cancelTests != null) {
      return cancelTests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return cancelTests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return cancelTests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (cancelTests != null) {
      return cancelTests(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelTestsToJson(
      this,
    );
  }
}

abstract class CancelTests extends DebugMessage {
  const factory CancelTests() = _$CancelTests;
  const CancelTests._() : super._();

  factory CancelTests.fromJson(Map<String, dynamic> json) =
      _$CancelTests.fromJson;
}

/// @nodoc
abstract class _$$ToggleOverlayCopyWith<$Res> {
  factory _$$ToggleOverlayCopyWith(
          _$ToggleOverlay value, $Res Function(_$ToggleOverlay) then) =
      __$$ToggleOverlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleOverlayCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$ToggleOverlayCopyWith<$Res> {
  __$$ToggleOverlayCopyWithImpl(
      _$ToggleOverlay _value, $Res Function(_$ToggleOverlay) _then)
      : super(_value, (v) => _then(v as _$ToggleOverlay));

  @override
  _$ToggleOverlay get _value => super._value as _$ToggleOverlay;
}

/// @nodoc
@JsonSerializable()
class _$ToggleOverlay extends ToggleOverlay {
  const _$ToggleOverlay({final String? $type})
      : $type = $type ?? 'toggle_overlay',
        super._();

  factory _$ToggleOverlay.fromJson(Map<String, dynamic> json) =>
      _$$ToggleOverlayFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.toggleOverlay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleOverlay);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return toggleOverlay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return toggleOverlay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (toggleOverlay != null) {
      return toggleOverlay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return toggleOverlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return toggleOverlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (toggleOverlay != null) {
      return toggleOverlay(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleOverlayToJson(
      this,
    );
  }
}

abstract class ToggleOverlay extends DebugMessage {
  const factory ToggleOverlay() = _$ToggleOverlay;
  const ToggleOverlay._() : super._();

  factory ToggleOverlay.fromJson(Map<String, dynamic> json) =
      _$ToggleOverlay.fromJson;
}

/// @nodoc
abstract class _$$ToggleRecordingCopyWith<$Res> {
  factory _$$ToggleRecordingCopyWith(
          _$ToggleRecording value, $Res Function(_$ToggleRecording) then) =
      __$$ToggleRecordingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleRecordingCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$ToggleRecordingCopyWith<$Res> {
  __$$ToggleRecordingCopyWithImpl(
      _$ToggleRecording _value, $Res Function(_$ToggleRecording) _then)
      : super(_value, (v) => _then(v as _$ToggleRecording));

  @override
  _$ToggleRecording get _value => super._value as _$ToggleRecording;
}

/// @nodoc
@JsonSerializable()
class _$ToggleRecording extends ToggleRecording {
  const _$ToggleRecording({final String? $type})
      : $type = $type ?? 'toggle_recording',
        super._();

  factory _$ToggleRecording.fromJson(Map<String, dynamic> json) =>
      _$$ToggleRecordingFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.toggleRecording()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleRecording);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return toggleRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return toggleRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (toggleRecording != null) {
      return toggleRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return toggleRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return toggleRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (toggleRecording != null) {
      return toggleRecording(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleRecordingToJson(
      this,
    );
  }
}

abstract class ToggleRecording extends DebugMessage {
  const factory ToggleRecording() = _$ToggleRecording;
  const ToggleRecording._() : super._();

  factory ToggleRecording.fromJson(Map<String, dynamic> json) =
      _$ToggleRecording.fromJson;
}

/// @nodoc
abstract class _$$RecordedStatementCopyWith<$Res> {
  factory _$$RecordedStatementCopyWith(
          _$RecordedStatement value, $Res Function(_$RecordedStatement) then) =
      __$$RecordedStatementCopyWithImpl<$Res>;
  $Res call({String statement});
}

/// @nodoc
class __$$RecordedStatementCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$RecordedStatementCopyWith<$Res> {
  __$$RecordedStatementCopyWithImpl(
      _$RecordedStatement _value, $Res Function(_$RecordedStatement) _then)
      : super(_value, (v) => _then(v as _$RecordedStatement));

  @override
  _$RecordedStatement get _value => super._value as _$RecordedStatement;

  @override
  $Res call({
    Object? statement = freezed,
  }) {
    return _then(_$RecordedStatement(
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordedStatement extends RecordedStatement {
  const _$RecordedStatement({required this.statement, final String? $type})
      : $type = $type ?? 'recoreded_statement',
        super._();

  factory _$RecordedStatement.fromJson(Map<String, dynamic> json) =>
      _$$RecordedStatementFromJson(json);

  @override
  final String statement;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.recordedStatement(statement: $statement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordedStatement &&
            const DeepCollectionEquality().equals(other.statement, statement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statement));

  @JsonKey(ignore: true)
  @override
  _$$RecordedStatementCopyWith<_$RecordedStatement> get copyWith =>
      __$$RecordedStatementCopyWithImpl<_$RecordedStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return recordedStatement(statement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return recordedStatement?.call(statement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (recordedStatement != null) {
      return recordedStatement(statement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return recordedStatement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return recordedStatement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (recordedStatement != null) {
      return recordedStatement(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordedStatementToJson(
      this,
    );
  }
}

abstract class RecordedStatement extends DebugMessage {
  const factory RecordedStatement({required final String statement}) =
      _$RecordedStatement;
  const RecordedStatement._() : super._();

  factory RecordedStatement.fromJson(Map<String, dynamic> json) =
      _$RecordedStatement.fromJson;

  String get statement;
  @JsonKey(ignore: true)
  _$$RecordedStatementCopyWith<_$RecordedStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetAppCopyWith<$Res> {
  factory _$$ResetAppCopyWith(
          _$ResetApp value, $Res Function(_$ResetApp) then) =
      __$$ResetAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAppCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements _$$ResetAppCopyWith<$Res> {
  __$$ResetAppCopyWithImpl(_$ResetApp _value, $Res Function(_$ResetApp) _then)
      : super(_value, (v) => _then(v as _$ResetApp));

  @override
  _$ResetApp get _value => super._value as _$ResetApp;
}

/// @nodoc
@JsonSerializable()
class _$ResetApp extends ResetApp {
  const _$ResetApp({final String? $type})
      : $type = $type ?? 'reset_app',
        super._();

  factory _$ResetApp.fromJson(Map<String, dynamic> json) =>
      _$$ResetAppFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DebugMessage.resetApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetApp);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appName, String appBuild,
            bool overlayEnabled, bool testRunning, bool recording)
        deviceStatus,
    required TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)
        startTest,
    required TResult Function(int runId, TestStep step) testStep,
    required TResult Function() cancelTests,
    required TResult Function() toggleOverlay,
    required TResult Function() toggleRecording,
    required TResult Function(String statement) recordedStatement,
    required TResult Function() resetApp,
  }) {
    return resetApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
  }) {
    return resetApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appName, String appBuild, bool overlayEnabled,
            bool testRunning, bool recording)?
        deviceStatus,
    TResult Function(int runId, List<Statement> statements,
            @ExpConverter() Map<String, Expression> variables)?
        startTest,
    TResult Function(int runId, TestStep step)? testStep,
    TResult Function()? cancelTests,
    TResult Function()? toggleOverlay,
    TResult Function()? toggleRecording,
    TResult Function(String statement)? recordedStatement,
    TResult Function()? resetApp,
    required TResult orElse(),
  }) {
    if (resetApp != null) {
      return resetApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceStatus value) deviceStatus,
    required TResult Function(StartTest value) startTest,
    required TResult Function(Step value) testStep,
    required TResult Function(CancelTests value) cancelTests,
    required TResult Function(ToggleOverlay value) toggleOverlay,
    required TResult Function(ToggleRecording value) toggleRecording,
    required TResult Function(RecordedStatement value) recordedStatement,
    required TResult Function(ResetApp value) resetApp,
  }) {
    return resetApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
  }) {
    return resetApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceStatus value)? deviceStatus,
    TResult Function(StartTest value)? startTest,
    TResult Function(Step value)? testStep,
    TResult Function(CancelTests value)? cancelTests,
    TResult Function(ToggleOverlay value)? toggleOverlay,
    TResult Function(ToggleRecording value)? toggleRecording,
    TResult Function(RecordedStatement value)? recordedStatement,
    TResult Function(ResetApp value)? resetApp,
    required TResult orElse(),
  }) {
    if (resetApp != null) {
      return resetApp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetAppToJson(
      this,
    );
  }
}

abstract class ResetApp extends DebugMessage {
  const factory ResetApp() = _$ResetApp;
  const ResetApp._() : super._();

  factory ResetApp.fromJson(Map<String, dynamic> json) = _$ResetApp.fromJson;
}
