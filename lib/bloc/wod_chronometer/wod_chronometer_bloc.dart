import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'wod_chronometer_bloc.freezed.dart';
part 'wod_chronometer_event.dart';
part 'wod_chronometer_state.dart';

class WodChronometerBloc extends Bloc<WodChronometerEvent, WodChronometerState> {
  WodChronometerBloc({required int timecap})
      : super(
          WodChronometerState(
            stopWatchTimer: StopWatchTimer(
              mode: StopWatchMode.countDown,
              presetMillisecond: StopWatchTimer.getMilliSecFromMinute(timecap),
            ),
          ),
        ) {
    state.stopWatchTimer.fetchEnded.listen((value) => add(const WodChronometerEvent.finished()));
    on<WodChronometerEvent>((events, emit) async {
      await events.map(
        started: (event) async => await _start(event, emit),
        paused: (event) async => await _pause(event, emit),
        reset: (event) async => await _reset(event, emit),
        finished: (event) async => await _finished(event, emit),
      );
    });
  }

  _start(_Started event, Emitter<WodChronometerState> emit) async {
    if (state.isFinished) {
      state.stopWatchTimer.onResetTimer();
    }
    state.stopWatchTimer.onStartTimer();
    emit(state.copyWith(isRunning: true, isFinished: false));
  }

  _pause(_Paused event, Emitter<WodChronometerState> emit) async {
    state.stopWatchTimer.onStopTimer();
    emit(state.copyWith(isRunning: false, isFinished: false));
  }

  _reset(_Reset event, Emitter<WodChronometerState> emit) async {
    state.stopWatchTimer.onResetTimer();
    emit(state.copyWith(isRunning: false, isFinished: false));
  }

  _finished(_Finished event, Emitter<WodChronometerState> emit) async {
    emit(state.copyWith(isFinished: true, isRunning: false));
  }
}
