import 'package:readable/readable.dart';
import 'package:test/test.dart';

void main() {
  group('findInMap', () {
    test('if the path is not nested will return the value directly', () {
      const path = 'foo';
      final map = {'foo': 'bar'};
      final result = findInMap(path, map);
      expect(result, 'bar');
    });
    test('if the path is does not exist it will return null', () {
      const path = 'foo.zee';
      final map = {'foo': 'bar'};
      final result = findInMap(path, map);
      expect(result, null);
    });
    test('if the contains . and mot nested it will return the value directly',
        () {
      const path = 'foo.';
      final map = {'foo': 'bar'};
      final result = findInMap(path, map);
      expect(result, 'bar');
    });
    test('if nested it will return the nested value', () {
      const path = 'foo.bar.zee';
      final map = {
        'foo': {
          'bar': {
            'zee': 'xyz',
          },
        },
      };
      final result = findInMap(path, map);
      expect(result, 'xyz');
    });
  });

  group('flatMapKeys', () {
    test('it return empty list if the map is empty', () {
      final result = flatMapKeys({});
      expect(result, []);
    });
    test('it can flat simple map', () {
      final result = flatMapKeys({'foo': 'bar'});
      expect(result, ['foo']);
    });
    test('it the  flat simple map', () {
      final result = flatMapKeys({'foo': 'bar'});
      expect(result, ['foo']);
    });
    test('it the  flat nested map', () {
      final result = flatMapKeys({
        'foo': 'bar',
        'zee': {
          'xyz': 'abc',
          'baz': '123',
          "lvl3": {
            "lvl4": {
              "lvl5": "end",
            },
          },
        }
      });
      expect(result, [
        'foo',
        'zee',
        'zee.xyz',
        'zee.baz',
        'zee.lvl3',
        'zee.lvl3.lvl4',
        'zee.lvl3.lvl4.lvl5',
      ]);
    });
  });

  group('mergeTwoMaps', () {
    test('it will merge two simple maps', () {
      final result = mergeTwoMaps(
        {'foo': 'bar'},
        {'zee': 'xyz'},
      );
      expect(result, {
        'foo': 'bar',
        'zee': 'xyz',
      });
    });
    test('it will merge two nested maps', () {
      final result = mergeTwoMaps(
        {
          'foo': 'bar',
          'zee': {
            'abc': 'abc',
            'xyz': 'xyz',
          },
        },
        {
          'zee': {
            'efg': 'efg',
            '123': '123',
          },
        },
      );
      expect(result, {
        'foo': 'bar',
        'zee': {
          'xyz': 'xyz',
          'abc': 'abc',
          'efg': 'efg',
          '123': '123',
        },
      });
    });
    test(
        'if the two maps has the same key and will use the value from the second map',
        () {
      const mapOne = {
        'key': 'value',
        'key2': 'value2',
        'key3': {
          'key4': 'value4',
          'key5': 'value5',
        },
      };
      const mapTwo = {
        'key': '2value',
        'key2': '2value2',
        'key3': {
          'this_key_is_not_in_map_two': 'this_value_is_not_in_map_two',
          'key4': '2value4',
          'key5': '2value5',
        },
      };
      expect(mergeTwoMaps(mapOne, mapTwo), {
        'key': '2value',
        'key2': '2value2',
        'key3': {
          'this_key_is_not_in_map_two': 'this_value_is_not_in_map_two',
          'key4': '2value4',
          'key5': '2value5',
        },
      });
    });
  });
}
