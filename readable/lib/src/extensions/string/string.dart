///
extension StringReadableX on String {
  ///convert  String to List of Characters
  List<String> get toChars {
    // final List<String> chars = [];
    // for (int i = 0; i < length; i++) {
    //   chars.add(this[i]);
    // }
    // return chars;
    return split('');
  }
}
