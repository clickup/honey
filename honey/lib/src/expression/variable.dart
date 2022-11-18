/// Built-in variables.
enum Variable {
  /// The timeout for settling the UI.
  settleTimeout,

  /// The timeout for each test step.
  timeout,

  /// The delay between steps.
  stepDelay,

  /// A multiplier to convert milliseconds to the Honey time unit.
  milliseconds,

  /// A multiplier to convert seconds to the Honey time unit.
  seconds,

  /// A multiplier to convert minutes to the Honey time unit.
  minutes,

  /// A multiplier to convert hours to the Honey time unit.
  hours,

  /// A multiplier to convert days to the Honey time unit.
  days,

  /// A multiplier to convert weeks to the Honey time unit.
  weeks,

  /// A multiplier to convert months to the Honey time unit.
  months,

  /// A multiplier to convert years to the Honey time unit.
  years,
}
