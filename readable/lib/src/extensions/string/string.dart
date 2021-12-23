///
extension StringReadableX on String {
  ///Convert  String to List of Characters
  List<String> toChars() => split('');

  /// Checks if string is Palindrom.
  bool get isPalindrom => reversed == this;

  ///Reverse a string
  String get reversed => split('').reversed.join();
}
