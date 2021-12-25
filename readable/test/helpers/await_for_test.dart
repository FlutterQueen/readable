import 'package:readable/readable.dart';
import 'package:test/test.dart';

void main() {
  const times = {
    1: oneSecond,
    2: twoSeconds,
    3: threeSeconds,
    4: fourSeconds,
    5: fiveSeconds,
    6: sixSeconds,
    7: sevenSeconds,
    8: eightSeconds,
    9: nineSeconds,
    10: tenSeconds,
  };

  test(
    'await for test',
    () async {
      for (final sec in times.keys) {
        final watch = Stopwatch();
        watch.start();
        await times[sec]!();

        watch.stop();
        expect(watch.elapsed.inSeconds, sec);
      }
    },
    timeout: Timeout.none,
  );
}
