import 'package:flutter/material.dart';

extension RDateTime on DateTime {
  /// * convert DateTime to TimeOfDay .
  TimeOfDay toTimeOfDay() => TimeOfDay.fromDateTime(this);
}
