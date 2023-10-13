import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wod_chronometer/wod_chronometer_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_elevated_button.dart';

class FinishedChronometerSelector extends StatelessWidget {
  const FinishedChronometerSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WodChronometerBloc, WodChronometerState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        if (isFinished) {
          return Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Column(
              children: [
                Text(
                  'Temps écoulé !',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 24),
                CustomElevatedButton.text(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  text: 'Retourner à la liste des WODs',
                ),
                const SizedBox(height: 16),
                CustomElevatedButton.text(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  text: 'Rechercher d\'autres WODs',
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
