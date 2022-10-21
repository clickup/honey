enum Direction {
  top,
  left,
  bottom,
  right;

  static Direction fromName(String name) {
    return Direction.values.firstWhere((e) => e.name == name);
  }

  int get xValue {
    switch (this) {
      case left:
        return -1;
      case top:
        return 0;
      case bottom:
        return 0;
      case right:
        return 1;
    }
  }

  int get yValue {
    switch (this) {
      case left:
        return 0;
      case top:
        return -1;
      case bottom:
        return 1;
      case right:
        return 0;
    }
  }
}
