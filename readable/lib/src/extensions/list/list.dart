import 'dart:async';
import 'dart:math';

/// list
extension ReadableListX<T> on List<T> {
  /// alias for `.length`
  /// returns the list `length`
  int count() => length;

  /// return the `length` without null elements
  int countWithoutNull() {
    final holder = List.from(this);
    holder.removeWhere((element) => element == null);
    return holder.length;
  }

  /// async for each
  Future<void> loop(
    FutureOr<void> Function(T e) action,
  ) async {
    for (final item in this) {
      await action(item);
    }
  }

  /// return a list without duplicate elements
  List<T> withoutDuplicate() => toSet().toList();

  /// return a random element from list
  T get random => this[Random().nextInt(length)];

  /// return first element if list is not empty
  /// else return the default value
  T firstOr(T value) {
    return firstOrNull() ?? value;
  }

  /// return the first element if list is not empty
  T? firstOrNull() {
    return isEmpty ? null : first;
  }

  /// return the last element if list is not empty
  T? lastOrNull() {
    return isEmpty ? null : last;
  }

  /// return last element if list is not empty
  /// else return the default value
  T lastOr(T value) {
    return lastOrNull() ?? value;
  }

  /// return element by index
  /// if index si out of range will return null
  T? atOrNull(int index) {
    return length - 1 >= index ? this[index] : null;
  }

  /// return element by index
  /// if index si out of range will return the `value`
  T atOr(int index, T value) {
    return length - 1 >= index ? this[index] : value;
  }

  /// return the first match
  /// else will return null
  T? firstWhereOrNull(bool Function(T e) test) {
    try {
      return firstWhere(test);
    } catch (e) {
      if (e is StateError) return null;
      rethrow;
    }
  }

  /// like `map()`  function but now you have the index with the element
  List<T> mapWithIndex(T Function(int index, T e) test) {
    final result = <T>[];
    for (int i = 0; i < length; i++) {
      result.add(test(i, this[i]));
    }
    return result;
  }

  ///The take method returns a new collection with the specified number of items
  List<T> take(int value) {
    return sublist(value);
  }

  ///The takeUntil method returns items in the collection until the given callback returns true:
  List<T> takeUntil(bool Function(T e) test) {
    final list = where(test).toList();
    return list.isEmpty ? this : list;
  }
}
