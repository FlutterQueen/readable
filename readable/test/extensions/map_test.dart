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
}
