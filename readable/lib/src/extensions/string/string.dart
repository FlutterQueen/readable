///
extension StringReadableX on String {
  ///Convert  String to List of Characters
  List<String> toChars() => split('');

  /// Checks if string is Palindrome.
  bool get isPalindrome => reversed == this;

  /// Reverse a string
  String get reversed => split('').reversed.join();

  /// Uppercase first letter inside string and let the others lowercase
  /// Example: your name => Your name

  String get capitalizeFirst {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  ///Uppercase first letter inside each word in string
  /// Example: your name => Your Name
  String get capitalize {
    if (isEmpty) return this;
    return split(' ').map((value) => value.capitalizeFirst).join(' ');
  }
}
