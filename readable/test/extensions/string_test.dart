import 'package:readable/src/extensions/string/string.dart';
import 'package:test/test.dart';

void main() {
  test(
    'it return a List of Chars from String',
    () {
      expect(
        "Falah".toChars(),
        ['F', 'a', 'l', 'a', 'h'],
      );
      expect(
        "abcd".toChars(),
        ['a', 'b', 'c', 'd'],
      );
      expect(
        ''.toChars(),
        [],
        reason: "because the List is Empty",
      );
    },
  );
}
