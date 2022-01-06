// TODO :: uncomment only tested ones
///
extension ReadableDateTime on DateTime {
  /// * `true` if the date in the morning, `false` otherwise.
  bool get isAm => hour < 12;

  /// * `true` if the date in the evening, `false` otherwise.
  bool get isPm => hour >= 12;

  /// * creates new instance of [DateTime] with the same date
  /// * but overrides the values of the given parameters
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
      );

  /// * return [true] if the date is today, [false] otherwise.
  bool get isToday {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  /// * return [true] if the date is tomorrow, [false] otherwise.
  bool get isTomorrow {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));
    return tomorrow.year == year &&
        tomorrow.month == month &&
        tomorrow.day == day;
  }

  /// * return [true] if the date is yesterday, [false] otherwise.
  bool get isYesterday {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  /// * return [true] if the date is In This Month, [false] otherwise.
  bool get isInThisMonth {
    final now = DateTime.now();
    return now.year == year && now.month == month;
  }

  /// * return [true] if the date is In This Year, [false] otherwise.
  bool get isInThisYear => year == DateTime.now().year;

  /// * return [true] if the date is In The Future, [false] otherwise.
  bool get isInTheFuture => isAfter(DateTime.now());

  /// * return [true] if the date is In The past, [false] otherwise.
  bool get isInThePast => isBefore(DateTime.now());

  /// * return [true] if the date is In January, [false] otherwise.
  bool get isInJanuary => month == 1;

  /// * return [true] if the date is In February, [false] otherwise.
  bool get isInFebruary => month == 2;

  /// * return [true] if the date is In March, [false] otherwise.
  bool get isInMarch => month == 3;

  /// * return [true] if the date is In April, [false] otherwise.
  bool get isInApril => month == 4;

  /// * return [true] if the date is In May, [false] otherwise.
  bool get isInMay => month == 5;

  /// * return [true] if the date is In June, [false] otherwise.
  bool get isInJune => month == 6;

  /// * return [true] if the date is In July, [false] otherwise.
  bool get isInJuly => month == 7;

  /// * return [true] if the date is In August, [false] otherwise.
  bool get isInAugust => month == 8;

  /// * return [true] if the date is In September, [false] otherwise.
  bool get isInSeptember => month == 9;

  /// * return [true] if the date is In October, [false] otherwise.
  bool get isInOctober => month == 10;

  /// * return [true] if the date is In November, [false] otherwise.
  bool get isInNovember => month == 11;

  /// * return [true] if the date is In December, [false] otherwise.
  bool get isInDecember => month == 12;

  // bool get isLastSaturdayOfTheMonth => day == DateTime.saturday;
  // bool get isLastSaturdayOfTheYear => day == DateTime.saturday;
  // bool get isLastSundayOfTheMonth => day == DateTime.sunday;
  // bool get isLastSundayOfTheYear => day == DateTime.sunday;
  // bool get isLastMondayOfTheMonth => day == DateTime.monday;
  // bool get isLastMondayOfTheYear => day == DateTime.monday;
  // bool get isLastTuesdayOfTheMonth => day == DateTime.tuesday;
  // bool get isLastTuesdayOfTheYear => day == DateTime.tuesday;
  // bool get isLastWednesdayOfTheMonth => day == DateTime.wednesday;
  // bool get isLastWednesdayOfTheYear => day == DateTime.wednesday;
  // bool get isLastThursdayOfTheMonth => day == DateTime.thursday;
  // bool get isLastThursdayOfTheYear => day == DateTime.thursday;
  // bool get isLastFridayOfTheMonth => day == DateTime.friday;
  // bool get isLastFridayOfTheYear => day == DateTime.friday;
}
