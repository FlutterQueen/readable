import 'package:flutter/material.dart';

extension ReadableTodX on TimeOfDay {
  bool get isAm => hour < 12;

  bool get isPm => hour >= 12;

  String get in12Format {
    final h = hour > 12 ? hour - 12 : hour;
    return '$h:$minute';
  }

  bool isAfter(TimeOfDay other) {
    return hour > other.hour || (hour == other.hour && minute > other.minute);
  }

  bool isBefore(TimeOfDay other) {
    return hour < other.hour || (hour == other.hour && minute < other.minute);
  }

  bool isBetween(TimeOfDay start, TimeOfDay end) {
    return isAfter(start) && isBefore(end);
  }

  TimeOfDay copyWith({
    int? hour,
    int? minute,
  }) {
    return TimeOfDay(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }
}
