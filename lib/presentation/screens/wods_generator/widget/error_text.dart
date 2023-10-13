import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WodsGeneratorBloc, WodsGeneratorState, String?>(
      selector: (state) {
        return state is WodGeneratorFailure ? state.error : null;
      },
      builder: (context, error) {
        if (error != null) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                error,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.red),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
