///
extension MapExt<K, V> on Map<K, V> {
  /// return null values from the list
  Map<K, V> whereNull() {
    final map = <K, V>{};
    for (final entry in entries) {
      if (entry.value != null) {
        map[entry.key] = entry.value;
      }
    }
    return map;
  }

  /// return only key i need it
  Map<K, V?> only(List<K> keys) {
    final holder = <K, V?>{};
    for (final key in keys) {
      holder[key] = this[key];
    }
    return holder;
  }

  /// return the map without some keys
  Map<K, V?> expect(List<K> keys) {
    final holder = Map<K, V?>.of(this);
    keys.forEach(holder.remove);
    return holder;
  }


  ///swaps the collection's keys with their corresponding values
  Map<V, K> flip() {
    final Map<V, K> flippedMap = {};
    forEach((key, value) {
      flippedMap[value] = key;
    });
    return flippedMap;


  /// return the map without some keys
  Map<K, V> exceptNull() {
    final holder = Map<K, V>.of(this);
    holder.removeWhere((key, value) => value == null);
    return holder;
  }

  /// return the map without some keys
  Map<K, V?> exceptNullAndEmpty() {
    final holder = Map<K, V?>.of(this);
    holder.removeWhere(
        (key, value) => value == null || value is String && value.isEmpty);
    return holder;
  }

  /// return the map without some keys
  Map<K, V?> exceptEmpty() {
    final holder = Map<K, V?>.of(this);
    holder.removeWhere((key, value) => value is String && value.isEmpty);
    return holder;

  }
}
