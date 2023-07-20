part of 'timer_bloc.dart';

@immutable
sealed class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object?> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() {
    return 'Timer Initial { duration: $duration }';
  }
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() {
    return 'Timer Run Pause { duration: $duration }';
  }
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() {
    return 'Timer Run In Progress { duration: $duration }';
  }
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);

  @override
  String toString() {
    return 'Timer Run Complete { duration: $duration }';
  }
}
