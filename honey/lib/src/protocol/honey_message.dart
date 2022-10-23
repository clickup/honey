import 'package:honey/src/honey_widgets_binding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'honey_message.g.dart';

abstract class HoneyMessage {
  const HoneyMessage();

  factory HoneyMessage.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'deviceStatus':
        return DeviceStatus.fromJson(json);
      case 'startTest':
        return StartTestCommand.fromJson(json);
      case 'compileError':
        return CompileError.fromJson(json);
      case 'testStep':
        return TestStep.fromJson(json);
      case 'testFinished':
        return TestFinished.fromJson(json);
      case 'cancelTests':
        return CancelTestsCommand.fromJson(json);
      default:
        throw Exception('Unknown message type ${json['type']}');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class DeviceStatus extends HoneyMessage {
  const DeviceStatus({
    required this.appName,
    required this.appBuild,
    required this.status,
  });

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusFromJson(json);

  final String appName;
  final String appBuild;
  final HoneyStatus status;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'deviceStatus',
        ..._$DeviceStatusToJson(this),
      };
}

@JsonSerializable()
class StartTestCommand extends HoneyMessage {
  const StartTestCommand({
    required this.runId,
    required this.test,
  });

  factory StartTestCommand.fromJson(Map<String, dynamic> json) =>
      _$StartTestCommandFromJson(json);

  final int runId;
  final String test;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'startTest',
        ..._$StartTestCommandToJson(this),
      };
}

@JsonSerializable()
class CompileError extends HoneyMessage {
  const CompileError({
    required this.runId,
    required this.line,
    required this.column,
  });

  factory CompileError.fromJson(Map<String, dynamic> json) =>
      _$CompileErrorFromJson(json);

  final int runId;
  final int line;
  final int column;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'compileError',
        ..._$CompileErrorToJson(this),
      };
}

@JsonSerializable()
class TestStep extends HoneyMessage {
  const TestStep({
    required this.runId,
    required this.step,
    required this.time,
    required this.error,
  });

  factory TestStep.fromJson(Map<String, dynamic> json) =>
      _$TestStepFromJson(json);

  final int runId;
  final String step;
  final int time;
  final String? error;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'testStep',
        ..._$TestStepToJson(this),
      };
}

@JsonSerializable()
class TestFinished extends HoneyMessage {
  const TestFinished({required this.runId});

  factory TestFinished.fromJson(Map<String, dynamic> json) =>
      _$TestFinishedFromJson(json);

  final int runId;

  @override
  Map<String, dynamic> toJson() => {
        'type': 'testFinished',
        ..._$TestFinishedToJson(this),
      };
}

@JsonSerializable()
class CancelTestsCommand extends HoneyMessage {
  const CancelTestsCommand();

  factory CancelTestsCommand.fromJson(Map<String, dynamic> json) =>
      _$CancelTestsCommandFromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        'type': 'cancelTests',
        ..._$CancelTestsCommandToJson(this),
      };
}
