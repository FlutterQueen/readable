/// instead of `await Future.delayed(const Duration(seconds:1));`
/// do         `await forSeconds(x)`
Future<T> forSeconds<T>(int seconds) => Future.delayed(
      Duration(seconds: seconds),
    );

/// instead of `await Future.delayed(const Duration(seconds:1));`
Future<void> oneSecond() => forSeconds(1);

/// instead of `await Future.delayed(const Duration(seconds:2));`
Future<void> twoSeconds() => forSeconds(2);

/// instead of `await Future.delayed(const Duration(seconds:3));`
Future<void> threeSeconds() => forSeconds(3);

/// instead of `await Future.delayed(const Duration(seconds:4));`
Future<void> fourSeconds() => forSeconds(4);

/// instead of `await Future.delayed(const Duration(seconds:5));`
Future<void> fiveSeconds() => forSeconds(5);

/// instead of `await Future.delayed(const Duration(seconds:6));`
Future<void> sixSeconds() => forSeconds(6);

/// instead of `await Future.delayed(const Duration(seconds:7));`
Future<void> sevenSeconds() => forSeconds(7);

/// instead of `await Future.delayed(const Duration(seconds:8));`
Future<void> eightSeconds() => forSeconds(8);

/// instead of `await Future.delayed(const Duration(seconds:9));`
Future<void> nineSeconds() => forSeconds(9);

/// instead of `await Future.delayed(const Duration(seconds:10));`
Future<void> tenSeconds() => forSeconds(10);
