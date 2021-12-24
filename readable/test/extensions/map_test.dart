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
  test('return null values ', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': null,
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '123456',
    };

    expect(mapWithNull.whereNull(), {
      'password': null,
    });
    expect(
      {}.whereNull(),
      {},
    );
    expect(
      map.whereNull(),
      {},
    );
  });
  test('return the map without some keys', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': null,
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '123456',
    };

    expect(mapWithNull.expect(['password']), {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
    });
    expect(
      {}.expect(['']),
      {},
    );
    expect(
      map.expect(['dart']),
      map,
    );
  });
  test('return the map without some keys null', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': null,
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '123456',
    };

    expect(mapWithNull.exceptNull(), {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
    });
    expect(
      {}.exceptNull(),
      {},
    );
    expect(
      map.exceptNull(),
      map,
    );
  });
  test('exceptNullAndEmpty', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': null,
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '',
    };

    expect(mapWithNull.exceptNullAndEmpty(), {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
    });
    expect(
      {}.exceptNullAndEmpty(),
      {},
    );
    expect(
      map.exceptNullAndEmpty(),
      {
        'email': 'hazem@gmail.com',
      },
    );
  });
  test('exceptEmpty', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': '',
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '',
    };

    expect(mapWithNull.exceptEmpty(), {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
    });
    expect(
      {}.exceptEmpty(),
      {},
    );
    expect(
      map.exceptEmpty(),
      {
        'email': 'hazem@gmail.com',
      },
    );
  });

  test('swaps the collections keys with their corresponding values', () {
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
