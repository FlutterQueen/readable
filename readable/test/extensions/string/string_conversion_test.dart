import 'package:readable/readable.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'toChars function',
    () {
      test(
        'it return a List of Chars from String',
        () {
          expect(
            "Falah".toChars(),
            ['F', 'a', 'l', 'a', 'h'],
          );
        },
      );
      test(
        'because the List is Empty',
        () {
          expect(
            ''.toChars(),
            [],
          );
        },
      );
    },
  );
  group(
    'toInt function',
    () {
      test('convert String to int if is possible', () {
        expect('12'.toInt(), 12);
      });
      test('throw `FormatException` if is not possible', () {
        expect(() => 'int'.toInt(), throwsFormatException);
      });
    },
  );
  group(
    'toIntOrNull function',
    () {
      test('convert String to int if is possible', () {
        expect('12'.toInt(), 12);
      });
      test('return null if is not possible', () {
        expect('int'.toIntOrNull(), null);
      });
    },
  );
  group(
    'toIntOr function',
    () {
      test('convert String to int if is possible', () {
        expect('12'.toIntOr(1), 12);
      });
      test('return default value if is not possible', () {
        expect('int'.toIntOr(2), 2);
      });
    },
  );
  group(
    'toDouble function',
    () {
      test('convert String to double if is possible', () {
        expect('12'.toDouble(), 12.0);
      });
      test('throw `FormatException` if is not possible', () {
        expect(() => 'int'.toDouble(), throwsFormatException);
      });
    },
  );
  group(
    'toDoubleOrNull function',
    () {
      test('convert String to double if is possible', () {
        expect('12'.toDoubleOrNull(), 12.0);
      });
      test('return null if is not possible', () {
        expect('int'.toDoubleOrNull(), null);
      });
    },
  );
  group(
    'toDoubleOr function',
    () {
      test('convert String to double if is possible', () {
        expect('12'.toDoubleOr(1), 12.0);
      });
      test('return default value if is not possible', () {
        expect('int'.toDoubleOr(2), 2.0);
      });
    },
  );
  group(
    'toDate function',
    () {
      test('convert String to DateTime if is possible', () {
        expect(
          "2021-12-23 21:59".toDate(),
          DateTime(2021, 12, 23, 21, 59),
        );
      });
      test('throw `FormatException` if is not possible', () {
        expect(() => 'int'.toDate(), throwsFormatException);
      });
    },
  );
  group(
    'toDateOrNull function',
    () {
      test('convert String to DateTime if is possible', () {
        expect(
          "2021-12-23 21:59".toDateOrNull(),
          DateTime(2021, 12, 23, 21, 59),
        );
      });
      test('return `null` if is not possible', () {
        expect('int'.toDateOrNull(), null);
      });
    },
  );
  group(
    'toDateOr function',
    () {
      test('convert String to DateTime if is possible', () {
        expect(
          "2021-12-23 21:59".toDateOr(DateTime.now()),
          DateTime(2021, 12, 23, 21, 59),
        );
      });
      test('return `default value` if is not possible', () {
        expect('int'.toDateOr(DateTime.now()).day, DateTime.now().day);
      });
    },
  );
  group(
    'toDateOrNow function',
    () {
      test('convert String to DateTime if is possible', () {
        expect(
          "2021-12-23 21:59".toDateOrNow(),
          DateTime(2021, 12, 23, 21, 59),
        );
      });
      test('return `DateTime.now()` if is not possible', () {
        expect('int'.toDateOrNow().day, DateTime.now().day);
      });
    },
  );
  group(
    'toNum function',
    () {
      test('convert String to num if is possible', () {
        expect('12'.toNum(), 12.0);
      });
      test('throw `FormatException` if is not possible', () {
        expect(() => 'int'.toNum(), throwsFormatException);
      });
    },
  );
  group(
    'toNumOrNull function',
    () {
      test('convert String to num if is possible', () {
        expect('12'.toNumOrNull(), 12.0);
      });
      test('return null if is not possible', () {
        expect('int'.toNumOrNull(), null);
      });
    },
  );
  group(
    'toNumOr function',
    () {
      test('convert String to num if is possible', () {
        expect('12'.toNumOr(1), 12.0);
      });
      test('return default value if is not possible', () {
        expect('int'.toNumOr(2), 2.0);
      });
    },
  );
  group(
    'toNumOrZero function',
    () {
      test('convert String to num if is possible', () {
        expect('12'.toNumOrZero(), 12.0);
      });
      test('return 0  if is not possible', () {
        expect('int'.toNumOrZero(), 0);
      });
    },
  );
}
