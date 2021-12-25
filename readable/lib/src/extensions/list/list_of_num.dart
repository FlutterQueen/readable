/// list readableX
extension ReadableNumListX on List<num> {
  /// * return list summation
  /// * return `0` if list is empty
  num sum() {
    num sum = 0;
    for (final n in this) {
      sum += n;
    }
    return sum;
  }

  /// * return list average
  /// ! throws `StateError` is the list is empty
  num average() {
    if (isEmpty) {
      throw StateError('cant calculate average since the  list is empty');
    }
    return sum() / length;
  }

  /// * return list average
  /// * if list is empty will return the value
  num averageOr(num value) => averageOrNull() ?? value;

  /// * return the average of the list
  /// * return `0` if list is empty .
  num averageOrZero() => averageOr(0);

  /// * return the average of the list if list empty return zero.
  num? averageOrNull() => isEmpty ? null : average();

  /// * return the average of the list
  /// ! if list empty throw `StateError`
  num averageOrThrow() {
    if (isEmpty) {
      throw StateError('list is empty');
    }
    return average();
  }

  /// * Max value of the list
  num max() {
    num max = first;
    for (final n in this) {
      if (n > max) max = n;
    }
    return max;
  }

  /// Returns the maximum value in the list if list empty return zero.
  num maxOrZero() => maxOrNull() ?? 0;

  /// Returns the maximum value in the list if list empty return value.
  num maxOr(num value) => maxOrNull() ?? value;

  /// Returns the maximum value in the list if list empty return Null.
  num? maxOrNull() => isEmpty ? null : max();

  ///Returns the maximum value in the list if list empty throw  StateError.
  num maxOrThrow() {
    if (isEmpty) {
      throw StateError('list is empty');
    }
    return max();
  }

  /// Min value of the list
  num min() {
    num min = first;
    for (final n in this) {
      if (n < min) min = n;
    }
    return min;
  }

  /// Returns the minimum value in the list if list empty return zero.
  num minOrZero() => minOrNull() ?? 0;

  /// Returns the minimum value in the list if list empty return value.
  num minOr(num value) => minOrNull() ?? value;

  /// Returns the minimum value in the list if list empty return Null.

  num? minOrNull() => isEmpty ? null : min();

  ///Returns the minimum value in the list if list empty throw  StateError.
  num minOrThrow() {
    if (isEmpty) {
      throw StateError('list is empty');
    }
    return min();
  }
}
