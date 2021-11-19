// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daemon_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaemonMessage _$DaemonMessageFromJson(Map<String, dynamic> json) {
  switch (json['type'] as String?) {
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
class _$DaemonMessageTearOff {
  const _$DaemonMessageTearOff();

  DaemonDevices devices({required List<DaemonDevice> devices}) {
    return DaemonDevices(
      devices: devices,
    );
  }

  DaemonDeviceMessage message(
      {required String deviceId, required DebugMessage message}) {
    return DaemonDeviceMessage(
      deviceId: deviceId,
      message: message,
    );
  }

  DaemonCompile compile(
      {required int requestId, required List<String> sources}) {
    return DaemonCompile(
      requestId: requestId,
      sources: sources,
    );
  }

  DaemonCompileResult compileResult(
      {required int requestId, required List<CompiledHoneyTalk> results}) {
    return DaemonCompileResult(
      requestId: requestId,
      results: results,
    );
  }

  DaemonError error({required String error}) {
    return DaemonError(
      error: error,
    );
  }

  DaemonMessage fromJson(Map<String, Object> json) {
    return DaemonMessage.fromJson(json);
  }
}

/// @nodoc
const $DaemonMessage = _$DaemonMessageTearOff();

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
abstract class $DaemonDevicesCopyWith<$Res> {
  factory $DaemonDevicesCopyWith(
          DaemonDevices value, $Res Function(DaemonDevices) then) =
      _$DaemonDevicesCopyWithImpl<$Res>;
  $Res call({List<DaemonDevice> devices});
}

/// @nodoc
class _$DaemonDevicesCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonDevicesCopyWith<$Res> {
  _$DaemonDevicesCopyWithImpl(
      DaemonDevices _value, $Res Function(DaemonDevices) _then)
      : super(_value, (v) => _then(v as DaemonDevices));

  @override
  DaemonDevices get _value => super._value as DaemonDevices;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(DaemonDevices(
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DaemonDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('devices')
class _$DaemonDevices extends DaemonDevices {
  const _$DaemonDevices({required this.devices}) : super._();

  factory _$DaemonDevices.fromJson(Map<String, dynamic> json) =>
      _$$DaemonDevicesFromJson(json);

  @override
  final List<DaemonDevice> devices;

  @override
  String toString() {
    return 'DaemonMessage.devices(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaemonDevices &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(devices);

  @JsonKey(ignore: true)
  @override
  $DaemonDevicesCopyWith<DaemonDevices> get copyWith =>
      _$DaemonDevicesCopyWithImpl<DaemonDevices>(this, _$identity);

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
    return _$$DaemonDevicesToJson(this)..['type'] = 'devices';
  }
}

abstract class DaemonDevices extends DaemonMessage {
  const factory DaemonDevices({required List<DaemonDevice> devices}) =
      _$DaemonDevices;
  const DaemonDevices._() : super._();

  factory DaemonDevices.fromJson(Map<String, dynamic> json) =
      _$DaemonDevices.fromJson;

  List<DaemonDevice> get devices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonDevicesCopyWith<DaemonDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonDeviceMessageCopyWith<$Res> {
  factory $DaemonDeviceMessageCopyWith(
          DaemonDeviceMessage value, $Res Function(DaemonDeviceMessage) then) =
      _$DaemonDeviceMessageCopyWithImpl<$Res>;
  $Res call({String deviceId, DebugMessage message});

  $DebugMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$DaemonDeviceMessageCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonDeviceMessageCopyWith<$Res> {
  _$DaemonDeviceMessageCopyWithImpl(
      DaemonDeviceMessage _value, $Res Function(DaemonDeviceMessage) _then)
      : super(_value, (v) => _then(v as DaemonDeviceMessage));

  @override
  DaemonDeviceMessage get _value => super._value as DaemonDeviceMessage;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? message = freezed,
  }) {
    return _then(DaemonDeviceMessage(
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
@FreezedUnionValue('message')
class _$DaemonDeviceMessage extends DaemonDeviceMessage {
  const _$DaemonDeviceMessage({required this.deviceId, required this.message})
      : super._();

  factory _$DaemonDeviceMessage.fromJson(Map<String, dynamic> json) =>
      _$$DaemonDeviceMessageFromJson(json);

  @override
  final String deviceId;
  @override
  final DebugMessage message;

  @override
  String toString() {
    return 'DaemonMessage.message(deviceId: $deviceId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaemonDeviceMessage &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DaemonDeviceMessageCopyWith<DaemonDeviceMessage> get copyWith =>
      _$DaemonDeviceMessageCopyWithImpl<DaemonDeviceMessage>(this, _$identity);

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
    return _$$DaemonDeviceMessageToJson(this)..['type'] = 'message';
  }
}

abstract class DaemonDeviceMessage extends DaemonMessage {
  const factory DaemonDeviceMessage(
      {required String deviceId,
      required DebugMessage message}) = _$DaemonDeviceMessage;
  const DaemonDeviceMessage._() : super._();

  factory DaemonDeviceMessage.fromJson(Map<String, dynamic> json) =
      _$DaemonDeviceMessage.fromJson;

  String get deviceId => throw _privateConstructorUsedError;
  DebugMessage get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonDeviceMessageCopyWith<DaemonDeviceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonCompileCopyWith<$Res> {
  factory $DaemonCompileCopyWith(
          DaemonCompile value, $Res Function(DaemonCompile) then) =
      _$DaemonCompileCopyWithImpl<$Res>;
  $Res call({int requestId, List<String> sources});
}

/// @nodoc
class _$DaemonCompileCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonCompileCopyWith<$Res> {
  _$DaemonCompileCopyWithImpl(
      DaemonCompile _value, $Res Function(DaemonCompile) _then)
      : super(_value, (v) => _then(v as DaemonCompile));

  @override
  DaemonCompile get _value => super._value as DaemonCompile;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? sources = freezed,
  }) {
    return _then(DaemonCompile(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sources: sources == freezed
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('compile')
class _$DaemonCompile extends DaemonCompile {
  const _$DaemonCompile({required this.requestId, required this.sources})
      : super._();

  factory _$DaemonCompile.fromJson(Map<String, dynamic> json) =>
      _$$DaemonCompileFromJson(json);

  @override
  final int requestId;
  @override
  final List<String> sources;

  @override
  String toString() {
    return 'DaemonMessage.compile(requestId: $requestId, sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaemonCompile &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(sources);

  @JsonKey(ignore: true)
  @override
  $DaemonCompileCopyWith<DaemonCompile> get copyWith =>
      _$DaemonCompileCopyWithImpl<DaemonCompile>(this, _$identity);

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
    return _$$DaemonCompileToJson(this)..['type'] = 'compile';
  }
}

abstract class DaemonCompile extends DaemonMessage {
  const factory DaemonCompile(
      {required int requestId,
      required List<String> sources}) = _$DaemonCompile;
  const DaemonCompile._() : super._();

  factory DaemonCompile.fromJson(Map<String, dynamic> json) =
      _$DaemonCompile.fromJson;

  int get requestId => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonCompileCopyWith<DaemonCompile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonCompileResultCopyWith<$Res> {
  factory $DaemonCompileResultCopyWith(
          DaemonCompileResult value, $Res Function(DaemonCompileResult) then) =
      _$DaemonCompileResultCopyWithImpl<$Res>;
  $Res call({int requestId, List<CompiledHoneyTalk> results});
}

/// @nodoc
class _$DaemonCompileResultCopyWithImpl<$Res>
    extends _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonCompileResultCopyWith<$Res> {
  _$DaemonCompileResultCopyWithImpl(
      DaemonCompileResult _value, $Res Function(DaemonCompileResult) _then)
      : super(_value, (v) => _then(v as DaemonCompileResult));

  @override
  DaemonCompileResult get _value => super._value as DaemonCompileResult;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? results = freezed,
  }) {
    return _then(DaemonCompileResult(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CompiledHoneyTalk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('compile_result')
class _$DaemonCompileResult extends DaemonCompileResult {
  const _$DaemonCompileResult({required this.requestId, required this.results})
      : super._();

  factory _$DaemonCompileResult.fromJson(Map<String, dynamic> json) =>
      _$$DaemonCompileResultFromJson(json);

  @override
  final int requestId;
  @override
  final List<CompiledHoneyTalk> results;

  @override
  String toString() {
    return 'DaemonMessage.compileResult(requestId: $requestId, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaemonCompileResult &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  $DaemonCompileResultCopyWith<DaemonCompileResult> get copyWith =>
      _$DaemonCompileResultCopyWithImpl<DaemonCompileResult>(this, _$identity);

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
    return _$$DaemonCompileResultToJson(this)..['type'] = 'compile_result';
  }
}

abstract class DaemonCompileResult extends DaemonMessage {
  const factory DaemonCompileResult(
      {required int requestId,
      required List<CompiledHoneyTalk> results}) = _$DaemonCompileResult;
  const DaemonCompileResult._() : super._();

  factory DaemonCompileResult.fromJson(Map<String, dynamic> json) =
      _$DaemonCompileResult.fromJson;

  int get requestId => throw _privateConstructorUsedError;
  List<CompiledHoneyTalk> get results => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonCompileResultCopyWith<DaemonCompileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaemonErrorCopyWith<$Res> {
  factory $DaemonErrorCopyWith(
          DaemonError value, $Res Function(DaemonError) then) =
      _$DaemonErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$DaemonErrorCopyWithImpl<$Res> extends _$DaemonMessageCopyWithImpl<$Res>
    implements $DaemonErrorCopyWith<$Res> {
  _$DaemonErrorCopyWithImpl(
      DaemonError _value, $Res Function(DaemonError) _then)
      : super(_value, (v) => _then(v as DaemonError));

  @override
  DaemonError get _value => super._value as DaemonError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DaemonError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('error')
class _$DaemonError extends DaemonError {
  const _$DaemonError({required this.error}) : super._();

  factory _$DaemonError.fromJson(Map<String, dynamic> json) =>
      _$$DaemonErrorFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'DaemonMessage.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaemonError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DaemonErrorCopyWith<DaemonError> get copyWith =>
      _$DaemonErrorCopyWithImpl<DaemonError>(this, _$identity);

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
    return _$$DaemonErrorToJson(this)..['type'] = 'error';
  }
}

abstract class DaemonError extends DaemonMessage {
  const factory DaemonError({required String error}) = _$DaemonError;
  const DaemonError._() : super._();

  factory DaemonError.fromJson(Map<String, dynamic> json) =
      _$DaemonError.fromJson;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaemonErrorCopyWith<DaemonError> get copyWith =>
      throw _privateConstructorUsedError;
}

DaemonDevice _$DaemonDeviceFromJson(Map<String, dynamic> json) {
  return _DaemonDevice.fromJson(json);
}

/// @nodoc
class _$DaemonDeviceTearOff {
  const _$DaemonDeviceTearOff();

  _DaemonDevice call(
      {required String id, required String name, required String platform}) {
    return _DaemonDevice(
      id: id,
      name: name,
      platform: platform,
    );
  }

  DaemonDevice fromJson(Map<String, Object> json) {
    return DaemonDevice.fromJson(json);
  }
}

/// @nodoc
const $DaemonDevice = _$DaemonDeviceTearOff();

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
abstract class _$DaemonDeviceCopyWith<$Res>
    implements $DaemonDeviceCopyWith<$Res> {
  factory _$DaemonDeviceCopyWith(
          _DaemonDevice value, $Res Function(_DaemonDevice) then) =
      __$DaemonDeviceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String platform});
}

/// @nodoc
class __$DaemonDeviceCopyWithImpl<$Res> extends _$DaemonDeviceCopyWithImpl<$Res>
    implements _$DaemonDeviceCopyWith<$Res> {
  __$DaemonDeviceCopyWithImpl(
      _DaemonDevice _value, $Res Function(_DaemonDevice) _then)
      : super(_value, (v) => _then(v as _DaemonDevice));

  @override
  _DaemonDevice get _value => super._value as _DaemonDevice;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? platform = freezed,
  }) {
    return _then(_DaemonDevice(
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
        (other is _DaemonDevice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(platform);

  @JsonKey(ignore: true)
  @override
  _$DaemonDeviceCopyWith<_DaemonDevice> get copyWith =>
      __$DaemonDeviceCopyWithImpl<_DaemonDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaemonDeviceToJson(this);
  }
}

abstract class _DaemonDevice implements DaemonDevice {
  const factory _DaemonDevice(
      {required String id,
      required String name,
      required String platform}) = _$_DaemonDevice;

  factory _DaemonDevice.fromJson(Map<String, dynamic> json) =
      _$_DaemonDevice.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get platform => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DaemonDeviceCopyWith<_DaemonDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

CompiledHoneyTalk _$CompiledHoneyTalkFromJson(Map<String, dynamic> json) {
  return _CompiledHoneyTalk.fromJson(json);
}

/// @nodoc
class _$CompiledHoneyTalkTearOff {
  const _$CompiledHoneyTalkTearOff();

  _CompiledHoneyTalk call(
      {List<Statement>? statements,
      String? error,
      int? errorLine,
      int? errorColumn}) {
    return _CompiledHoneyTalk(
      statements: statements,
      error: error,
      errorLine: errorLine,
      errorColumn: errorColumn,
    );
  }

  CompiledHoneyTalk fromJson(Map<String, Object> json) {
    return CompiledHoneyTalk.fromJson(json);
  }
}

/// @nodoc
const $CompiledHoneyTalk = _$CompiledHoneyTalkTearOff();

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
abstract class _$CompiledHoneyTalkCopyWith<$Res>
    implements $CompiledHoneyTalkCopyWith<$Res> {
  factory _$CompiledHoneyTalkCopyWith(
          _CompiledHoneyTalk value, $Res Function(_CompiledHoneyTalk) then) =
      __$CompiledHoneyTalkCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Statement>? statements,
      String? error,
      int? errorLine,
      int? errorColumn});
}

/// @nodoc
class __$CompiledHoneyTalkCopyWithImpl<$Res>
    extends _$CompiledHoneyTalkCopyWithImpl<$Res>
    implements _$CompiledHoneyTalkCopyWith<$Res> {
  __$CompiledHoneyTalkCopyWithImpl(
      _CompiledHoneyTalk _value, $Res Function(_CompiledHoneyTalk) _then)
      : super(_value, (v) => _then(v as _CompiledHoneyTalk));

  @override
  _CompiledHoneyTalk get _value => super._value as _CompiledHoneyTalk;

  @override
  $Res call({
    Object? statements = freezed,
    Object? error = freezed,
    Object? errorLine = freezed,
    Object? errorColumn = freezed,
  }) {
    return _then(_CompiledHoneyTalk(
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
@JsonSerializable()
class _$_CompiledHoneyTalk implements _CompiledHoneyTalk {
  const _$_CompiledHoneyTalk(
      {this.statements, this.error, this.errorLine, this.errorColumn});

  factory _$_CompiledHoneyTalk.fromJson(Map<String, dynamic> json) =>
      _$$_CompiledHoneyTalkFromJson(json);

  @override
  final List<Statement>? statements;
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
        (other is _CompiledHoneyTalk &&
            (identical(other.statements, statements) ||
                const DeepCollectionEquality()
                    .equals(other.statements, statements)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.errorLine, errorLine) ||
                const DeepCollectionEquality()
                    .equals(other.errorLine, errorLine)) &&
            (identical(other.errorColumn, errorColumn) ||
                const DeepCollectionEquality()
                    .equals(other.errorColumn, errorColumn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statements) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errorLine) ^
      const DeepCollectionEquality().hash(errorColumn);

  @JsonKey(ignore: true)
  @override
  _$CompiledHoneyTalkCopyWith<_CompiledHoneyTalk> get copyWith =>
      __$CompiledHoneyTalkCopyWithImpl<_CompiledHoneyTalk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompiledHoneyTalkToJson(this);
  }
}

abstract class _CompiledHoneyTalk implements CompiledHoneyTalk {
  const factory _CompiledHoneyTalk(
      {List<Statement>? statements,
      String? error,
      int? errorLine,
      int? errorColumn}) = _$_CompiledHoneyTalk;

  factory _CompiledHoneyTalk.fromJson(Map<String, dynamic> json) =
      _$_CompiledHoneyTalk.fromJson;

  @override
  List<Statement>? get statements => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get errorLine => throw _privateConstructorUsedError;
  @override
  int? get errorColumn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompiledHoneyTalkCopyWith<_CompiledHoneyTalk> get copyWith =>
      throw _privateConstructorUsedError;
}
