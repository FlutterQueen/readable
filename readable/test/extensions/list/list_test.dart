import 'package:readable/readable.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('count function', () {
    test('it return the list `length`', () {
      expect([1, 2, 3, 4, 5].count(), 5);
    });
    test('it return `0` if the list is empty', () {
      expect([].count(), 0);
    });
  });
  group('countWithoutNull function', () {
    test('return the `length` without null elements', () {
      expect([1, 2, 3, 4, null, 5, null].countWithoutNull(), 5);
    });
    test('it return `0` if the list is empty', () {
      expect([].countWithoutNull(), 0);
    });
  });
  group('loop function', () {
    test('async for each', () async {
      int count = 0;
      final numbers = [1, 2, 3, 4, 5, 6];
      await numbers.loop((v) {
        count++;
      });
      expect(count, numbers.count());
    });
  });
  group('withoutDuplicate function', () {
    test('return a list without duplicate elements', () {
      expect([1, 2, 3, 3, 3].withoutDuplicate(), [1, 2, 3]);
    });
    test('it return `0` if the list is empty', () {
      expect([].withoutDuplicate(), []);
    });
  });
  group('random function', () {
    test('return a random element from list', () {
      const items = [1, 2, 3, 'H', 5];

      expect(items.contains(items.random), isTrue);
    });
    test('it throwsRangeError if the list is empty', () {
      expect(() => [].random, throwsRangeError);
    });
  });
  group('firstOr function', () {
    test('return first element if list is not empty', () {
      expect([1, 2, 3, 4, 5].firstOr(2), 1);
    });
    test('it return  default value if the list is empty', () {
      expect([].firstOr(2), 2);
    });
  });
  group('firstOrNull function', () {
    test('return first element if list is not empty', () {
      expect([1, 2, 3, 4, 5].firstOrNull(), 1);
    });
    test('it return  null value if the list is empty', () {
      expect([].firstOrNull(), null);
    });
  });
  group('lastOrNull function', () {
    test('return last element if list is not empty', () {
      expect([1, 2, 3, 4, 5].lastOrNull(), 5);
    });
    test('it return  null value if the list is empty', () {
      expect([].lastOrNull(), null);
    });
  });
  group('lastOr function', () {
    test('return last element if list is not empty', () {
      expect([1, 2, 3, 4, 5].lastOr(2), 5);
    });
    test('it return  default value if the list is empty', () {
      expect([].lastOr(2), 2);
    });
  });
  group('atOr function', () {
    test('return element by index', () {
      expect([1, 2, 3, 4, 5].atOr(4, 3), 5);
    });
    test('it return  default value if the list is empty', () {
      expect([].atOr(2, 4), 4);
    });
    test('if index si out of range will return the `value`', () {
      expect([1, 2].atOr(10, 4), 4);
    });
  });
  group('atOrNull function', () {
    test('return element by index', () {
      expect([1, 2, 3, 4, 5].atOrNull(4), 5);
    });
    test('it return null value if the list is empty', () {
      expect([].atOrNull(2), null);
    });
    test('if index  out of range will return null', () {
      expect([1, 2].atOrNull(10), null);
    });
  });
  group(' firstWhereOrNull function', () {
    test('return the first match', () {
      expect([1, 2, 3, 4, 5].firstWhereOrNull((e) => e % 2 == 0), 2);
    });
    test('it return null value if the list is empty', () {
      expect([].firstWhereOrNull((e) => false), null);
    });
    test('return null if not match', () {
      expect([1, 2].firstWhereOrNull((e) => e * 2 == 10), null);
    });
  });
  group('mapWithIndex function', () {
    test('like `map()`  function but now you have the index with the element',
        () {
      expect([].mapWithIndex((index, e) => null), []);
      expect([5, 4, 6].mapWithIndex((index, e) => index), [0, 1, 2]);
      expect([5, 4, 6].mapWithIndex((index, e) => index * 2), [0, 2, 4]);
    });
  });
  group('takeUntil function', () {
    test(
        'returns items in the collection until the given callback returns true',
        () {
      expect(
        [1, 2, 3, 4, 5, 6].takeUntil((e) => e % 2 == 0),
        [2, 4, 6],
      );
    });
    test(
        'If callback never returns  true, the takeUntil method will return all items in the collection.',
        () {
      expect(
        [1, 2, 3, 4, 5, 6].takeUntil((e) => e - 10 == 0),
        [1, 2, 3, 4, 5, 6],
      );
    });
  });
  group('counter family', () {
    test(
      'countNull',
      () => expect([null, 1, 2, 3, null].countNull(), 2),
    );
    test(
      'countNotNull',
      () => expect([null, 1, 2, 3, null].countNotNull(), 3),
    );
    test(
      'countEmpty',
      () => expect(['', '1', '2', '3', '', ''].countEmpty(), 3),
    );
    test(
      'countEmpty',
      () => expect(['', '1', '2', '3', ''].countNotEmpty(), 3),
    );
    test(
      'countEmpty',
      () => expect(['x', '1', '2', '3', 'x', 'x'].countValue('x'), 3),
    );
  });

  test('asyncMap', () async {
    final list = [1, 2, 3, 4, 5];
    final result = await list.asyncMap((e) async {
      await oneSecond();
      return e * 2;
    });
    expect(result, [2, 4, 6, 8, 10]);
  });
}
