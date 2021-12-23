/// list readableX
extension ReadableNumListX on List<num> {
  /// return list summation
  num sum() {
    num sum = 0;
    for (final n in this) {
      sum += n;
    }
    return sum;
  }

  /// return the average of the list if list empty return zero.
  num averageOrZero() => isEmpty ? 0 : _average();
  // num averageOrZero() => isEmpty ? 0 : _average();
  ///return the average of the list if list empty throw  StateError.
  num averageOrThrow() {
    try {
      return _average();
    } catch (e) {
      throw StateError;
    }
  }

  /// Returns the maximum value in the list if list empty return zero.
  num maxOrZero() => isEmpty ? 0 : _getMax();

  ///Returns the maximum value in the list if list empty throw  StateError.
  num maxOrThrow() {
    try {
      return _getMax();
    } catch (e) {
      throw StateError;
    }
  }

  /// Returns the minimum value in the list if list empty return zero.
  num minOrZero() => isEmpty ? 0 : _getMin();

  ///Returns the minimum value in the list if list empty throw  StateError.
  num minOrThrow() {
    try {
      return _getMin();
    } catch (e) {
      throw StateError;
    }
  }

  /// This is here to for the 'DRY'
  num _average() => sum() / length;

  /// This is here to for the 'DRY'
  num _getMax() {
    num max = first;
    for (final n in this) {
      if (n > max) {
        max = n;
      }
    }
    return max;
  }

  /// This is here to for the 'DRY'
  num _getMin() {
    num min = first;
    for (final n in this) {
      if (n < min) {
        min = n;
      }
    }
    return min;
  }
}
