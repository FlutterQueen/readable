import 'package:flutter/material.dart';
import 'package:flutter_readable/flutter_readable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'toTimeOfDay()',
    () {
      TimeOfDay.now();
      final now = DateTime.now();
      final nowTimeOfDay = now.toTimeOfDay();

      expect(now.minute, nowTimeOfDay.minute);
      expect(now.hour, nowTimeOfDay.hour);
    },
  );
}
