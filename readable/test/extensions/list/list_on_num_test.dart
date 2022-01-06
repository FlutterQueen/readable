import 'package:readable/readable.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('sum function', () {
    test('it return the sum if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].sum(), 15);
    });
    test('it throws StateError if list is empty', () {
      expect(
        () => <num>[].sum(),
        throwsStateError,
        reason: "list is Empty",
      );
    });
  });
  group('sumOrZero function', () {
    test('it return the sum if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].sumOrZero(), 15);
    });
    test('it return 0 if list is empty', () {
      expect(
        <num>[].sumOrZero(),
        0,
        reason: "list is Empty",
      );
    });
  });
  group('sumOrNull function', () {
    test('it return the sum if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].sumOrNull(), 15);
    });
    test('it return 0 if list is empty', () {
      expect(
        <num>[].sumOrNull(),
        isNull,
        reason: "list is Empty",
      );
    });
  });
  group('sumOr function', () {
    test('it return the sum if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].sumOr(99), 15);
    });
    test('it return 0 if list is empty', () {
      expect(
        <num>[].sumOr(99),
        99,
        reason: "list is Empty",
      );
    });
  });
  group('average function', () {
    test('it return the average if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].average(), 3);
    });
    test('it throws StateError if list is empty', () {
      expect(() => <num>[].average(), throwsStateError);
    });
  });
  group('averageOr function', () {
    test('it return the average if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].averageOr(100), 3);
    });
    test('it return the default value if the list is empty', () {
      expect(<num>[].averageOr(100), 100);
    });
  });
  group('averageOrZero function', () {
    test('it return the average if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].averageOrZero(), 3);
    });
    test('it return the `0` value if the list is empty', () {
      expect(<num>[].averageOrZero(), 0);
    });
  });
  group('averageOrNull function', () {
    test('it return the average if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].averageOrNull(), 3);
    });
    test('it return the null value if the list is empty', () {
      expect(<num>[].averageOrNull(), null);
    });
  });
  group('averageOrThrow function', () {
    test('it return the average if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].average(), 3);
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].average(), throwsStateError);
    });
  });
  group('max function', () {
    test('it return the max if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].max(), 5);
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].max(), throwsStateError);
    });
  });
  group('maxOrZero function', () {
    test('it return the max if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].maxOrZero(), 5);
    });
    test('it return `0` value if the list is empty', () {
      expect(<num>[].maxOrZero(), 0);
    });
  });
  group('maxOr function', () {
    test('it return the max if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].maxOr(4), 5);
    });
    test('it return  default value if the list is empty', () {
      expect(<num>[].maxOr(2), 2);
    });
  });
  group('maxOrNull function', () {
    test('it return the max if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].maxOrNull(), 5);
    });
    test('it return the null value if the list is empty', () {
      expect(<num>[].maxOrNull(), null);
    });
  });
  group('maxOrThrow function', () {
    test('it return the max if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].max(), 5);
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].max(), throwsStateError);
    });
  });
  group('min function', () {
    test('it return the min if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].min(), 1);
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].min(), throwsStateError);
    });
  });
  group('minOrZero function', () {
    test('it return the min if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].minOrZero(), 1);
    });
    test('it return `0` value if the list is empty', () {
      expect(<num>[].minOrZero(), 0);
    });
  });

  group('minOr function', () {
    test('it return the min if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].minOr(4), 1);
    });
    test('it return  default value if the list is empty', () {
      expect(<num>[].minOr(2), 2);
    });
  });
  group('minOrNull function', () {
    test('it return the min if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].minOrNull(), 1);
    });
    test('it return the null value if the list is empty', () {
      expect(<num>[].minOrNull(), null);
    });
  });
  group('minOrThrow function', () {
    test('it return the min if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].min(), 1);
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].min(), throwsStateError);
    });
  });
  group('count family', () {
    test('countZeros', () {
      expect(
        <num>[1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 0, 0, 0, 0, 0].countZeros(),
        10,
      );
    });
    test('it throwsStateError value if the list is empty', () {
      expect(() => <num>[].min(), throwsStateError);
    });
  });
}
