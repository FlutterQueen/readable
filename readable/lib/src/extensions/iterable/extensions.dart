import 'dart:async';
import 'dart:math';

///sss

extension ReadAbleIterable<T> on Iterable<T> {
  /// * return the `length` without `null` elements
  int countWithoutNull() {
    /// create a new list
    final holder = List.from(this);

    /// remove null elements
    holder.removeWhere((element) => element == null);

    /// return the holder elements count
    return holder.length;
  }

  /// * alias for `length`
  /// * but can filter before if needed
  int count([
    bool Function(T element)? mapper,
  ]) =>
      mapper == null ? length : where(mapper).length;

  // int countNull() => count((e) => e == null);
  // int countEmpty() => count((e) => e is String && e.trim().isEmpty);
  // int countNotEmpty() => count((e) => e is String && e.trim().isNotEmpty);
  // int countNotNull() => count((e) => e != null);
  // int countNotEmptyOrNull() =>
  //     count((e) => e is String && e.trim().isNotEmpty || e != null);
  // int countNotEmptyOrNullOrZero() =>
  //     count((e) => e is String && e.trim().isNotEmpty || e != null || e == 0);
  // int countNotEmptyOrNullOrZeroOrFalse() => count(
  //       (e) =>
  //           e is String && e.trim().isNotEmpty ||
  //           e != null ||
  //           e == 0 ||
  //           e == false,
  //     );

  // int countValue(T value) => count((e) => e == value);

  /// * async for each
  Future<void> loop(
    FutureOr<void> Function(T e) action,
  ) async {
    for (final item in this) {
      await action(item);
    }
  }

  /// * return a new `List` without duplicated `elements`
  List<T> withoutDuplicate() => toSet().toList();

  /// * return a random element from list
  /// ! throws `StateError` if list is empty
  T get random => elementAt(Random().nextInt(Random().nextInt(length)));

  /// * return the first element
  /// * return `null` if isEmpty
  T? firstOrNull() => isEmpty ? null : first;

  /// * return first element if list is not empty
  /// * return `value` if isEmpty
  T firstOr(T value) => firstOrNull() ?? value;

  /// * return the last element
  /// * return `null` if isEmpty
  T? lastOrNull() => isEmpty ? null : last;

  /// * return the last element
  /// * return `value` if isEmpty
  T lastOr(T value) => lastOrNull() ?? value;

  /// * return element by index
  /// * return `null` if index out of range
  T? atOrNull(int index) {
    return length - 1 >= index ? elementAt(index) : null;
  }

  /// * return element by index
  /// * return `value` if index out of range
  T atOr(int index, T value) => length - 1 >= index ? elementAt(index) : value;

  /// * return the first match
  /// * return null if there is no match
  T? firstWhereOrNull(bool Function(T e) test) {
    try {
      return firstWhere(test);
    } catch (e) {
      if (e is StateError) return null;
      rethrow;
    }
  }

  /// * like `map()` function but now you have the index with the element
  List<T> mapWithIndex(T Function(int index, T element) mapper) {
    final result = <T>[];
    for (int i = 0; i < length; i++) {
      result.add(mapper(i, elementAt(i)));
    }
    return result;
  }

  ///The takeUntil method returns items in the collection until the given callback returns true
  ///If callback never returns true, the takeUntil method will return all items in the collection.

  Iterable<T> takeUntil(bool Function(T e) test) {
    final list = where(test).toList();
    return list.isEmpty ? this : list;
  }
}
