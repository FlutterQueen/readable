/// *
extension ReadAbleIterableNull<T> on Iterable<T?> {
  /// * return the `length` without `null` elements
  Iterable<T> removeWhereNull() {
    /// create a new list
    final holder = List.from(this);

    /// remove null elements
    holder.removeWhere((element) => element == null);

    return holder as Iterable<T>;
  }
}
