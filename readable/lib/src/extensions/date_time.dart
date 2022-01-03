// TODO :: uncomment only tested ones
///
extension ReadableDateTime on DateTime {
  /// * `true` if the date in the morning, `false` otherwise.
  bool get isAm => hour < 12;

  /// * `true` if the date in the evening, `false` otherwise.
  bool get isPm => hour >= 12;

  // DateTime copyWith({
  //   int? year,
  //   int? month,
  //   int? day,
  //   int? hour,
  //   int? minute,
  //   int? second,
  //   int? millisecond,
  // }) =>
  //     DateTime(
  //       year ?? this.year,
  //       month ?? this.month,
  //       day ?? this.day,
  //       hour ?? this.hour,
  //       minute ?? this.minute,
  //       second ?? this.second,
  //       millisecond ?? this.millisecond,
  //     );

  // bool get isTody {
  //   final now = DateTime.now();
  //   return copyWith(
  //     year: year,
  //     month: month,
  //     day: day,
  //   ).isAtSameMomentAs(
  //     now.copyWith(
  //       year: now.year,
  //       month: now.month,
  //       day: now.day,
  //     ),
  //   );
  // }

  // bool get isTomorrow {
  //   final now = DateTime.now();
  //   return copyWith(
  //     year: year,
  //     month: month,
  //     day: day + 1,
  //   ).isAtSameMomentAs(
  //     now.copyWith(
  //       year: now.year,
  //       month: now.month,
  //       day: now.day + 1,
  //     ),
  //   );
  // }

  // bool get isYesterday {
  //   final now = DateTime.now();
  //   return copyWith(
  //     year: year,
  //     month: month,
  //     day: day - 1,
  //   ).isAtSameMomentAs(
  //     now.copyWith(
  //       year: now.year,
  //       month: now.month,
  //       day: now.day - 1,
  //     ),
  //   );
  // }

  // bool get isInThisMonth {
  //   final now = DateTime.now();
  //   return now.year == year && now.month == month;
  // }

  // bool get isInThisYear => year == DateTime.now().year;

  // // bool get isInThisWeek

  // bool get isInTheFuture => isAfter(DateTime.now());
  // bool get isInThePast => isBefore(DateTime.now());
  // bool get isInJanuary => month == 1;
  // bool get isInFebruary => month == 2;
  // bool get isInMarch => month == 3;
  // bool get isInApril => month == 4;
  // bool get isInMay => month == 5;
  // bool get isInJune => month == 6;
  // bool get isInJuly => month == 7;
  // bool get isInAugust => month == 8;
  // bool get isInSeptember => month == 9;
  // bool get isInOctober => month == 10;
  // bool get isInNovember => month == 11;
  // bool get isInDecember => month == 12;

  // TODO :: is Last
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
