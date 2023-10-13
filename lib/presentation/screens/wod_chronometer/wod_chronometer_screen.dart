import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wod_chronometer/wod_chronometer_bloc.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';
import 'package:wods_generator/presentation/design_system/custom_scaffold.dart';
import 'package:wods_generator/presentation/screens/wod_chronometer/widget/action_buttons_chronometer.dart';
import 'package:wods_generator/presentation/screens/wod_chronometer/widget/finished_chronometer_selector.dart';
import 'package:wods_generator/presentation/screens/wod_chronometer/widget/remaining_time_stream.dart';

class WodChronometerScreen extends StatelessWidget {
  final Wod _wod;

  const WodChronometerScreen({super.key, required Wod wod}) : _wod = wod;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WodChronometerBloc>(
      create: (context) => WodChronometerBloc(timecap: _wod.timecap ?? 0),
      child: CustomScaffold(
        title: _wod.name,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 16,
          ),
          child: Builder(
            builder: (context) {
              return const SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    RemainingTimeStream(),
                    SizedBox(height: 36.0),
                    ActionButtonsChronometer(),
                    Spacer(),
                    FinishedChronometerSelector(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
