import 'package:readable/src/extensions/bool.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('bool to int', () {
    expect(true.toInt(), 1);
    expect(false.toInt(), 0);
  });
}
