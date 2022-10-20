enum Property {
  // widget types
  widget,
  button,
  link,
  textfield,
  image,
  slider,
  sswitch,
  header,
  checkbox,

  // widget attributes
  checkable,
  toggleable,
  clickable,
  longClickable,
  scrollable,
  checked,
  unchecked,
  toggled,
  enableable,
  enabled,
  disabled,
  focusable,
  focused,
  multiline,
  selected,
  obscured,
  readonly,

  // widget properties
  label,
  value,
  hint,

  // other properties
  length,
  items,
  lines,
  words,
  custom;

  static Property fromName(String name) {
    return Property.values.firstWhere(
      (e) => e.name == name,
      orElse: () => custom,
    );
  }
}
