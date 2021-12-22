import 'package:readable/src/extensions/list/list.dart';
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
}
