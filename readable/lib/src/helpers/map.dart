/// * merges to maps into single one
/// * if the key found in both maps it will use the one from the second map
Map<String, Object?>? mergeTwoMaps(
  Map<String, Object?>? a,
  Map<String, Object?>? b,
) {
  /// if a is null then return b
  /// if b is null then return a
  /// if both is null then return null 🤷‍♀️
  if (a == null || b == null) return b ?? a;

  /// the result of the merge
  final result = Map.of(a);

  /// ad the key from two to one
  for (final key in b.keys) {
    /// if the value is Map then merge them
    if (b[key] is Map || a[key] is Map) {
      final aValueIsMap = a[key] is Map;
      final bValueIsMap = b[key] is Map;
      result[key] = mergeTwoMaps(
        aValueIsMap ? a[key] as Map<String, Object?>? : {},
        bValueIsMap ? b[key] as Map<String, Object?>? : {},
      );
    } else {
      /// else just use the value from the second map
      result[key] = b[key];
    }
  }
  return result;
}

/// can dig deeper into the Map
/// if the key is not nested return the value
/// if the key is not nested go deep until find the value
Object? findInMap(
  String path,
  Map<Object?, Object?> map, {
  String splitOperator = '.',
}) {
  /// extract if no parent
  if (!path.contains(splitOperator)) return map[path];

  /// split and remove empty
  final keys = path.split(splitOperator);

  /// remove empty keys
  keys.removeWhere((e) => e.isEmpty);

  /// if the key is nested
  if (keys.isNotEmpty) {
    final firstKey = keys.first;
    if (keys.length == 1) return map[firstKey];
    final value = map[firstKey];
    if (value is Map) {
      final newKey = path.replaceFirst('$firstKey$splitOperator', '');
      return findInMap(
        newKey,
        value,
        splitOperator: splitOperator,
      );
    }
  }
  return null;
}

/// takes a Map and return the flat keys to the map
/// Example
/// map :
/// ```dart
/// {
/// "xyx":'some value'
/// "a":{
///     "b":{
///         "c":{
///             "d":{
///                 "e":"end"
///                 }
///           }
///       }
///    }
/// }
/// ```
/// will return
/// ```dart
/// [
/// 'xyz',
/// 'a',
/// 'a.b',
/// 'a.b.c',
/// 'a.b.c.d',
/// 'a.b.c.d.e',
/// ]
/// ```
List<String> flatMapKeys(Map<String, Object?> map) {
  /// full flat list
  final flatKeys = <String>[];

  for (final key in map.keys) {
    final value = map[key];
    flatKeys.add(key);

    if (value is Map) {
      final children = flatMapKeys(value as Map<String, Object?>);
      flatKeys.addAll(children.map((e) => '$key.$e'));
    }
  }

  return flatKeys;
}
