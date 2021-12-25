import 'package:readable/readable.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('sum function', () {
    test('it return the sum if list is not empty', () {
      expect(<num>[1, 2, 3, 4, 5].sum(), 15);
    });
    test('it return the `0` if the list is empty', () {
      expect(
        <num>[].sum(),
        0,
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
}
