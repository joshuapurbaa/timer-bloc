import 'package:flutter_test/flutter_test.dart';
import 'package:timer_bloc/bloc/timer_bloc.dart';

void main() {
  group('TimerState', () {
    test('TimerInitial supports value equality', () {
      expect(
        TimerInitial(60),
        equals(TimerInitial(60)),
      );
    });

    test('TimerInitial props are correct', () {
      expect(TimerInitial(60).props, [60]);
    });

    test('TimerInitial toString is correct', () {
      expect(
        TimerInitial(60).toString(),
        'TimerInitial { duration: 60 }',
      );
    });

    test('TimerRunPause supports value equality', () {
      expect(
        TimerRunPause(60),
        equals(TimerRunPause(60)),
      );
    });

    test('TimerRunPause props are correct', () {
      expect(TimerRunPause(60).props, [60]);
    });

    test('TimerRunPause toString is correct', () {
      expect(
        TimerRunPause(60).toString(),
        'TimerRunPause { duration: 60 }',
      );
    });

    test('TimerRunInProgress supports value equality', () {
      expect(
        TimerRunInProgress(60),
        equals(TimerRunInProgress(60)),
      );
    });

    test('TimerRunInProgress props are correct', () {
      expect(TimerRunInProgress(60).props, [60]);
    });

    test('TimerRunInProgress toString is correct', () {
      expect(
        TimerRunInProgress(60).toString(),
        'TimerRunInProgress { duration: 60 }',
      );
    });

    test('TimerRunComplete supports value equality', () {
      expect(
        TimerRunComplete(),
        equals(TimerRunComplete()),
      );
    });

    test('TimerRunComplete props are correct', () {
      expect(TimerRunComplete().props, [0]);
    });

    test('TimerRunComplete toString is correct', () {
      expect(
        TimerRunComplete().toString(),
        'TimerRunComplete { duration: 0 }',
      );
    });
  });
}
