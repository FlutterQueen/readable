import 'package:flutter/material.dart';

extension RTimeOfDay on TimeOfDay {
  /// * `true` if the date in the morning, `false` otherwise.
  bool get isAm => hour < 12;

  /// * `true` if the date in the evening, `false` otherwise.
  bool get isPm => hour >= 12;

  /// * `true` if after other, `false` otherwise.
  bool isAfter(
    TimeOfDay other,
  ) =>
      hour > other.hour || (hour == other.hour && minute > other.minute);

  /// * `true` if before other, `false` otherwise.
  bool isBefore(
    TimeOfDay other,
  ) =>
      hour < other.hour || (hour == other.hour && minute < other.minute);

  /// * `true` if between start and end
  bool isBetween(
    TimeOfDay start,
    TimeOfDay end,
  ) =>
      isAfter(start) && isBefore(end);

  /// * creates a new time of day with the same hour and minute,overridden by the parameters
  TimeOfDay copyWith({
    int? hour,
    int? minute,
  }) =>
      TimeOfDay(
        hour: hour ?? this.hour,
        minute: minute ?? this.minute,
      );
}
