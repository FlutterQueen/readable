import 'package:readable/src/extensions/string/string.dart';
import 'package:test/test.dart';

void main() {
  group(
    "toChars",
    () {
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
    },
  );
  group(
    'isPalindrom',
    () {
      test(
        "Checks if string is Palindrom.",
        () {
          expect(
            ''.isPalindrom,
            true,
            reason: 'because the string is Empty',
          );
          expect(
            'readableelbadaer'.isPalindrom,
            true,
          );
          expect(
            'falah'.isPalindrom,
            false,
          );
          expect(
            'flutterrettulf'.isPalindrom,
            true,
          );
          expect(
            '20011002'.isPalindrom,
            true,
          );
          expect(
            '20011002-'.isPalindrom,
            false,
          );
        },
      );
    },
  );
}
