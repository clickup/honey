library honey_core;

export 'src/models/debug/debug_message.dart';
export 'src/models/debug/test_step.dart';
export 'src/models/statement.dart';
export 'src/models/expression/expression.dart';
export 'src/models/widget_reference.dart';

const honeyStepMarker = '\$HONEY_STEP';
final honeyStepRegex = RegExp(r'\$HONEY_STEP(.*)');

const honeyPortMarker = '\$HONEY_PORT';
final honeyPortRegex = RegExp(r'\$HONEY_PORT(.*)');

const honeyTestMarker = '\$HONEY_TEST';
final honeyTestRegex = RegExp(r'\$HONEY_TEST(.*)');

const defaultStepTimeout = Duration(seconds: 20);
