import 'package:readable/src/extensions/iterable/extensions.dart';

/// *
extension RIterableNull<T> on List<T?> {
  /// * return the `length` without `null` elements
  void removeWhereNull() {
    /// remove null elements
    return removeWhere((e) => e == null);
  }

  /// * return the `length` without `null` elements
  int countWithoutNull() {
    /// create a new list
    final holder = List.from(this);

    /// remove null elements
    holder.removeWhere((element) => element == null);

    /// return the holder elements count
    return holder.length;
  }

  /// * return the `count` of the `null` elements
  int countNull() => count((e) => e == null);
}
