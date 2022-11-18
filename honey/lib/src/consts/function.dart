/// Builtin Honey Functions
enum F {
  /// click a widget
  click,

  /// Verify an expression is true
  verify,

  /// Enter text into the focused text field
  enter,

  /// Wait for the specified duration
  wait,

  /// Swipe a widget
  swipe,

  /// Output a message to the test runner
  output,

  /// Fail the test
  error,

  /// Logical and
  and,

  /// Logical or
  or,

  /// Logical not
  not,

  /// Return the specified property of an expression
  property,

  /// Get or set a variable
  variable,

  /// Find widgets on the screen
  widgets,

  /// Get the current date and time
  now,

  /// Format a date
  format,

  /// Compare two expessions for equality
  equal,

  /// Whether the first expression is greater than the second
  greater,

  /// Whether the first expression is less than the second
  less,

  /// Add two expressions
  plus,

  /// Subtract two expressions
  minus,

  /// Multiply two expressions
  multiply,

  /// Divide two expressions
  divide,

  /// Get the remainder of two expressions
  pow,

  // string
  startsWith,
  endsWith,
  contains,
  matches,
}
