import 'package:honey/src/expression/widget_expr.dart';
import 'package:honey/src/runner/context/honey_context_impl.dart';
import 'package:honey/src/runner/context/widget_binding_context_mixin.dart';

class RuntimeHoneyContext extends HoneyContextImpl
    with WidgetBindingContextMixin {
  RuntimeHoneyContext({
    required super.customFunctions,
    super.referenceWidget,
    super.variables,
  });

  @override
  RuntimeHoneyContext clone({WidgetExpr? referenceWidget}) {
    return RuntimeHoneyContext(
      customFunctions: customFunctions,
      referenceWidget: referenceWidget,
      variables: variables,
    );
  }
}
