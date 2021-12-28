import 'package:flutter/material.dart';
import 'package:flutter_readable/flutter_readable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'TimeOfDay',
    () {
      const after = TimeOfDay(
        hour: 9,
        minute: 15,
      );
      expect(const TimeOfDay(hour: 13, minute: 10).isAm, isFalse);
      expect(const TimeOfDay(hour: 8, minute: 15).isAm, isTrue);
      expect(const TimeOfDay(hour: 13, minute: 10).isPm, isTrue);
      expect(const TimeOfDay(hour: 8, minute: 15).isPm, isFalse);
      expect(
        const TimeOfDay(hour: 8, minute: 15).isAfter(after),
        isFalse,
      );
      expect(
        const TimeOfDay(hour: 10, minute: 15).isAfter(after),
        isTrue,
      );
      expect(
        const TimeOfDay(hour: 8, minute: 15).isBefore(after),
        isTrue,
      );
      expect(
        const TimeOfDay(hour: 8, minute: 15)
            .isBetween(after.copyWith(hour: 7), after),
        isTrue,
      );
      expect(
        const TimeOfDay(hour: 8, minute: 15).copyWith(
          hour: 9,
        ),
        after,
      );
      expect(
        const TimeOfDay(hour: 8, minute: 15).copyWith(
          minute: 9,
        ),
        const TimeOfDay(hour: 8, minute: 9),
      );
    },
  );
}
