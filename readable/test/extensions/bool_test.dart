import 'package:readable/src/extensions/bool.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('bool to int', () {
    expect(true.toInt(), 1);
    expect(false.toInt(), 0);
  });
  test('and', () {
    expect(true.and(false), isFalse);
    expect(false.and(true), isFalse);
    expect(true.and(true), isTrue);
  });
  test('or', () {
    expect(true.or(false), isTrue);
    expect(false.or(true), isTrue);
    expect(true.or(true), isTrue);
    expect(false.or(false), isFalse);
  });
  test('xor', () {
    expect(true.xor(false), isTrue);
    expect(false.xor(true), isTrue);
    expect(true.xor(true), isFalse);
    expect(false.xor(false), isFalse);
  });
}
