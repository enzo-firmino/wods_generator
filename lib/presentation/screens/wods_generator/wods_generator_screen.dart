import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_scaffold.dart';
import 'package:wods_generator/presentation/design_system/custom_text_field.dart';
import 'package:wods_generator/presentation/screens/wods_generator/widget/error_text.dart';
import 'package:wods_generator/presentation/screens/wods_generator/widget/generate_button.dart';
import 'package:wods_generator/presentation/screens/wods_generator/widget/text_field_hint.dart';
import 'package:wods_generator/presentation/screens/wods_list/wods_list_screen.dart';

class WodsGeneratorScreen extends HookWidget {
  const WodsGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = useTextEditingController();
    return BlocListener<WodsGeneratorBloc, WodsGeneratorState>(
      listenWhen: (WodsGeneratorState prevState, WodsGeneratorState state) {
        return (ModalRoute.of(context)?.isCurrent ?? false) &&
            prevState is! WodGeneratorSuccess &&
            state is WodGeneratorSuccess;
      },
      listener: (context, state) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const WodsListScreen(),
          ),
        );
      },
      child: CustomScaffold(
        title: 'Générateur de WODs',
        body: Padding(
          padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 6,
                  bottom: MediaQuery.of(context).padding.bottom) +
              const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomTextField(
                controller: textEditingController,
                label: 'personnalisez votre WOD',
                onSubmitted: (String value) {
                  context.read<WodsGeneratorBloc>().add(WodsGeneratorEvent.generate(prompt: value));
                },
              ),
              const TextFieldHint(),
              const ErrorText(),
              const Spacer(),
              GenerateButton(textEditingController: textEditingController),
            ],
          ),
        ),
      ),
    );
  }
}
