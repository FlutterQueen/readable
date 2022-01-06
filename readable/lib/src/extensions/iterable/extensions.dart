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

  /// * return the `count` of the `null` elements
  int countNull() => count((e) => e == null);

  /// * return the `length` of the NOT `null` elements
  int countNotNull() => count((e) => e != null);

  /// counter the element of certain value
  int countValue(T value) => count((e) => e == value);

  /// * async for each
  Future<void> loop(
    FutureOr<void> Function(T e) action,
  ) async {
    for (final item in this) {
      await action(item);
    }
  }

  // /// * async Map
  // Future<List<S>> asyncMap<S>(
  //   FutureOr<S> Function(T e) action,
  // ) async {
  //   final list = <S>[];
  //   for (final item in this) {
  //     list.add(await action(item));
  //   }
  //   return list;
  // }

  /// * return a new `List` without duplicated `elements`
  List<T> withoutDuplicate() => toSet().toList();

  /// * return a random element from list
  /// ! throws `StateError` if list is empty
  T get random => elementAt(Random().nextInt(length));

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
  T? atOrNull(int index) => length - 1 >= index ? elementAt(index) : null;

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
