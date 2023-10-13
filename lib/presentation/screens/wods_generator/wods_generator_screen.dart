import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_elevated_button.dart';
import 'package:wods_generator/presentation/design_system/custom_scaffold.dart';
import 'package:wods_generator/presentation/design_system/custom_text_field.dart';
import 'package:wods_generator/presentation/screens/wods_list/wods_list_screen.dart';

class WodsGeneratorScreen extends HookWidget {
  const WodsGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = useTextEditingController();
    return BlocListener<WodsGeneratorBloc, WodsGeneratorState>(
      listenWhen: (WodsGeneratorState prevState, WodsGeneratorState state) {
        return prevState is! WodGeneratorSuccess && state is WodGeneratorSuccess;
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text('ex: “j’ai une douleur au bras droit”', style: Theme.of(context).textTheme.bodyMedium,),
                ),
              ),
              const Spacer(),
              BlocSelector<WodsGeneratorBloc, WodsGeneratorState, bool>(
                selector: (state) {
                  return state is WodGeneratorLoading;
                },
                builder: (context, isLoading) {
                  return SafeArea(
                    child: CustomElevatedButton(
                      onPressed: () {
                        context
                            .read<WodsGeneratorBloc>()
                            .add(WodsGeneratorEvent.generate(prompt: textEditingController.text));
                      },
                      text: 'Générer',
                      suffix: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: isLoading
                            ? const CircularProgressIndicator.adaptive(
                                backgroundColor: Colors.white,
                              )
                            : const Icon(Icons.arrow_forward_rounded, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
