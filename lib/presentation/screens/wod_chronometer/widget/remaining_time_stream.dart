import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:wods_generator/bloc/wod_chronometer/wod_chronometer_bloc.dart';

class RemainingTimeStream extends StatelessWidget {
  const RemainingTimeStream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: context.read<WodChronometerBloc>().state.stopWatchTimer.rawTime,
      initialData: context.read<WodChronometerBloc>().state.stopWatchTimer.rawTime.value,
      builder: (context, snap) {
        final int value = snap.data!;
        final displayTime = StopWatchTimer.getDisplayTime(value, milliSecond: false);
        if (value == 0) {
          HapticFeedback.vibrate();
          return BlinkText(
            displayTime,
            beginColor: Colors.black,
            times: 30,
            endColor: Colors.transparent,
            style: Theme.of(context).textTheme.displayLarge,
          );
        }
        return Text(
          displayTime,
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
  }
}
