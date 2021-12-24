///
// ignore_for_file: avoid_positional_boolean_parameters

extension ReadableBoolX on bool {
  ///convert bool to int if true return 1 else 0
  int toInt() => this ? 1 : 0;

  /// Performs a logical `and` operation between this Boolean and the [other] one. like the `&&` operator,
  bool and(bool other) {
    return this && other;
  }

  /// Performs a logical `or` operation between this Boolean and the [other] one. like the `||` operator,

  bool or(bool other) {
    return this || other;
  }

  /// Performs a logical `xor` operation between this Boolean and the [other] one.
  bool xor(bool other) {
    return this != other;
  }
}
