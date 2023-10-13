import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:wods_generator/bloc/wod_chronometer/wod_chronometer_bloc.dart';

void main() {
  late WodChronometerBloc bloc;
  late StopWatchTimer stopWatchTimer;

  const int timecap = 10;
  setUp(() {
    bloc = WodChronometerBloc(timecap: timecap);
    stopWatchTimer = bloc.state.stopWatchTimer;
  });

  tearDown(() {
    bloc.close();
  });

  test('initial state is correct', () {
    expect(
        bloc.state,
        WodChronometerState(
          stopWatchTimer: stopWatchTimer,
        ));
  });

  group('WodChronometerEvent.started()', () {
    blocTest('should start timer',
        build: () => bloc,
        act: (WodChronometerBloc bloc) => bloc.add(const WodChronometerEvent.started()),
        expect: () => <WodChronometerState>[
              WodChronometerState(
                  isRunning: true, isFinished: false, stopWatchTimer: stopWatchTimer),
            ],
        verify: (bloc) {
          return bloc.state.stopWatchTimer.isRunning;
        });
  });

  group('WodChronometerEvent.paused()', () {
    blocTest('should pause timer',
        build: () => bloc,
        act: (WodChronometerBloc bloc) => bloc.add(const WodChronometerEvent.paused()),
        expect: () => <WodChronometerState>[
              WodChronometerState(
                  isRunning: false, isFinished: false, stopWatchTimer: stopWatchTimer),
            ],
        verify: (bloc) {
          return !bloc.state.stopWatchTimer.isRunning &&
              bloc.state.stopWatchTimer.initialPresetTime == timecap;
        });
  });

  group('WodChronometerEvent.reset()', () {
    blocTest('should reset timer',
        build: () => bloc,
        act: (WodChronometerBloc bloc) => bloc.add(const WodChronometerEvent.reset()),
        expect: () => <WodChronometerState>[
              WodChronometerState(
                  isRunning: false, isFinished: false, stopWatchTimer: stopWatchTimer),
            ],
        verify: (bloc) {
          return !bloc.state.stopWatchTimer.isRunning;
        });
  });

  group('WodChronometerEvent.finished()', () {
    blocTest('should finished timer',
        build: () => bloc,
        act: (WodChronometerBloc bloc) => bloc.add(const WodChronometerEvent.finished()),
        expect: () => <WodChronometerState>[
              WodChronometerState(
                  isRunning: false, isFinished: true, stopWatchTimer: stopWatchTimer),
            ],
        verify: (bloc) {
          return !bloc.state.stopWatchTimer.isRunning;
        });
  });
}
