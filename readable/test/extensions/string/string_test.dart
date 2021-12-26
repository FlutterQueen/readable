import 'package:readable/readable.dart';
import 'package:test/test.dart';

void main() {
  group(
    'reversed function',
    () {
      test(
        'Reverse a string',
        () {
          expect('dart'.reversed, 'trad');
        },
      );
      test(
        'because the string is Empty',
        () {
          expect(
            ''.reversed,
            '',
          );
        },
      );
    },
  );
  group(
    'isPalindrome function',
    () {
      test(
        'Checks if string is Palindrome',
        () {
          expect(
            'readableelbadaer'.isPalindrome,
            isTrue,
          );
        },
      );
      test(
        'because the string is Empty',
        () {
          expect(
            ''.isPalindrome,
            isTrue,
          );
        },
      );
    },
  );
  group('capitalizeFirst function', () {
    test(
      'because the string is Empty',
      () {
        expect(''.capitalizeFirst, '');
      },
    );
    test(
      'Uppercase first letter inside string and let the others lowercase',
      () {
        expect('flutter dev'.capitalizeFirst, 'Flutter dev');
        expect('flutter Dev'.capitalizeFirst, 'Flutter dev');
      },
    );
  });
  group('capitalize function', () {
    test(
      'because the string is Empty',
      () {
        expect(''.capitalize, '');
      },
    );
    test(
      'Uppercase first letter inside each word in string',
      () {
        expect('flutter Dev'.capitalize, 'Flutter Dev');
      },
    );
  });
  group('linesCount function', () {
    test(
      'because the string is Empty',
      () {
        expect(''.linesCount, 1);
      },
    );
    test(
      'return string lines count',
      () {
        expect('flutter\nDev'.linesCount, 2);
      },
    );
  });
  group('last function', () {
    test(
      'because the string is Empty',
      () {
        expect(''.lastOrEmpty, '');
      },
    );
    test(
      'Returns last symbol of string or empty string if `this` is null or empty',
      () {
        expect('flutter\nDev'.lastOrEmpty, 'v');
      },
    );
  });
  group('anyChar function', () {
    test(
      'return false because the string is Empty',
      () {
        expect(''.anyChar((element) => false), isFalse);
      },
    );
    test(
      'Returns `true` if at least one element matches the given [predicate].the [predicate] should have only one character',
      () {
        expect('flutter\nDev'.anyChar((element) => element == 't'), isTrue);
      },
    );
  });
  group('replaceAfter function', () {
    test(
      ' because the string is Empty',
      () {
        expect(''.replaceAfter('a', 'm'), '');
      },
    );
    test(
      'Replaces part of string after the first occurrence of given delimiter with the [replacement] string',
      () {
        expect('flutter******'.replaceAfter('r', ''), 'flutter');
      },
    );
    test(
      'Replaces part of string after the first occurrence of given delimiter with the [replacement] string',
      () {
        expect('flutter******'.replaceAfter('r', 'a'), 'fluttera');
      },
    );
    test(
      'If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string',
      () {
        expect('flutter******'.replaceAfter('x', 'a'), 'flutter******');
      },
    );
  });
  group('replaceBefore function', () {
    test(
      ' because the string is Empty',
      () {
        expect(''.replaceBefore('a', 'm'), '');
      },
    );
    test(
      'Replaces part of string before the first occurrence of given delimiter with the [replacement] string.',
      () {
        expect('flutter******'.replaceBefore('*', ''), '******');
      },
    );
    test(
      'Replaces part of string before the first occurrence of given delimiter with the [replacement] string',
      () {
        expect('flutter******'.replaceBefore('r', 'a'), 'ar******');
      },
    );
    test(
      'If the string does not contain the delimiter, returns [missingDelimiterValue!] which defaults to the original string.',
      () {
        expect('flutter******'.replaceBefore('x', 'a'), 'flutter******');
      },
    );
  });
}
