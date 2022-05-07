///

extension ReadableBoolX on bool {
  /// * convert bool to int if true return 1 else 0
  int toInt() => this ? 1 : 0;

  /// * return reversed bool
  bool toggle() => !this;
}
