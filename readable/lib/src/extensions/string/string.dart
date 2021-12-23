///
extension StringReadableX on String {
  ///convert  String to List of Characters
  List<String> toChars() => split('');

  /// Checks if string is Palindrom.
  bool get isPalindrom => split('').reversed.join() == this;
}
