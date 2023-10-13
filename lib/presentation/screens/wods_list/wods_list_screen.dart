import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/presentation/design_system/custom_scaffold.dart';
import 'package:wods_generator/presentation/design_system/custom_text_button.dart';
import 'package:wods_generator/presentation/screens/wods_list/widget/wod_card.dart';

class WodsListScreen extends StatelessWidget {
  const WodsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Choisissez votre WOD',
      body: BlocBuilder<WodsGeneratorBloc, WodsGeneratorState>(
        builder: (context, state) {
          if (state is WodGeneratorLoading) {
            return const Center(
              child: SizedBox(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          }
          if (state is WodGeneratorSuccess) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: ListView.builder(
                      itemCount: state.wods.length,
                      itemBuilder: (context, index) {
                        return WodCard(wod: state.wods[index]);
                      },
                    ),
                  ),
                  SafeArea(
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
                  ),
                ],
              ),
            );
          }
          return Center(
            child: Text(
              'Pas de WOD trouvé, veuillez revenir à l\'étape précédente et réessayer',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
