// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daemon_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaemonMessage _$DaemonMessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'devices':
      return DaemonDevices.fromJson(json);
    case 'message':
      return DaemonDeviceMessage.fromJson(json);
    case 'compile':
      return DaemonCompile.fromJson(json);
    case 'compile_result':
      return DaemonCompileResult.fromJson(json);
    case 'error':
      return DaemonError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DaemonMessage',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DaemonMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonMessageCopyWith<$Res> {
  factory $DaemonMessageCopyWith(
          DaemonMessage value, $Res Function(DaemonMessage) then) =
      _$DaemonMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonMessageCopyWith<$Res> {
  _$DaemonMessageCopyWithImpl(this._value, this._then);

  final DaemonMessage _value;
  // ignore: unused_field
  final $Res Function(DaemonMessage) _then;
}

/// @nodoc
abstract class _$$DaemonDevicesCopyWith<$Res> {
  factory _$$DaemonDevicesCopyWith(
          _$DaemonDevices value, $Res Function(_$DaemonDevices) then) =
      __$$DaemonDevicesCopyWithImpl<$Res>;
  $Res call({List<DaemonDevice> devices});
}

/// @nodoc
class __$$DaemonDevicesCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements _$$DaemonDevicesCopyWith<$Res> {
  __$$DaemonDevicesCopyWithImpl(
      _$DaemonDevices _value, $Res Function(_$DaemonDevices) _then)
      : super(_value, (v) => _then(v as _$DaemonDevices));

  @override
  _$DaemonDevices get _value => super._value as _$DaemonDevices;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_$DaemonDevices(
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DaemonDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaemonDevices implements DaemonDevices {
  const _$DaemonDevices(
      {required final List<DaemonDevice> devices, final String? $type})
      : _devices = devices,
        $type = $type ?? 'devices';

  factory _$DaemonDevices.fromJson(Map<String, dynamic> json) =>
      _$$DaemonDevicesFromJson(json);

  final List<DaemonDevice> _devices;
  @override
  List<DaemonDevice> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DaemonMessage.devices(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaemonDevices &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  _$$DaemonDevicesCopyWith<_$DaemonDevices> get copyWith =>
      __$$DaemonDevicesCopyWithImpl<_$DaemonDevices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) {
    return devices(this.devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) {
    return devices?.call(this.devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (devices != null) {
      return devices(this.devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) {
    return devices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) {
    return devices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) {
    if (devices != null) {
      return devices(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DaemonDevicesToJson(
      this,
    );
  }
}

abstract class DaemonDevices implements DaemonMessage {
  const factory DaemonDevices({required final List<DaemonDevice> devices}) =
      _$DaemonDevices;

  factory DaemonDevices.fromJson(Map<String, dynamic> json) =
      _$DaemonDevices.fromJson;

  List<DaemonDevice> get devices;
  @JsonKey(ignore: true)
  _$$DaemonDevicesCopyWith<_$DaemonDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DaemonDeviceMessageCopyWith<$Res> {
  factory _$$DaemonDeviceMessageCopyWith(_$DaemonDeviceMessage value,
          $Res Function(_$DaemonDeviceMessage) then) =
      __$$DaemonDeviceMessageCopyWithImpl<$Res>;
  $Res call({String deviceId, DebugMessage message});

  $DebugMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$DaemonDeviceMessageCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements _$$DaemonDeviceMessageCopyWith<$Res> {
  __$$DaemonDeviceMessageCopyWithImpl(
      _$DaemonDeviceMessage _value, $Res Function(_$DaemonDeviceMessage) _then)
      : super(_value, (v) => _then(v as _$DaemonDeviceMessage));

  @override
  _$DaemonDeviceMessage get _value => super._value as _$DaemonDeviceMessage;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DaemonDeviceMessage(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as DebugMessage,
    ));
  }

  @override
  $DebugMessageCopyWith<$Res> get message {
    return $DebugMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DaemonDeviceMessage implements DaemonDeviceMessage {
  const _$DaemonDeviceMessage(
      {required this.deviceId, required this.message, final String? $type})
      : $type = $type ?? 'message';

  factory _$DaemonDeviceMessage.fromJson(Map<String, dynamic> json) =>
      _$$DaemonDeviceMessageFromJson(json);

  @override
  final String deviceId;
  @override
  final DebugMessage message;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DaemonMessage.message(deviceId: $deviceId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaemonDeviceMessage &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$DaemonDeviceMessageCopyWith<_$DaemonDeviceMessage> get copyWith =>
      __$$DaemonDeviceMessageCopyWithImpl<_$DaemonDeviceMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) {
    return message(deviceId, this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) {
    return message?.call(deviceId, this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(deviceId, this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DaemonDeviceMessageToJson(
      this,
    );
  }
}

abstract class DaemonDeviceMessage implements DaemonMessage {
  const factory DaemonDeviceMessage(
      {required final String deviceId,
      required final DebugMessage message}) = _$DaemonDeviceMessage;

  factory DaemonDeviceMessage.fromJson(Map<String, dynamic> json) =
      _$DaemonDeviceMessage.fromJson;

  String get deviceId;
  DebugMessage get message;
  @JsonKey(ignore: true)
  _$$DaemonDeviceMessageCopyWith<_$DaemonDeviceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DaemonCompileCopyWith<$Res> {
  factory _$$DaemonCompileCopyWith(
          _$DaemonCompile value, $Res Function(_$DaemonCompile) then) =
      __$$DaemonCompileCopyWithImpl<$Res>;
  $Res call({int requestId, List<String> sources});
}

/// @nodoc
class __$$DaemonCompileCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements _$$DaemonCompileCopyWith<$Res> {
  __$$DaemonCompileCopyWithImpl(
      _$DaemonCompile _value, $Res Function(_$DaemonCompile) _then)
      : super(_value, (v) => _then(v as _$DaemonCompile));

  @override
  _$DaemonCompile get _value => super._value as _$DaemonCompile;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? sources = freezed,
  }) {
    return _then(_$DaemonCompile(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sources: sources == freezed
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaemonCompile implements DaemonCompile {
  const _$DaemonCompile(
      {required this.requestId,
      required final List<String> sources,
      final String? $type})
      : _sources = sources,
        $type = $type ?? 'compile';

  factory _$DaemonCompile.fromJson(Map<String, dynamic> json) =>
      _$$DaemonCompileFromJson(json);

  @override
  final int requestId;
  final List<String> _sources;
  @override
  List<String> get sources {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DaemonMessage.compile(requestId: $requestId, sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaemonCompile &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(_sources));

  @JsonKey(ignore: true)
  @override
  _$$DaemonCompileCopyWith<_$DaemonCompile> get copyWith =>
      __$$DaemonCompileCopyWithImpl<_$DaemonCompile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) {
    return compile(requestId, sources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) {
    return compile?.call(requestId, sources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (compile != null) {
      return compile(requestId, sources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) {
    return compile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) {
    return compile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) {
    if (compile != null) {
      return compile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DaemonCompileToJson(
      this,
    );
  }
}

abstract class DaemonCompile implements DaemonMessage {
  const factory DaemonCompile(
      {required final int requestId,
      required final List<String> sources}) = _$DaemonCompile;

  factory DaemonCompile.fromJson(Map<String, dynamic> json) =
      _$DaemonCompile.fromJson;

  int get requestId;
  List<String> get sources;
  @JsonKey(ignore: true)
  _$$DaemonCompileCopyWith<_$DaemonCompile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DaemonCompileResultCopyWith<$Res> {
  factory _$$DaemonCompileResultCopyWith(_$DaemonCompileResult value,
          $Res Function(_$DaemonCompileResult) then) =
      __$$DaemonCompileResultCopyWithImpl<$Res>;
  $Res call({int requestId, List<CompiledHoneyTalk> results});
}

/// @nodoc
class __$$DaemonCompileResultCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements _$$DaemonCompileResultCopyWith<$Res> {
  __$$DaemonCompileResultCopyWithImpl(
      _$DaemonCompileResult _value, $Res Function(_$DaemonCompileResult) _then)
      : super(_value, (v) => _then(v as _$DaemonCompileResult));

  @override
  _$DaemonCompileResult get _value => super._value as _$DaemonCompileResult;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? results = freezed,
  }) {
    return _then(_$DaemonCompileResult(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CompiledHoneyTalk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaemonCompileResult implements DaemonCompileResult {
  const _$DaemonCompileResult(
      {required this.requestId,
      required final List<CompiledHoneyTalk> results,
      final String? $type})
      : _results = results,
        $type = $type ?? 'compile_result';

  factory _$DaemonCompileResult.fromJson(Map<String, dynamic> json) =>
      _$$DaemonCompileResultFromJson(json);

  @override
  final int requestId;
  final List<CompiledHoneyTalk> _results;
  @override
  List<CompiledHoneyTalk> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DaemonMessage.compileResult(requestId: $requestId, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaemonCompileResult &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$DaemonCompileResultCopyWith<_$DaemonCompileResult> get copyWith =>
      __$$DaemonCompileResultCopyWithImpl<_$DaemonCompileResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) {
    return compileResult(requestId, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) {
    return compileResult?.call(requestId, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (compileResult != null) {
      return compileResult(requestId, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) {
    return compileResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) {
    return compileResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) {
    if (compileResult != null) {
      return compileResult(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DaemonCompileResultToJson(
      this,
    );
  }
}

abstract class DaemonCompileResult implements DaemonMessage {
  const factory DaemonCompileResult(
      {required final int requestId,
      required final List<CompiledHoneyTalk> results}) = _$DaemonCompileResult;

  factory DaemonCompileResult.fromJson(Map<String, dynamic> json) =
      _$DaemonCompileResult.fromJson;

  int get requestId;
  List<CompiledHoneyTalk> get results;
  @JsonKey(ignore: true)
  _$$DaemonCompileResultCopyWith<_$DaemonCompileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DaemonErrorCopyWith<$Res> {
  factory _$$DaemonErrorCopyWith(
          _$DaemonError value, $Res Function(_$DaemonError) then) =
      __$$DaemonErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$DaemonErrorCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements _$$DaemonErrorCopyWith<$Res> {
  __$$DaemonErrorCopyWithImpl(
      _$DaemonError _value, $Res Function(_$DaemonError) _then)
      : super(_value, (v) => _then(v as _$DaemonError));

  @override
  _$DaemonError get _value => super._value as _$DaemonError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DaemonError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaemonError implements DaemonError {
  const _$DaemonError({required this.error, final String? $type})
      : $type = $type ?? 'error';

  factory _$DaemonError.fromJson(Map<String, dynamic> json) =>
      _$$DaemonErrorFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DaemonMessage.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaemonError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$DaemonErrorCopyWith<_$DaemonError> get copyWith =>
      __$$DaemonErrorCopyWithImpl<_$DaemonError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DaemonDevice> devices) devices,
    required TResult Function(String deviceId, DebugMessage message) message,
    required TResult Function(int requestId, List<String> sources) compile,
    required TResult Function(int requestId, List<CompiledHoneyTalk> results)
        compileResult,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DaemonDevice> devices)? devices,
    TResult Function(String deviceId, DebugMessage message)? message,
    TResult Function(int requestId, List<String> sources)? compile,
    TResult Function(int requestId, List<CompiledHoneyTalk> results)?
        compileResult,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaemonDevices value) devices,
    required TResult Function(DaemonDeviceMessage value) message,
    required TResult Function(DaemonCompile value) compile,
    required TResult Function(DaemonCompileResult value) compileResult,
    required TResult Function(DaemonError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaemonDevices value)? devices,
    TResult Function(DaemonDeviceMessage value)? message,
    TResult Function(DaemonCompile value)? compile,
    TResult Function(DaemonCompileResult value)? compileResult,
    TResult Function(DaemonError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DaemonErrorToJson(
      this,
    );
  }
}

abstract class DaemonError implements DaemonMessage {
  const factory DaemonError({required final String error}) = _$DaemonError;

  factory DaemonError.fromJson(Map<String, dynamic> json) =
      _$DaemonError.fromJson;

  String get error;
  @JsonKey(ignore: true)
  _$$DaemonErrorCopyWith<_$DaemonError> get copyWith =>
      throw _privateConstructorUsedError;
}

DaemonDevice _$DaemonDeviceFromJson(Map<String, dynamic> json) {
  return _DaemonDevice.fromJson(json);
}

/// @nodoc
mixin _$DaemonDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonDeviceCopyWith<DaemonDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonDeviceCopyWith<$Res> {
  factory $DaemonDeviceCopyWith(
          DaemonDevice value, $Res Function(DaemonDevice) then) =
      _$DaemonDeviceCopyWithImpl<$Res>;
  $Res call({String id, String name, String platform});
}

/// @nodoc
class _$DaemonDeviceCopyWithImpl<$Res> implements $DaemonDeviceCopyWith<$Res> {
  _$DaemonDeviceCopyWithImpl(this._value, this._then);

  final DaemonDevice _value;
  // ignore: unused_field
  final $Res Function(DaemonDevice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DaemonDeviceCopyWith<$Res>
    implements $DaemonDeviceCopyWith<$Res> {
  factory _$$_DaemonDeviceCopyWith(
          _$_DaemonDevice value, $Res Function(_$_DaemonDevice) then) =
      __$$_DaemonDeviceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String platform});
}

/// @nodoc
class __$$_DaemonDeviceCopyWithImpl<$Res>
    extends _$DaemonDeviceCopyWithImpl<$Res>
    implements _$$_DaemonDeviceCopyWith<$Res> {
  __$$_DaemonDeviceCopyWithImpl(
      _$_DaemonDevice _value, $Res Function(_$_DaemonDevice) _then)
      : super(_value, (v) => _then(v as _$_DaemonDevice));

  @override
  _$_DaemonDevice get _value => super._value as _$_DaemonDevice;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? platform = freezed,
  }) {
    return _then(_$_DaemonDevice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaemonDevice implements _DaemonDevice {
  const _$_DaemonDevice(
      {required this.id, required this.name, required this.platform});

  factory _$_DaemonDevice.fromJson(Map<String, dynamic> json) =>
      _$$_DaemonDeviceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String platform;

  @override
  String toString() {
    return 'DaemonDevice(id: $id, name: $name, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaemonDevice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.platform, platform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(platform));

  @JsonKey(ignore: true)
  @override
  _$$_DaemonDeviceCopyWith<_$_DaemonDevice> get copyWith =>
      __$$_DaemonDeviceCopyWithImpl<_$_DaemonDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaemonDeviceToJson(
      this,
    );
  }
}

abstract class _DaemonDevice implements DaemonDevice {
  const factory _DaemonDevice(
      {required final String id,
      required final String name,
      required final String platform}) = _$_DaemonDevice;

  factory _DaemonDevice.fromJson(Map<String, dynamic> json) =
      _$_DaemonDevice.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get platform;
  @override
  @JsonKey(ignore: true)
  _$$_DaemonDeviceCopyWith<_$_DaemonDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

CompiledHoneyTalk _$CompiledHoneyTalkFromJson(Map<String, dynamic> json) {
  return _CompiledHoneyTalk.fromJson(json);
}

/// @nodoc
mixin _$CompiledHoneyTalk {
  List<Statement>? get statements => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get errorLine => throw _privateConstructorUsedError;
  int? get errorColumn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompiledHoneyTalkCopyWith<CompiledHoneyTalk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompiledHoneyTalkCopyWith<$Res> {
  factory $CompiledHoneyTalkCopyWith(
          CompiledHoneyTalk value, $Res Function(CompiledHoneyTalk) then) =
      _$CompiledHoneyTalkCopyWithImpl<$Res>;
  $Res call(
      {List<Statement>? statements,
      String? error,
      int? errorLine,
      int? errorColumn});
}

/// @nodoc
class _$CompiledHoneyTalkCopyWithImpl<$Res>
    implements $CompiledHoneyTalkCopyWith<$Res> {
  _$CompiledHoneyTalkCopyWithImpl(this._value, this._then);

  final CompiledHoneyTalk _value;
  // ignore: unused_field
  final $Res Function(CompiledHoneyTalk) _then;

  @override
  $Res call({
    Object? statements = freezed,
    Object? error = freezed,
    Object? errorLine = freezed,
    Object? errorColumn = freezed,
  }) {
    return _then(_value.copyWith(
      statements: statements == freezed
          ? _value.statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorLine: errorLine == freezed
          ? _value.errorLine
          : errorLine // ignore: cast_nullable_to_non_nullable
              as int?,
      errorColumn: errorColumn == freezed
          ? _value.errorColumn
          : errorColumn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CompiledHoneyTalkCopyWith<$Res>
    implements $CompiledHoneyTalkCopyWith<$Res> {
  factory _$$_CompiledHoneyTalkCopyWith(_$_CompiledHoneyTalk value,
          $Res Function(_$_CompiledHoneyTalk) then) =
      __$$_CompiledHoneyTalkCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Statement>? statements,
      String? error,
      int? errorLine,
      int? errorColumn});
}

/// @nodoc
class __$$_CompiledHoneyTalkCopyWithImpl<$Res>
    extends _$CompiledHoneyTalkCopyWithImpl<$Res>
    implements _$$_CompiledHoneyTalkCopyWith<$Res> {
  __$$_CompiledHoneyTalkCopyWithImpl(
      _$_CompiledHoneyTalk _value, $Res Function(_$_CompiledHoneyTalk) _then)
      : super(_value, (v) => _then(v as _$_CompiledHoneyTalk));

  @override
  _$_CompiledHoneyTalk get _value => super._value as _$_CompiledHoneyTalk;

  @override
  $Res call({
    Object? statements = freezed,
    Object? error = freezed,
    Object? errorLine = freezed,
    Object? errorColumn = freezed,
  }) {
    return _then(_$_CompiledHoneyTalk(
      statements: statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorLine: errorLine == freezed
          ? _value.errorLine
          : errorLine // ignore: cast_nullable_to_non_nullable
              as int?,
      errorColumn: errorColumn == freezed
          ? _value.errorColumn
          : errorColumn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompiledHoneyTalk implements _CompiledHoneyTalk {
  const _$_CompiledHoneyTalk(
      {final List<Statement>? statements,
      this.error,
      this.errorLine,
      this.errorColumn})
      : _statements = statements;

  factory _$_CompiledHoneyTalk.fromJson(Map<String, dynamic> json) =>
      _$$_CompiledHoneyTalkFromJson(json);

  final List<Statement>? _statements;
  @override
  List<Statement>? get statements {
    final value = _statements;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final int? errorLine;
  @override
  final int? errorColumn;

  @override
  String toString() {
    return 'CompiledHoneyTalk(statements: $statements, error: $error, errorLine: $errorLine, errorColumn: $errorColumn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompiledHoneyTalk &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.errorLine, errorLine) &&
            const DeepCollectionEquality()
                .equals(other.errorColumn, errorColumn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_statements),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errorLine),
      const DeepCollectionEquality().hash(errorColumn));

  @JsonKey(ignore: true)
  @override
  _$$_CompiledHoneyTalkCopyWith<_$_CompiledHoneyTalk> get copyWith =>
      __$$_CompiledHoneyTalkCopyWithImpl<_$_CompiledHoneyTalk>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompiledHoneyTalkToJson(
      this,
    );
  }
}

abstract class _CompiledHoneyTalk implements CompiledHoneyTalk {
  const factory _CompiledHoneyTalk(
      {final List<Statement>? statements,
      final String? error,
      final int? errorLine,
      final int? errorColumn}) = _$_CompiledHoneyTalk;

  factory _CompiledHoneyTalk.fromJson(Map<String, dynamic> json) =
      _$_CompiledHoneyTalk.fromJson;

  @override
  List<Statement>? get statements;
  @override
  String? get error;
  @override
  int? get errorLine;
  @override
  int? get errorColumn;
  @override
  @JsonKey(ignore: true)
  _$$_CompiledHoneyTalkCopyWith<_$_CompiledHoneyTalk> get copyWith =>
      throw _privateConstructorUsedError;
}
