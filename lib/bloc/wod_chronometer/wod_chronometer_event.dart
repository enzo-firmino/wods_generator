part of 'wod_chronometer_bloc.dart';

@freezed
class WodChronometerEvent with _$WodChronometerEvent {
  const factory WodChronometerEvent.started() = _Started;
  const factory WodChronometerEvent.paused() = _Paused;
  const factory WodChronometerEvent.reset() = _Reset;
  const factory WodChronometerEvent.finished() = _Finished;
}
