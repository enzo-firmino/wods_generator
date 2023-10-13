part of 'wods_generator_bloc.dart';

@freezed
class WodsGeneratorState with _$WodsGeneratorState {
  const factory WodsGeneratorState.initial() = WodGeneratorInitial;

  const factory WodsGeneratorState.loading() = WodGeneratorLoading;

  const factory WodsGeneratorState.success({String? prompt, required List<Wod> wods}) =
      WodGeneratorSuccess;

  const factory WodsGeneratorState.failure({required String error}) = WodGeneratorFailure;
}
