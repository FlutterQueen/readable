import 'package:flutter/material.dart';

extension ReadableDateTimeFX on DateTime {
  /// * `true` if the date in the morning, `false` otherwise.
  bool get isAm => hour < 12;

  /// * `true` if the date in the evening, `false` otherwise.
  bool get isPm => hour >= 12;

  /// * convert DateTime to TimeOfDay .
  TimeOfDay toTimeOfDay() => TimeOfDay.fromDateTime(this);
}
