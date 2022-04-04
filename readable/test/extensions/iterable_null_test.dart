import 'package:readable/readable.dart';
import 'package:test/test.dart';

void main() {
  test('it removes null values', () {
    final data = [1, null, 2, null, 3, null, 4, null];
    data.removeWhereNull();
    expect(data, [1, 2, 3, 4]);
  });
}
