import '../synonyms.dart';

final maybeRegex = toRegex(maybe);
final actionRegex = toRegex(
    {verify, see, set, store, wait, output, click, enter, swipe, error});
final controlRegex = toRegex({iff, then, elseIf, elsee, endIf});
final yesNoRegex = toRegex({yes, no});
final logicRegex = toRegex({and, or, not, isAre, isAreNot});
final comparisonRegex = toRegex({eq, neq, gte, gt, lte, lt});
final arithmeticRegex = toRegex({plus, minus, times, divide, pow});
final widgetRegex = toRegex({
  widget,
  button,
  link,
  textfield,
  slider,
  image,
  checkbox,
  sswitch,
  header,
});

String toRegex(dynamic value,
    {bool spaceBefore = false, bool spaceAfter = false}) {
  var optional = false;
  var regex = '';
  if (value is String) {
    regex = RegExp.escape(value.trim())
        .replaceAll('/', '\\/')
        .replaceAll(RegExp(r'\s'), r'\s+');
  } else if (value is Set) {
    assert(value.isNotEmpty);
    optional = value.contains('');
    final nonEmpty = value.where((e) => e != '').toList();
    regex = nonEmpty.map(toRegex).join('|');
    if (nonEmpty.length > 1) {
      regex = '($regex)';
    }
  } else if (value is List) {
    assert(value.isNotEmpty);
    final requiredIndex = value.indexWhere((e) => e is! Set || !e.contains(''));
    for (var i = 0; i < value.length; i++) {
      final element = value[i];
      final before = requiredIndex != -1 && i > requiredIndex;
      final after = i < requiredIndex;
      regex += toRegex(element, spaceBefore: before, spaceAfter: after);
    }
    return regex;
  } else {
    throw UnimplementedError();
  }

  if (spaceBefore) {
    regex = r'\s+' + regex;
  }
  if (spaceAfter) {
    regex = regex + r'\s+';
  }
  if (optional) {
    regex = '($regex)?';
  }
  return regex;
}
