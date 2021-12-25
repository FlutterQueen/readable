///
extension StringReadableX on String {
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

  /// return string lines count
  int get linesCount => split('\n').length;

  ///  Replaces part of string after the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string.
  String replaceAfter(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue ?? this
        : replaceRange(index + 1, length, replacement);
  }

  /// Replaces part of string before the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [missingDelimiterValue!] which defaults to the original string.
  String replaceBefore(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue ?? this
        : replaceRange(0, index, replacement);
  }

  ///Returns `true` if at least one element matches the given [predicate].
  /// the [predicate] should have only one character
  // ignore: use_function_type_syntax_for_parameters
  bool anyChar(bool predicate(String element)) =>
      split('').any((s) => predicate(s));

  /// Returns last symbol of string or empty string if `this` is null or empty
  String get last {
    if (isEmpty) return '';
    return this[length - 1];
  }
}
