import 'package:test/test.dart';
import 'package:timer_bloc/repositories/ticker.dart';

void main() {
  group('Ticker', () {
    late Ticker ticker;

    setUp(() {
      ticker = Ticker();
    });

    test('should emit 3 ticks', () async {
      expect(
        ticker.tick(ticks: 3),
        emitsInOrder([2, 1, 0]),
      );
    });

    test('should emit ticks with correct duration', () async {
      final stopwatch = Stopwatch()..start();
      await ticker.tick(ticks: 3).drain();
      stopwatch.stop();

      // Memungkinkan sedikit variasi waktu
      expect(stopwatch.elapsed, greaterThanOrEqualTo(Duration(seconds: 2)));
      expect(stopwatch.elapsed, lessThan(Duration(seconds: 4)));
    });

    test('should emit correct number of ticks', () async {
      final stream = ticker.tick(ticks: 5);
      expect(await stream.length, equals(5));
    });

    test('should emit ticks in descending order', () async {
      final list = await ticker.tick(ticks: 5).toList();
      expect(list, equals([4, 3, 2, 1, 0]));
    });

    test('should complete normally', () {
      expect(ticker.tick(ticks: 2), emitsThrough(emitsDone));
    });

    test('should throw when ticks is negative', () {
      expect(() => ticker.tick(ticks: -1), throwsArgumentError);
    });
  });
}
