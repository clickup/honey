import 'dart:collection';

extension ListX<T> on List<T> {
  bool contentEquals(List<T> other) {
    if (other.length != length) {
      return false;
    }
    for (var i = 0; i < length; i++) {
      if (other[i] != this[i]) {
        return false;
      }
    }
    return true;
  }
}

extension MapX<T> on Map<String, T> {
  Map<String, T> toCaseInsensitive() {
    return LinkedHashMap(
      equals: (a, b) => a.toLowerCase() == b.toLowerCase(),
      hashCode: (key) => key.toLowerCase().hashCode,
    )..addAll(this);
  }
}
