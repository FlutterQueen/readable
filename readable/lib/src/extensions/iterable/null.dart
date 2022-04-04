/// *
extension ReadAbleIterableNull<T> on List<T?> {
  /// * return the `length` without `null` elements
  void removeWhereNull() {
    /// remove null elements
    return removeWhere((e) => e == null);
  }
}
