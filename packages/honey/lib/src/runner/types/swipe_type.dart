enum SwipeType {
  Left('left'),
  Up('up'),
  Down('down'),
  Right('right');

  final String label;
  const SwipeType(this.label);
  factory SwipeType.from(String label) {
    return SwipeType.values.firstWhere((e) => e.label == label);
  }

  int get xValue {
    switch (this) {
      case SwipeType.Left:
        return -1;
      case SwipeType.Up:
        return 0;
      case SwipeType.Down:
        return 0;
      case SwipeType.Right:
        return 1;
    }
  }

  int get yValue {
    switch (this) {
      case SwipeType.Left:
        return 0;
      case SwipeType.Up:
        return -1;
      case SwipeType.Down:
        return 1;
      case SwipeType.Right:
        return 0;
    }
  }
}
