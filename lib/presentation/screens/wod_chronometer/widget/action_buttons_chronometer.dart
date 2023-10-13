import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wod_chronometer/wod_chronometer_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_elevated_button.dart';

class ActionButtonsChronometer extends StatelessWidget {
  const ActionButtonsChronometer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BlocSelector<WodChronometerBloc, WodChronometerState, bool>(
            selector: (state) {
              return state.isRunning;
            },
            builder: (context, isRunning) {
              if (isRunning) {
                return _ActionButton(
                  iconData: Icons.stop,
                  onPressed: () {
                    context.read<WodChronometerBloc>().add(const WodChronometerEvent.paused());
                  },
                );
              } else {
                return _ActionButton(
                  iconData: Icons.play_arrow_rounded,
                  onPressed: () {
                    context.read<WodChronometerBloc>().add(const WodChronometerEvent.started());
                  },
                );
              }
            },
          ),
          _ActionButton(
            onPressed: () {
              context.read<WodChronometerBloc>().add(const WodChronometerEvent.reset());
            },
            iconData: Icons.refresh_rounded,
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData _iconData;
  final VoidCallback _onPressed;

  const _ActionButton({
    required IconData iconData,
    required VoidCallback onPressed,
  })  : _iconData = iconData,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CustomElevatedButton.icon(
          onPressed: _onPressed,
          iconData: _iconData,
        ),
      ),
    );
  }
}
