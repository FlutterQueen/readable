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
        'reverse a String',
        () {
          expect(
            ''.reversed,
            '',
            reason: 'because the string is Empty',
          );
          expect('dart'.reversed, 'trad');
          expect('queen'.reversed, 'neeuq');
        },
      );
      test(
        "Checks if string is Palindrom.",
        () {
          expect(
            ''.isPalindrom,
            isTrue,
            reason: 'because the string is Empty',
          );
          expect(
            'readableelbadaer'.isPalindrom,
            isTrue,
          );
          expect(
            'falah'.isPalindrom,
            isFalse,
          );
          expect(
            'flutterrettulf'.isPalindrom,
            isTrue,
          );
          expect(
            '20011002'.isPalindrom,
            isTrue,
          );
          expect(
            '20011002-'.isPalindrom,
            isFalse,
          );
        },
      );
    },
  );
}
