import 'package:honey/honey.dart';
import 'package:honey_core/honey_core.dart';
import 'package:honey/src/runner/context/honey_context.dart';
import 'package:intl/intl.dart';

abstract class DateFunctions {
  static const functions = {
    'format': format,
    'now': now,
  };

  static Future<Expression> format(
      HoneyContext ctx, FunctionParams params) async {
    final dateStr = await params.getAndEval(ctx, 0);
    final sourceFormat = await params.getAndEval(ctx, 1);
    final targetFormat = await params.getAndEval(ctx, 2);

    DateTime date;
    if (sourceFormat.isNotEmpty) {
      date = DateFormat(sourceFormat.value).parse(dateStr.value ?? '');
    } else {
      date = DateTime.parse(dateStr.value ?? '');
    }

    String formattedDate;
    if (targetFormat.isNotEmpty) {
      formattedDate = DateFormat(targetFormat.value ?? '').format(date);
    } else {
      formattedDate = date.toIso8601String();
    }

    return ValueExp(
      formattedDate,
      retry: dateStr.retry || sourceFormat.retry || targetFormat.retry,
    );
  }

  static Future<Expression> now(HoneyContext ctx, FunctionParams params) async {
    return ValueExp(DateTime.now(), retry: false);
  }
}
