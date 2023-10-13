part of 'wods_generator_bloc.dart';

@freezed
class WodsGeneratorEvent with _$WodsGeneratorEvent {
  const factory WodsGeneratorEvent.generate({String? prompt}) = _Generate;
}
