import 'package:readable/src/extensions/list/list.dart';
import 'package:readable/src/extensions/list/list_of_num.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('it return a random element from the list', () {
    const items = [1, 2, 3, 'H', 5];
    expect(
      items.contains(items.random),
      isTrue,
    );
  });

  test('it return first element or return default value ', () {
    expect(
      [].firstOr(5),
      equals(5),
      reason: "List is empty",
    );

    expect(
      [1, 5, 3].firstOr(5),
      equals(1),
      reason: "List is not empty",
    );
  });
  test("it remove duplicate elements", () {
    expect(
      [].withoutDuplicate(),
      isEmpty,
      reason: "list is Empty",
    );
    expect(
      [5, 7, 6, 7, 5].withoutDuplicate(),
      equals([5, 7, 6]),
      reason: "function remove duplicates elements",
    );
  });
  test(
    'count',
    () {
      expect(
        [].count(),
        0,
        reason: "list is Empty",
      );
      expect([1].count(), 1);
      expect([1, 23, 4, 56].count(), 4);
      expect([1, 2, 3, 4, 5, 6, 7, 8].count(), 8);
    },
  );
  test(
    'countWithoutNull',
    () {
      expect(
        [].countWithoutNull(),
        0,
        reason: "list is Empty",
      );
      expect([1].countWithoutNull(), 1);
      expect([1, 23, null, 56].countWithoutNull(), 3);
      expect([1, 2, 3, null, 5, null, 7, 8].countWithoutNull(), 6);
    },
  );
  test(
    'loop',
    () async {
      int count = 0;
      final numbers = [1, 2, 3, 4, 5, 6];
      await numbers.loop((v) {
        count++;
      });
      expect(count, numbers.count());
    },
  );
  group(
    'list of num',
    () {
      test(
        'average of the list',
        () {
          expect(
            <num>[].averageOrZero(),
            0,
            reason: "list is Empty",
          );
          expect(
            <num>[].averageOrNull(),
            null,
            reason: "list is Empty",
          );
          expect(
            <num>[].averageOr(6),
            6,
            reason: "list is Empty",
          );
          expect([1, 1, 1, 1].averageOrZero(), 1);
          expect([5].averageOrZero(), 5);
          expect([5, 4, 6, 6, 9].averageOrThrow(), 6);
          expect([5, 4, 6, 6, 9].averageOrNull(), 6);
          expect([5, 4, 6, 6, 9].averageOr(7), 6);
          expect([5, 4, 6, 6, 9].average(), 6);
        },
      );
      test(
        'maximum value in the list.',
        () {
          expect(
            <num>[].maxOrZero(),
            0,
            reason: "list is Empty",
          );
          expect(
            <num>[].maxOr(3),
            3,
            reason: "list is Empty",
          );
          expect(
            <num>[].maxOrNull(),
            null,
            reason: "list is Empty",
          );
          expect(
            <num>[].maxOr(2001),
            2001,
            reason: "list is Empty",
          );
          expect([1, 6, 1, 1].maxOrZero(), 6);
          expect([6, 6, 6, 6].max(), 6);
          expect([5, 4, 6, 6, 9].maxOrThrow(), 9);
          expect([5, 4, 6, 6, 9].maxOrNull(), 9);
          expect([5, 4, 6, 6, 9].maxOr(3), 9);
          expect([-5, -4, -6, -6, -9].maxOrZero(), -4);
        },
      );
      test(
        'minimum value in the list.',
        () {
          expect(
            <num>[].minOrZero(),
            0,
            reason: "list is Empty",
          );
          expect(
            <num>[].minOrNull(),
            null,
            reason: "list is Empty",
          );
          expect(
            <num>[].minOr(1),
            1,
            reason: "list is Empty",
          );

          expect([1, 6, 1, 1].minOrZero(), 1);
          expect([5, 4, 6, 6, 9].minOrThrow(), 4);
          expect([5, 1, 6, 6, 9].minOrThrow(), 1);
          expect([5, 4, 6, 6, 9].min(), 4);
          expect([-5, -4, -6, -6, -9].minOrNull(), -9);
          expect([-5, -4, -6, -6, -9].minOr(3), -9);
          expect([-5, -4, -6, -6, -9].minOr(-9), -9);
        },
      );
    },
  );
  test(
    'The take method',
    () {
      expect(
        [].take(1),
        [],
        reason: "list is Empty",
      );
      expect(
        [1, 2, 3, 4, 5, 6].take(3),
        [1, 2, 3],
      );
      expect(
        [1, 2, 3, 4, 5, 6].take(1),
        [1],
      );
    },
  );
  test(
    'The random method',
    () {
      expect(
        [5].random,
        5,
      );
      expect(
        [4].random,
        4,
      );
    },
  );
  test(
    'The takeUntil method',
    () {
      expect(
        [].takeUntil((e) => false),
        [],
        reason: "list is Empty",
      );
      expect(
        [1, 2, 3, 4, 5, 6].takeUntil((e) => e % 2 == 0),
        [2, 4, 6],
      );
      expect(
        [1, 2, 3, 4, 5, 6].takeUntil((e) => true),
        [1, 2, 3, 4, 5, 6],
      );
    },
  );
  test(
    'The first & last & at methods',
    () {
      expect(
        [].firstOr(3),
        3,
        reason: "list is Empty",
      );
      expect(
        [].firstOrNull(),
        null,
        reason: "list is Empty",
      );
      expect([1, 2, 3, 4, 5, 6].firstOr(5), 1);
      expect(
        [1, 2, 3, 4, 5, 6].firstOrNull(),
        1,
      );
      expect(
        [].lastOr(3),
        3,
        reason: "list is Empty",
      );
      expect(
        [].lastOrNull(),
        null,
        reason: "list is Empty",
      );
      expect([1, 2, 3, 4, 5, 6].lastOr(5), 6);
      expect(
        [1, 2, 3, 4, 5].lastOrNull(),
        5,
      );
      expect(
        [].atOr(5, 3),
        3,
        reason: "list is Empty",
      );
      expect(
        [].atOrNull(5),
        null,
        reason: "list is Empty",
      );
      expect([1, 2, 3, 4, 5, 6].atOr(5, 3), 6);
      expect(
        [1, 2, 3, 4, 5].atOrNull(2),
        3,
      );
    },
  );
  test(
    "firstWhereOrNull method",
    () {
      expect([].firstWhereOrNull((element) => element == 5), null);
      expect([5, 4, 6].firstWhereOrNull((element) => element == 5), 5);
    },
  );
  test(
    "map with index methods",
    () {
      expect([].mapWithIndex((index, e) => null), []);
      expect([5, 4, 6].mapWithIndex((index, e) => index), [0, 1, 2]);
      expect([5, 4, 6].mapWithIndex((index, e) => index * 2), [0, 2, 4]);
    },
  );
  test('averageOrThrow', () {
    expect(() => <num>[].averageOrThrow(), throwsStateError);
  });
  test('maxOrThrow', () {
    expect(() => <num>[].maxOrThrow(), throwsStateError);
  });
  test('minOrThrow', () {
    expect(() => <num>[].minOrThrow(), throwsStateError);
  });
}
