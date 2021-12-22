import 'package:readable/src/extensions/list/list.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('it return a random element from the list', (){
    const items = [1, 2, 3, 'H', 5];
    final randomElement = items.random;

    expect(items.contains(randomElement), isTrue);
  });
}
