enum NameModifier {
  caseSensitive,
  caseInsensitive,
  exactly;

  static NameModifier? fromName(String name) {
    for (final value in values) {
      if (value.name == name) {
        return value;
      }
    }
    return null;
  }
}
