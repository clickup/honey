enum ClickType {
  single,
  double,
  long,
  right;

  static ClickType fromName(String name) {
    return ClickType.values.firstWhere((e) => e.name == name);
  }
}
