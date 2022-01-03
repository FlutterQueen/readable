import 'package:flutter/material.dart';

extension ReadableDateTimeFX on DateTime {
  /// * convert DateTime to TimeOfDay .
  TimeOfDay toTimeOfDay() => TimeOfDay.fromDateTime(this);
}
