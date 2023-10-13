import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/presentation/design_system/colours.dart';
import 'package:wods_generator/presentation/design_system/custom_elevated_button.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WodsGeneratorBloc, WodsGeneratorState, bool>(
      selector: (state) {
        return state is WodGeneratorLoading;
      },
      builder: (context, isLoading) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomElevatedButton.text(
              onPressed: () {
                context
                    .read<WodsGeneratorBloc>()
                    .add(WodsGeneratorEvent.generate(prompt: textEditingController.text));
              },
              text: 'Générer',
              suffix: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: isLoading
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.white,
                          valueColor: AlwaysStoppedAnimation<Color>(Colours.yellow),
                        ),
                      )
                    : const Icon(Icons.arrow_forward_rounded, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
