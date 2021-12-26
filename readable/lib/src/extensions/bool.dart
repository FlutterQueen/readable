///
// ignore_for_file: avoid_positional_boolean_parameters

extension ReadableBoolX on bool {
  /// * convert bool to int if true return 1 else 0
  int toInt() => this ? 1 : 0;
}
