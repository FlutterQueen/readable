///
extension RStringList on List<String?> {
  /// remove empty
  /// ! DOES NOT REMOVE NULL VALUES
  void removeWhereEmpty() => removeWhere(
        (e) => e?.trim().isEmpty ?? false,
      );

  /// remove empty
  void removeWhereEmptyOrNull() => removeWhere(
        (e) => e?.trim().isEmpty ?? true,
      );
}
