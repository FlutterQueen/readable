///
extension StringReadableX on String {
  ///Convert  String to List of Characters
  List<String> toChars() => split('');

  /// convert String to int if is possible
  /// else will return null
  int? toIntOrNull() => _toInt();

  /// convert String to int if is possible
  /// else will return value
  int toIntOr(int value) => _toInt() ?? value;

  /// convert String to int if is possible
  /// else will throw FormatException
  int? get toIntOrThrow {
    try {
      return int.parse(this);
    } catch (e) {
      rethrow;
    }
  }

  /// convert String to double if is possible
  /// else will return null
  double? toDoubleOrNull() => _toDouble();

  /// convert String to double if is possible
  /// else will return value
  double toDoubleOr(double value) => _toDouble() ?? value;

  /// convert String to int if is possible
  /// else will throw FormatException
  double get toDoubleOrThrow {
    try {
      return double.parse(this);
    } catch (e) {
      rethrow;
    }
  }

  /// convert String to DateTime if is possible
  /// else will return null
  DateTime? toDateOrNull() => _toDate();

  /// convert String to DateTime if is possible
  /// else will return value
  DateTime toDateOr(DateTime value) => _toDate() ?? value;

  /// convert String to DateTime if is possible
  /// else will return DateTime Now
  DateTime toDateOrNow() => _toDate() ?? DateTime.now();

  /// convert String to DateTime if is possible
  /// else will throw FormatException
  DateTime get toDateOrThrow {
    try {
      return DateTime.parse(this);
    } catch (e) {
      rethrow;
    }
  }

  /// Checks if string is Palindrom.
  bool get isPalindrom => reversed == this;

  ///Reverse a string
  String get reversed => split('').reversed.join();

  ///Uppercase first letter inside string and let the others lowercase
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

  /// This is here to for the 'DRY'
  int? _toInt() => int.tryParse(this);
  double? _toDouble() => double.tryParse(this);
  DateTime? _toDate() => DateTime.tryParse(this);
}
