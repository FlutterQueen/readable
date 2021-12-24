import 'package:readable/src/extensions/map/map.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('return this keys', () {
    final holder = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': '123456',
    };

    final hold = {
      'email': 'hazem@gmail.com',
      'password': '123456',
    };

    expect(holder.only(['email', 'password']), hold);
  });
  test('return this keys', () {
    final map = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
    };

    final flippedMap = {
      'hazem@gmail.com': 'email',
      '0123456789': 'phone',
    };
    final map2 = {
      'email': 'devfalah@gmail.com',
      'phone': '0123456789',
      'age': '21',
    };

    final flippedMap2 = {
      'devfalah@gmail.com': 'email',
      '0123456789': 'phone',
      '21': 'age',
    };
    expect(
      {}.flip(),
      {},
      reason: "map is Empty",
    );

    expect(map.flip(), flippedMap);
    expect(map2.flip(), flippedMap2);
  });
}
