/// convert string to different types
extension RStringConvert on String {
  ///Convert  String to List of Characters
  List<String> toChars() => split('');

  /// convert String to int if is possible
  /// else throw `FormatException`
  int toInt() => int.parse(this);

  /// convert String to int if is possible
  /// else will return null
  int? toIntOrNull() => int.tryParse(this);

  /// convert String to int if is possible
  /// else will return value
  int toIntOr(int value) => toIntOrNull() ?? value;

  /// convert String to `double` if is possible
  /// else throw `FormatException`
  double toDouble() => double.parse(this);

  /// convert String to double if is possible
  /// else will return null
  double? toDoubleOrNull() => double.tryParse(this);

  /// convert String to double if is possible
  /// else will return value
  double toDoubleOr(double value) => toDoubleOrNull() ?? value;

  /// convert String to `DateTime` if is possible
  /// else throw `FormatException`
  DateTime toDate() => DateTime.parse(this);

  /// convert String to DateTime if is possible
  /// else will return null
  DateTime? toDateOrNull() => DateTime.tryParse(this);

  /// convert String to DateTime if is possible
  /// else will return value
  DateTime toDateOr(DateTime value) => toDateOrNull() ?? value;

  /// convert String to DateTime if is possible
  /// else will return DateTime Now
  DateTime toDateOrNow() => toDateOrNull() ?? DateTime.now();

  /// convert String to `num` if is possible
  /// else throw `FormatException`
  num toNum() => num.parse(this);

  /// convert String to `num` if is possible
  /// else return `0`
  num toNumOrZero() => toNumOr(0);

  /// convert String to DateTime if is possible
  /// else will return null
  num? toNumOrNull() => num.tryParse(this);

  /// convert String to DateTime if is possible
  /// else will return value
  num toNumOr(num value) => toNumOrNull() ?? value;
}
