part of 'wod_chronometer_bloc.dart';

@freezed
class WodChronometerState with _$WodChronometerState {
  const factory WodChronometerState({
    required StopWatchTimer stopWatchTimer,
    @Default(false) bool isRunning,
    @Default(false) bool isFinished,
  }) = _WodChronometerState;
}
