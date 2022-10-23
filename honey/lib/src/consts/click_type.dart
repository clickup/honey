enum ClickType {
  single,
  double,
  long,
  right;

  static ClickType? fromName(String name) {
    for (final value in values) {
      if (value.name == name) {
        return value;
      }
    }
    return null;
  }
}
