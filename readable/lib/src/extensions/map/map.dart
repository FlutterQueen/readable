///
extension MapExt<K, V> on Map<K, V> {
  // Map<K, V> whereNull() {
  //   final map = <K, V>{};
  //   for (final entry in entries) {
  //     if (entry.value != null) {
  //       map[entry.key] = entry.value;
  //     }
  //   }
  //   return map;
  // }
  /// return only key i need it
  Map<K, V?> only(List<K> keys) {
    final holder = <K, V?>{};
    for (final key in keys) {
      holder[key] = this[key];
    }
    return holder;
  }
}
