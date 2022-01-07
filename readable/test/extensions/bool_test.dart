import 'package:readable/src/extensions/bool.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'toInt function',
    () {
      test('convert bool to int if true return 1 else 0', () {
        expect(true.toInt(), 1);
      });
      test('convert bool to int if true return 1 else 0', () {
        expect(false.toInt(), 0);
      });

      test('toggle', () {
        expect(true.toggle(), isFalse);
        expect(false.toggle(), isTrue);
      });
    },
  );
}
