import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_text_button.dart';

class LoadNewWodsButton extends StatelessWidget {
  const LoadNewWodsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomTextButton(
        onPressed: () {
          context.read<WodsGeneratorBloc>().add(const WodsGeneratorEvent.generate());
        },
        suffix: const Icon(
          Icons.refresh_outlined,
          color: Colors.black,
          size: 26,
        ),
        text: 'Charger de nouveaux WODs',
      ),
    );
  }
}
