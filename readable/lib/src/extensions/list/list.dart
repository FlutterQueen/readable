///
extension RList<T> on List<T?> {
  /// clears the iterable
  /// add all items to the iterable
  void flush(Iterable<T> newItems) {
    clear();
    addAll(newItems);
  }
}
