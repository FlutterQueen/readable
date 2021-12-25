import 'package:readable/src/extensions/map/map.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final holder = {
    'email': 'hazem@gmail.com',
    'phone': '0123456789',
    'password': '123456',
  };

  final hold = {
    'email': 'hazem@gmail.com',
    'password': '123456',
  };
  group('whereNull function', () {
    final mapWithNull = {
      'email': 'hazem@gmail.com',
      'phone': '0123456789',
      'password': null,
    };

    final map = {
      'email': 'hazem@gmail.com',
      'password': '123456',
    };
    test('return key of null values from the map ', () {
      expect(mapWithNull.whereNull(), {
        'password': null,
      });
    });
    test('return empty map if not found any value equal null', () {
      expect(
        map.whereNull(),
        {},
      );
    });
  });
  group('only function', () {
    test('return only key i need it', () {
      expect(holder.only(['email', 'password']), hold);
    });
  });
  group('expect function', () {
    test('return the map without some keys', () {
      expect(holder.expect(['email', 'password']), {'phone': '0123456789'});
    });
  });
  group('flip function', () {
    test('swaps the collections keys with their corresponding values', () {
      final map = {
        'email': 'hazem@gmail.com',
        'phone': '0123456789',
      };

      final flippedMap = {
        'hazem@gmail.com': 'email',
        '0123456789': 'phone',
      };
      expect(map.flip(), flippedMap);
    });
  });
  group('exceptNull function', () {
    test('return the map without some keys null', () {
      final mapWithNull = {
        'email': 'hazem@gmail.com',
        'phone': '0123456789',
        'password': null,
      };

      expect(mapWithNull.exceptNull(), {
        'email': 'hazem@gmail.com',
        'phone': '0123456789',
      });
    });
    test('return empty map ', () {
      expect(
        {}.exceptNull(),
        {},
      );
    });
  });
  group('exceptNullAndEmpty function', () {
    test('return the map without  key of null values and empty', () {
      final mapWithNull = {
        'email': 'hazem@gmail.com',
        'phone': '',
        'password': null,
      };

      expect(mapWithNull.exceptNullAndEmpty(), {
        'email': 'hazem@gmail.com',
      });
    });
    test('return empty map ', () {
      expect(
        {}.exceptNullAndEmpty(),
        {},
      );
    });
  });
  group('exceptEmpty function', () {
    test('return the map without  key of empty values', () {
      final mapWithNull = {
        'email': 'hazem@gmail.com',
        'phone': '',
        'password': null,
      };

      expect(mapWithNull.exceptEmpty(), {
        'email': 'hazem@gmail.com',
        'password': null,
      });
    });
    test('return empty map ', () {
      expect(
        {}.exceptNullAndEmpty(),
        {},
      );
    });
  });
}
