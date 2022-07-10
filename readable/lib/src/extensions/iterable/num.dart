// import 'package:readable/src/extensions/iterable/extensions.dart';

import 'package:readable/src/extensions/iterable/extensions.dart';

/// list `readableX`
extension RNumList on Iterable<num> {
  ///  how many elements == zero
  int countZeros() => countValue(0);

  /// * return list summation
  /// * return `null` if list is empty
  num? sumOrNull() => isEmpty ? null : fold(0, (a, b) => a! + b);

  /// * return list summation
  /// * return `value` if list is empty
  num sumOr(num value) => sumOrNull() ?? value;

  /// * return list summation
  /// * return `0` if  isEmpty
  num sumOrZero() => sumOrNull() ?? 0;

  /// * return list summation
  /// ! throws `StateError` if isEmpty
  num sum() => sumOrNull() ?? (throw StateError('list is empty'));

  /// * return the average of the list
  /// * return `null` if isEmpty
  num? averageOrNull() => isEmpty ? null : (sum() / length);

  /// * return list average
  /// * return `value` if isEmpty
  num averageOr(num value) => averageOrNull() ?? value;

  /// * return the average of the list
  /// * return `0` if  isEmpty
  num averageOrZero() => averageOr(0);

  /// * return list average
  /// ! throws `StateError` if isEmpty
  num average() => averageOrNull() ?? (throw StateError('list is empty'));

  /// * return the maximum value in the list
  /// * return `null` if isEmpty
  num? maxOrNull() {
    if (isEmpty) return null;
    num max = first;
    for (final n in this) {
      if (n > max) max = n;
    }
    return max;
  }

  /// * return the element with the max value
  /// * return `0` if isEmpty
  num maxOrZero() => maxOrNull() ?? 0;

  /// * return the element with the max value
  /// * return `value` if isEmpty
  num maxOr(num value) => maxOrNull() ?? value;

  /// * return the element with the max value
  /// ! throws `StateError` if isEmpty
  num max() => maxOrNull() ?? (throw StateError('list is empty'));

  /// * return the minimum value in the list
  /// * return `null` if isEmpty
  num? minOrNull() {
    if (isEmpty) return null;
    num min = first;
    for (final n in this) {
      if (n < min) min = n;
    }
    return min;
  }

  /// * return the element with the minimum value
  /// * return `value` if isEmpty
  num minOr(num value) => minOrNull() ?? value;

  /// * return the element with the minimum value
  /// * return `value` if isEmpty
  num minOrZero() => minOrNull() ?? 0;

  /// * return the element with the minimum value

  /// * return the element with the max value
  /// ! throws `StateError` if isEmpty
  num min() => minOrNull() ?? (throw StateError('list is empty'));
}
