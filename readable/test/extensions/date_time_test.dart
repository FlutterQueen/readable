import 'package:readable/readable.dart';
import 'package:test/test.dart';

void main() {
  test(
    'isAm and isPm',
    () {
      expect(DateTime(2019, 1, 1, 1, 1, 1).isAm, isTrue);
      expect(DateTime(2019, 1, 1, 1, 1, 1).isPm, isFalse);
      expect(DateTime(2019, 1, 1, 13, 1, 1).isAm, isFalse);
      expect(DateTime(2019, 1, 1, 13, 1, 1).isPm, isTrue);
    },
  );

  group('copyWith', () {
    test('it can copyWith all', () {
      final dateTime = DateTime(2019, 1, 1, 12, 34, 56);
      final dateTimeCopy = dateTime.copyWith(
        year: 0,
        month: 1,
        day: 2,
        hour: 3,
        minute: 4,
        second: 5,
        millisecond: 6,
      );
      expect(
        identical(dateTime, dateTimeCopy),
        isFalse,
        reason: 'it creates a new instance',
      );
      expect(
        dateTimeCopy,
        equals(DateTime(0, 1, 2, 3, 4, 5, 6)),
      );
    });
    test('it can copyWith year', () {
      final dateTime = DateTime(2019, 1, 1, 12, 34, 56);
      final dateTimeCopy = dateTime.copyWith(year: 0);
      expect(
        dateTimeCopy,
        equals(DateTime(0, 1, 1, 12, 34, 56)),
      );
    });
    test('it can copyWith month', () {
      final dateTime = DateTime(2019, 1, 1, 12, 34, 56);
      final dateTimeCopy = dateTime.copyWith(month: 2);
      expect(
        dateTimeCopy,
        equals(DateTime(2019, 2, 1, 12, 34, 56)),
      );
    });
  });

  test('isToday', () {
    final now = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    expect(now.isToday, isTrue);
    expect(tomorrow.isToday, isFalse);
    expect(yesterday.isToday, isFalse);
  });
  test('isToday', () {
    final now = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    expect(now.isToday, isTrue);
    expect(tomorrow.isToday, isFalse);
    expect(yesterday.isToday, isFalse);
  });
  test('isTomorrow', () {
    final now = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    expect(now.isTomorrow, isFalse);
    expect(tomorrow.isTomorrow, isTrue);
    expect(yesterday.isTomorrow, isFalse);
  });
  test('isYesterday', () {
    final now = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    expect(now.isYesterday, isFalse);
    expect(tomorrow.isYesterday, isFalse);
    expect(yesterday.isYesterday, isTrue);
  });
  test('isInThisMonth', () {
    final now = DateTime.now();
    final nextMonth = DateTime.now().add(const Duration(days: 30));
    final lastMonth = DateTime.now().subtract(const Duration(days: 30));
    expect(now.isInThisMonth, isTrue);
    expect(nextMonth.isInThisMonth, isFalse);
    expect(lastMonth.isInThisMonth, isFalse);
  });
  test('isInThisYear', () {
    final now = DateTime.now();
    final next = DateTime.now().add(const Duration(days: 365));
    final last = DateTime.now().subtract(const Duration(days: 365));
    expect(now.isInThisYear, isTrue);
    expect(next.isInThisYear, isFalse);
    expect(last.isInThisYear, isFalse);
  });
  test('isInTheFuture', () {
    final future = DateTime.now().add(const Duration(minutes: 1));
    final past = DateTime.now().subtract(const Duration(minutes: 1));
    expect(future.isInTheFuture, isTrue);
    expect(past.isInTheFuture, isFalse);
  });
  test('isInThePast', () {
    final future = DateTime.now().add(const Duration(milliseconds: 1));
    final past = DateTime.now().subtract(const Duration(milliseconds: 1));
    expect(future.isInThePast, isFalse);
    expect(past.isInThePast, isTrue);
  });
  group('isIn Family', () {
    test('isInJanuary', () {
      final date1 = DateTime(0);
      final date2 = DateTime(0, 2);
      expect(date1.isInJanuary, isTrue);
      expect(date2.isInJanuary, isFalse);
    });
    test('isInFebruary', () {
      final date1 = DateTime(0, 2);
      final date2 = DateTime(0, 3);
      expect(date1.isInFebruary, isTrue);
      expect(date2.isInFebruary, isFalse);
    });
    test('isInMarch', () {
      final date1 = DateTime(0, 3);
      final date2 = DateTime(0, 4);
      expect(date1.isInMarch, isTrue);
      expect(date2.isInMarch, isFalse);
    });
    test('isInApril', () {
      final date1 = DateTime(0, 4);
      final date2 = DateTime(0);
      expect(date1.isInApril, isTrue);
      expect(date2.isInApril, isFalse);
    });
    test('isInMay', () {
      final date1 = DateTime(0, 5);
      final date2 = DateTime(0);
      expect(date1.isInMay, isTrue);
      expect(date2.isInMay, isFalse);
    });
    test('isInJune', () {
      final date1 = DateTime(0, 6);
      final date2 = DateTime(0);
      expect(date1.isInJune, isTrue);
      expect(date2.isInJune, isFalse);
    });
    test('isInJuly', () {
      final date1 = DateTime(0, 7);
      final date2 = DateTime(0);
      expect(date1.isInJuly, isTrue);
      expect(date2.isInJuly, isFalse);
    });
    test('isInAugust', () {
      final date1 = DateTime(0, 8);
      final date2 = DateTime(0);
      expect(date1.isInAugust, isTrue);
      expect(date2.isInAugust, isFalse);
    });
    test('isInSeptember', () {
      final date1 = DateTime(0, 9);
      final date2 = DateTime(0);
      expect(date1.isInSeptember, isTrue);
      expect(date2.isInSeptember, isFalse);
    });
    test('isInOctober', () {
      final date1 = DateTime(0, 10);
      final date2 = DateTime(0);
      expect(date1.isInOctober, isTrue);
      expect(date2.isInOctober, isFalse);
    });
    test('isInNovember', () {
      final date1 = DateTime(0, 11);
      final date2 = DateTime(0);
      expect(date1.isInNovember, isTrue);
      expect(date2.isInNovember, isFalse);
    });
    test('isInNovember', () {
      final date1 = DateTime(0, 11);
      final date2 = DateTime(0);
      expect(date1.isInNovember, isTrue);
      expect(date2.isInNovember, isFalse);
    });
    test('isInDecember', () {
      final date1 = DateTime(0, 12);
      final date2 = DateTime(0);
      expect(date1.isInDecember, isTrue);
      expect(date2.isInDecember, isFalse);
    });
  });

  test('withoutTime()', () {
    final now = DateTime.now();
    expect(
      now.withoutTime(),
      DateTime(now.year, now.month, now.day),
    );
  });
  group('is day of week Family', () {
    test('isMonday', () {
      final day = DateTime(2022, 1, 3);
      expect(day.isMonday, isTrue);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isFalse);
    });
    test('isThursday', () {
      final day = DateTime(2022, 1, 4);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isTrue);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isFalse);
    });
    test('isWednesday', () {
      final day = DateTime(2022, 1, 5);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isTrue);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isFalse);
    });
    test('isThursday', () {
      final day = DateTime(2022, 1, 6);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isTrue);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isFalse);
    });
    test('isFriday', () {
      final day = DateTime(2022, 1, 7);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isTrue);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isFalse);
    });
    test('isSaturday', () {
      final day = DateTime(2022, 1, 8);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isTrue);
      expect(day.isSunday, isFalse);
    });
    test('isSunday', () {
      final day = DateTime(2022, 1, 9);
      expect(day.isMonday, isFalse);
      expect(day.isTuesday, isFalse);
      expect(day.isWednesday, isFalse);
      expect(day.isThursday, isFalse);
      expect(day.isFriday, isFalse);
      expect(day.isSaturday, isFalse);
      expect(day.isSunday, isTrue);
    });
  });
  group('isLastOf family', () {
    test('isLastSaturdayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 29);
      final m2 = DateTime(2022, 2, 26);
      final m3 = DateTime(2022, 3, 26);
      final m4 = DateTime(2022, 4, 30);
      expect(m1.isLastSaturdayThisMonth, isTrue);
      expect(m2.isLastSaturdayThisMonth, isTrue);
      expect(m3.isLastSaturdayThisMonth, isTrue);
      expect(m4.isLastSaturdayThisMonth, isTrue);
      final dateNotSaturday = DateTime(2022, 1, 28);
      expect(
        dateNotSaturday.isLastSaturdayThisMonth,
        isFalse,
        reason: 'not saturday',
      );
      final saturdayButNotLast = DateTime(2022, 1, 22);
      expect(
        saturdayButNotLast.isLastSaturdayThisMonth,
        isFalse,
        reason: 'saturday but not the last in the month',
      );
    });
    test('isLastSundayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 30);
      final m2 = DateTime(2022, 2, 27);
      final m3 = DateTime(2022, 3, 27);
      final m4 = DateTime(2022, 4, 24);
      expect(m1.isLastSundayThisMonth, isTrue);
      expect(m2.isLastSundayThisMonth, isTrue);
      expect(m3.isLastSundayThisMonth, isTrue);
      expect(m4.isLastSundayThisMonth, isTrue);
      final dateNotSunday = DateTime(2022, 1, 29);
      expect(
        dateNotSunday.isLastSundayThisMonth,
        isFalse,
        reason: 'not sunday',
      );
      final saturdayButNotLast = DateTime(2022, 1, 23);
      expect(
        saturdayButNotLast.isLastSundayThisMonth,
        isFalse,
        reason: 'sunday but not the last in the month',
      );
    });
    test('isLastMondayOfTheMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 31);
      final m2 = DateTime(2022, 2, 28);
      final m3 = DateTime(2022, 3, 28);
      final m4 = DateTime(2022, 4, 25);
      expect(m1.isLastMondayThisMonth, isTrue);
      expect(m2.isLastMondayThisMonth, isTrue);
      expect(m3.isLastMondayThisMonth, isTrue);
      expect(m4.isLastMondayThisMonth, isTrue);
      final dateNotMonday = DateTime(2022, 1, 30);
      expect(
        dateNotMonday.isLastMondayThisMonth,
        isFalse,
        reason: 'not monday',
      );
      final mondayButNotLast = DateTime(2022, 1, 24);
      expect(
        mondayButNotLast.isLastMondayThisMonth,
        isFalse,
        reason: 'monday but not the last in the month',
      );
    });
    test('isLastTuesdayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 25);
      final m2 = DateTime(2022, 2, 22);
      final m3 = DateTime(2022, 3, 29);
      final m4 = DateTime(2022, 4, 26);
      expect(m1.isLastTuesdayThisMonth, isTrue);
      expect(m2.isLastTuesdayThisMonth, isTrue);
      expect(m3.isLastTuesdayThisMonth, isTrue);
      expect(m4.isLastTuesdayThisMonth, isTrue);
      final dateNotTuesday = DateTime(2022, 1, 24);
      expect(
        dateNotTuesday.isLastTuesdayThisMonth,
        isFalse,
        reason: 'not Tuesday',
      );
      final tuesdayButNotLast = DateTime(2022, 1, 18);
      expect(
        tuesdayButNotLast.isLastTuesdayThisMonth,
        isFalse,
        reason: 'Tuesday but not the last in the month',
      );
    });
    test('isLastWednesdayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 26);
      final m2 = DateTime(2022, 2, 23);
      final m3 = DateTime(2022, 3, 30);
      final m4 = DateTime(2022, 4, 27);
      expect(m1.isLastWednesdayThisMonth, isTrue);
      expect(m2.isLastWednesdayThisMonth, isTrue);
      expect(m3.isLastWednesdayThisMonth, isTrue);
      expect(m4.isLastWednesdayThisMonth, isTrue);
      final dateNotTuesday = DateTime(2022, 1, 24);
      expect(
        dateNotTuesday.isLastWednesdayThisMonth,
        isFalse,
        reason: 'not Wednesday',
      );
      final wednesdayButNotLast = DateTime(2022, 1, 19);
      expect(
        wednesdayButNotLast.isLastWednesdayThisMonth,
        isFalse,
        reason: 'Wednesday but not the last in the month',
      );
    });
    test('isLastThursdayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 27);
      final m2 = DateTime(2022, 2, 24);
      final m3 = DateTime(2022, 3, 31);
      final m4 = DateTime(2022, 4, 28);
      expect(m1.isLastThursdayThisMonth, isTrue);
      expect(m2.isLastThursdayThisMonth, isTrue);
      expect(m3.isLastThursdayThisMonth, isTrue);
      expect(m4.isLastThursdayThisMonth, isTrue);
      final dateNotThursday = DateTime(2022, 1, 24);
      expect(
        dateNotThursday.isLastThursdayThisMonth,
        isFalse,
        reason: 'not Thursday',
      );
      final thursdayButNotLast = DateTime(2022, 1, 20);
      expect(
        thursdayButNotLast.isLastThursdayThisMonth,
        isFalse,
        reason: 'Thursday but not the last in the month',
      );
    });
    test('isLastFridayThisMonth', () {
      /// last of month
      final m1 = DateTime(2022, 1, 28);
      final m2 = DateTime(2022, 2, 25);
      final m3 = DateTime(2022, 3, 25);
      final m4 = DateTime(2022, 4, 29);
      expect(m1.isLastFridayThisMonth, isTrue);
      expect(m2.isLastFridayThisMonth, isTrue);
      expect(m3.isLastFridayThisMonth, isTrue);
      expect(m4.isLastFridayThisMonth, isTrue);
      final dateNotFriday = DateTime(2022, 1, 15);
      expect(
        dateNotFriday.isLastFridayThisMonth,
        isFalse,
        reason: 'not Friday',
      );
      final fridayButNotLast = DateTime(2022, 1, 20);
      expect(
        fridayButNotLast.isLastFridayThisMonth,
        isFalse,
        reason: 'Friday but not the last in the month',
      );
    });
  });
}
