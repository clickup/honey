import 'package:honey/src/runner/errors/honey_error.dart';

class WidgetNotFoundError extends HoneyError {
  WidgetNotFoundError(String widget) : super('Could not find $widget', true);
}
