import 'package:readable/src/extensions/iterable/extensions.dart';

////
extension ReadableIterableString on Iterable<String?> {
  /// return counter of empty elements in the iterable
  /// does not count the null values
  int countEmpty() => count(
        (e) => e?.trim().isEmpty ?? false,
      );

  /// return counter of empty elements in the iterable
  /// does not count the null values
  int countNotEmpty() => count((e) => e?.trim().isNotEmpty ?? false);
}
