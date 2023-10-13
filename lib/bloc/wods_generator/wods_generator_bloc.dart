import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';
import 'package:wods_generator/domain/repository/wod_repository.dart';

part 'wods_generator_bloc.freezed.dart';
part 'wods_generator_event.dart';
part 'wods_generator_state.dart';

class WodsGeneratorBloc extends Bloc<WodsGeneratorEvent, WodsGeneratorState> {
  final WodRepository _wodRepository;

  WodsGeneratorBloc({required WodRepository wodRepository})
      : _wodRepository = wodRepository,
        super(const WodsGeneratorState.initial()) {
    on<WodsGeneratorEvent>((events, emit) async {
      await events.map(
        generate: (event) async => await _generate(event, emit),
      );
    });
  }

  _generate(_Generate event, Emitter<WodsGeneratorState> emit) async {
    WodsGeneratorState currentState = state;
    String? prompt =
        event.prompt ?? (currentState is WodGeneratorSuccess ? currentState.prompt : null);
    emit(const WodsGeneratorState.loading());
    try {
      List<Wod> wods = await _wodRepository.getWods(prompt: prompt);
      emit(WodsGeneratorState.success(prompt: prompt, wods: wods));
    } on Exception catch (_) {
      emit(const WodsGeneratorState.failure(
          error: 'Erreur durant le chargement, veuillez réessayer'));
    }
  }
}
