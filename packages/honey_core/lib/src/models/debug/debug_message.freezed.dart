// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'debug_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
class _$DebugMessageTearOff {
  const _$DebugMessageTearOff();

  DeviceStatus deviceStatus(
      {required String appName,
      required String appBuild,
      required bool overlayEnabled,
      required bool testRunning,
      required bool recording}) {
    return DeviceStatus(
      appName: appName,
      appBuild: appBuild,
      overlayEnabled: overlayEnabled,
      testRunning: testRunning,
      recording: recording,
    );
  }

  StartTest startTest(
      {required int runId,
      required List<Statement> statements,
      @ExpConverter() Map<String, Expression> variables = const {}}) {
    return StartTest(
      runId: runId,
      statements: statements,
      variables: variables,
    );
  }

  Step testStep({required int runId, required TestStep step}) {
    return Step(
      runId: runId,
      step: step,
    );
  }

  CancelTests cancelTests() {
    return const CancelTests();
  }

  ToggleOverlay toggleOverlay() {
    return const ToggleOverlay();
  }

  ToggleRecording toggleRecording() {
    return const ToggleRecording();
  }

  RecordedStatement recordedStatement({required String statement}) {
    return RecordedStatement(
      statement: statement,
    );
  }

  ResetApp resetApp() {
    return const ResetApp();
  }

  DebugMessage fromJson(Map<String, Object?> json) {
    return DebugMessage.fromJson(json);
  }
}

/// @nodoc
const $DebugMessage = _$DebugMessageTearOff();

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
abstract class $DeviceStatusCopyWith<$Res> {
  factory $DeviceStatusCopyWith(
          DeviceStatus value, $Res Function(DeviceStatus) then) =
      _$DeviceStatusCopyWithImpl<$Res>;
  $Res call(
      {String appName,
      String appBuild,
      bool overlayEnabled,
      bool testRunning,
      bool recording});
}

/// @nodoc
class _$DeviceStatusCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $DeviceStatusCopyWith<$Res> {
  _$DeviceStatusCopyWithImpl(
      DeviceStatus _value, $Res Function(DeviceStatus) _then)
      : super(_value, (v) => _then(v as DeviceStatus));

  @override
  DeviceStatus get _value => super._value as DeviceStatus;

  @override
  $Res call({
    Object? appName = freezed,
    Object? appBuild = freezed,
    Object? overlayEnabled = freezed,
    Object? testRunning = freezed,
    Object? recording = freezed,
  }) {
    return _then(DeviceStatus(
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
@FreezedUnionValue('device_status')
class _$DeviceStatus extends DeviceStatus {
  const _$DeviceStatus(
      {required this.appName,
      required this.appBuild,
      required this.overlayEnabled,
      required this.testRunning,
      required this.recording,
      String? $type})
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
            other is DeviceStatus &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.appBuild, appBuild) ||
                other.appBuild == appBuild) &&
            (identical(other.overlayEnabled, overlayEnabled) ||
                other.overlayEnabled == overlayEnabled) &&
            (identical(other.testRunning, testRunning) ||
                other.testRunning == testRunning) &&
            (identical(other.recording, recording) ||
                other.recording == recording));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appName, appBuild, overlayEnabled, testRunning, recording);

  @JsonKey(ignore: true)
  @override
  $DeviceStatusCopyWith<DeviceStatus> get copyWith =>
      _$DeviceStatusCopyWithImpl<DeviceStatus>(this, _$identity);

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
    return _$$DeviceStatusToJson(this);
  }
}

abstract class DeviceStatus extends DebugMessage {
  const factory DeviceStatus(
      {required String appName,
      required String appBuild,
      required bool overlayEnabled,
      required bool testRunning,
      required bool recording}) = _$DeviceStatus;
  const DeviceStatus._() : super._();

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =
      _$DeviceStatus.fromJson;

  String get appName;
  String get appBuild;
  bool get overlayEnabled;
  bool get testRunning;
  bool get recording;
  @JsonKey(ignore: true)
  $DeviceStatusCopyWith<DeviceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTestCopyWith<$Res> {
  factory $StartTestCopyWith(StartTest value, $Res Function(StartTest) then) =
      _$StartTestCopyWithImpl<$Res>;
  $Res call(
      {int runId,
      List<Statement> statements,
      @ExpConverter() Map<String, Expression> variables});
}

/// @nodoc
class _$StartTestCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $StartTestCopyWith<$Res> {
  _$StartTestCopyWithImpl(StartTest _value, $Res Function(StartTest) _then)
      : super(_value, (v) => _then(v as StartTest));

  @override
  StartTest get _value => super._value as StartTest;

  @override
  $Res call({
    Object? runId = freezed,
    Object? statements = freezed,
    Object? variables = freezed,
  }) {
    return _then(StartTest(
      runId: runId == freezed
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as int,
      statements: statements == freezed
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
      variables: variables == freezed
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, Expression>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('start_test')
class _$StartTest extends StartTest {
  const _$StartTest(
      {required this.runId,
      required this.statements,
      @ExpConverter() this.variables = const {},
      String? $type})
      : $type = $type ?? 'start_test',
        super._();

  factory _$StartTest.fromJson(Map<String, dynamic> json) =>
      _$$StartTestFromJson(json);

  @override
  final int runId;
  @override
  final List<Statement> statements;
  @JsonKey(defaultValue: const {})
  @override
  @ExpConverter()
  final Map<String, Expression> variables;

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
            other is StartTest &&
            (identical(other.runId, runId) || other.runId == runId) &&
            const DeepCollectionEquality()
                .equals(other.statements, statements) &&
            const DeepCollectionEquality().equals(other.variables, variables));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      runId,
      const DeepCollectionEquality().hash(statements),
      const DeepCollectionEquality().hash(variables));

  @JsonKey(ignore: true)
  @override
  $StartTestCopyWith<StartTest> get copyWith =>
      _$StartTestCopyWithImpl<StartTest>(this, _$identity);

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
    return _$$StartTestToJson(this);
  }
}

abstract class StartTest extends DebugMessage {
  const factory StartTest(
      {required int runId,
      required List<Statement> statements,
      @ExpConverter() Map<String, Expression> variables}) = _$StartTest;
  const StartTest._() : super._();

  factory StartTest.fromJson(Map<String, dynamic> json) = _$StartTest.fromJson;

  int get runId;
  List<Statement> get statements;
  @ExpConverter()
  Map<String, Expression> get variables;
  @JsonKey(ignore: true)
  $StartTestCopyWith<StartTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res>;
  $Res call({int runId, TestStep step});

  $TestStepCopyWith<$Res> get step;
}

/// @nodoc
class _$StepCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(Step _value, $Res Function(Step) _then)
      : super(_value, (v) => _then(v as Step));

  @override
  Step get _value => super._value as Step;

  @override
  $Res call({
    Object? runId = freezed,
    Object? step = freezed,
  }) {
    return _then(Step(
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
@FreezedUnionValue('test_step')
class _$Step extends Step {
  const _$Step({required this.runId, required this.step, String? $type})
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
            other is Step &&
            (identical(other.runId, runId) || other.runId == runId) &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, runId, step);

  @JsonKey(ignore: true)
  @override
  $StepCopyWith<Step> get copyWith =>
      _$StepCopyWithImpl<Step>(this, _$identity);

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
    return _$$StepToJson(this);
  }
}

abstract class Step extends DebugMessage {
  const factory Step({required int runId, required TestStep step}) = _$Step;
  const Step._() : super._();

  factory Step.fromJson(Map<String, dynamic> json) = _$Step.fromJson;

  int get runId;
  TestStep get step;
  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelTestsCopyWith<$Res> {
  factory $CancelTestsCopyWith(
          CancelTests value, $Res Function(CancelTests) then) =
      _$CancelTestsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelTestsCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $CancelTestsCopyWith<$Res> {
  _$CancelTestsCopyWithImpl(
      CancelTests _value, $Res Function(CancelTests) _then)
      : super(_value, (v) => _then(v as CancelTests));

  @override
  CancelTests get _value => super._value as CancelTests;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('cancel_tests')
class _$CancelTests extends CancelTests {
  const _$CancelTests({String? $type})
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
        (other.runtimeType == runtimeType && other is CancelTests);
  }

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
    return _$$CancelTestsToJson(this);
  }
}

abstract class CancelTests extends DebugMessage {
  const factory CancelTests() = _$CancelTests;
  const CancelTests._() : super._();

  factory CancelTests.fromJson(Map<String, dynamic> json) =
      _$CancelTests.fromJson;
}

/// @nodoc
abstract class $ToggleOverlayCopyWith<$Res> {
  factory $ToggleOverlayCopyWith(
          ToggleOverlay value, $Res Function(ToggleOverlay) then) =
      _$ToggleOverlayCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleOverlayCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $ToggleOverlayCopyWith<$Res> {
  _$ToggleOverlayCopyWithImpl(
      ToggleOverlay _value, $Res Function(ToggleOverlay) _then)
      : super(_value, (v) => _then(v as ToggleOverlay));

  @override
  ToggleOverlay get _value => super._value as ToggleOverlay;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('toggle_overlay')
class _$ToggleOverlay extends ToggleOverlay {
  const _$ToggleOverlay({String? $type})
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
        (other.runtimeType == runtimeType && other is ToggleOverlay);
  }

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
    return _$$ToggleOverlayToJson(this);
  }
}

abstract class ToggleOverlay extends DebugMessage {
  const factory ToggleOverlay() = _$ToggleOverlay;
  const ToggleOverlay._() : super._();

  factory ToggleOverlay.fromJson(Map<String, dynamic> json) =
      _$ToggleOverlay.fromJson;
}

/// @nodoc
abstract class $ToggleRecordingCopyWith<$Res> {
  factory $ToggleRecordingCopyWith(
          ToggleRecording value, $Res Function(ToggleRecording) then) =
      _$ToggleRecordingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleRecordingCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements $ToggleRecordingCopyWith<$Res> {
  _$ToggleRecordingCopyWithImpl(
      ToggleRecording _value, $Res Function(ToggleRecording) _then)
      : super(_value, (v) => _then(v as ToggleRecording));

  @override
  ToggleRecording get _value => super._value as ToggleRecording;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('toggle_recording')
class _$ToggleRecording extends ToggleRecording {
  const _$ToggleRecording({String? $type})
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
        (other.runtimeType == runtimeType && other is ToggleRecording);
  }

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
    return _$$ToggleRecordingToJson(this);
  }
}

abstract class ToggleRecording extends DebugMessage {
  const factory ToggleRecording() = _$ToggleRecording;
  const ToggleRecording._() : super._();

  factory ToggleRecording.fromJson(Map<String, dynamic> json) =
      _$ToggleRecording.fromJson;
}

/// @nodoc
abstract class $RecordedStatementCopyWith<$Res> {
  factory $RecordedStatementCopyWith(
          RecordedStatement value, $Res Function(RecordedStatement) then) =
      _$RecordedStatementCopyWithImpl<$Res>;
  $Res call({String statement});
}

/// @nodoc
class _$RecordedStatementCopyWithImpl<$Res>
    extends _$DebugMessageCopyWithImpl<$Res>
    implements $RecordedStatementCopyWith<$Res> {
  _$RecordedStatementCopyWithImpl(
      RecordedStatement _value, $Res Function(RecordedStatement) _then)
      : super(_value, (v) => _then(v as RecordedStatement));

  @override
  RecordedStatement get _value => super._value as RecordedStatement;

  @override
  $Res call({
    Object? statement = freezed,
  }) {
    return _then(RecordedStatement(
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('recoreded_statement')
class _$RecordedStatement extends RecordedStatement {
  const _$RecordedStatement({required this.statement, String? $type})
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
            other is RecordedStatement &&
            (identical(other.statement, statement) ||
                other.statement == statement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statement);

  @JsonKey(ignore: true)
  @override
  $RecordedStatementCopyWith<RecordedStatement> get copyWith =>
      _$RecordedStatementCopyWithImpl<RecordedStatement>(this, _$identity);

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
    return _$$RecordedStatementToJson(this);
  }
}

abstract class RecordedStatement extends DebugMessage {
  const factory RecordedStatement({required String statement}) =
      _$RecordedStatement;
  const RecordedStatement._() : super._();

  factory RecordedStatement.fromJson(Map<String, dynamic> json) =
      _$RecordedStatement.fromJson;

  String get statement;
  @JsonKey(ignore: true)
  $RecordedStatementCopyWith<RecordedStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetAppCopyWith<$Res> {
  factory $ResetAppCopyWith(ResetApp value, $Res Function(ResetApp) then) =
      _$ResetAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetAppCopyWithImpl<$Res> extends _$DebugMessageCopyWithImpl<$Res>
    implements $ResetAppCopyWith<$Res> {
  _$ResetAppCopyWithImpl(ResetApp _value, $Res Function(ResetApp) _then)
      : super(_value, (v) => _then(v as ResetApp));

  @override
  ResetApp get _value => super._value as ResetApp;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('reset_app')
class _$ResetApp extends ResetApp {
  const _$ResetApp({String? $type})
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
        (other.runtimeType == runtimeType && other is ResetApp);
  }

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
    return _$$ResetAppToJson(this);
  }
}

abstract class ResetApp extends DebugMessage {
  const factory ResetApp() = _$ResetApp;
  const ResetApp._() : super._();

  factory ResetApp.fromJson(Map<String, dynamic> json) = _$ResetApp.fromJson;
}
