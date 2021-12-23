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
      reason: "List is empity",
    );

    expect(
      [1, 5, 3].firstOr(5),
      equals(1),
      reason: "List is not empiy",
    );
  });
  test("it remove duplicate elements", () {
    expect(
      [].removeDuplicated,
      isEmpty,
      reason: "list is Empty",
    );
    expect(
      [5, 7, 6, 7, 5].removeDuplicated,
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
    'unique',
    () {
      expect(
        [].unique(),
        [],
        reason: "list is Empty",
      );
      expect([1].unique(), [1]);
      expect([1, 1, 1, 2].unique(), [1, 2]);
      expect([1, 2, 3, 4, 5, 6, 6, 7, 8].unique(), [1, 2, 3, 4, 5, 6, 7, 8]);
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
        ' list summation',
        () {
          expect(
            <num>[].sum(),
            0,
            reason: "list is Empty",
          );
          expect([1, 2, 3, 4].sum(), 10);
          expect([1, 2, 3, 4, 10].sum(), 20);
          expect([1, 2, 3, 4, -10].sum(), 0);
        },
      );
      test(
        'average of the list',
        () {
          expect(
            <num>[].averageOrZero(),
            0,
            reason: "list is Empty",
          );
          expect([1, 1, 1, 1].averageOrZero(), 1);
          expect([5, 4, 6, 6, 9].averageOrThrow(), 6);
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
            <num>[].maxOrZero(),
            0,
            reason: "list is Empty",
          );
          expect([1, 6, 1, 1].maxOrZero(), 6);
          expect([5, 4, 6, 6, 9].maxOrThrow(), 9);
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

          expect([1, 6, 1, 1].minOrZero(), 1);
          expect([5, 4, 6, 6, 9].minOrThrow(), 4);
          expect([-5, -4, -6, -6, -9].minOrThrow(), -9);
        },
      );
    },
  );
}
