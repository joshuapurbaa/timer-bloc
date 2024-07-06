part of 'timer_bloc.dart';

sealed class TimerEvent {
  const TimerEvent();
}

final class TimerStarted extends TimerEvent {
  TimerStarted({required this.duration});

  final int duration;

  @override
  String toString() => 'TimerStarted { duration: $duration }';
}

final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

final class TimerReset extends TimerEvent {
  const TimerReset();
}

final class TimerTicked extends TimerEvent {
  const TimerTicked({required this.duration});

  final int duration;

  @override
  String toString() => 'TimerTicked { duration: $duration }';
}
