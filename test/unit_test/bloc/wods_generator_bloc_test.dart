import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';
import 'package:wods_generator/domain/repository/wod_repository.dart';

import '../../entity.dart';

class MockWodRepository extends Mock implements WodRepository {}

void main() {
  late WodsGeneratorBloc bloc;
  late MockWodRepository repository;

  setUp(() {
    repository = MockWodRepository();
    bloc = WodsGeneratorBloc(wodRepository: repository);
  });

  tearDown(() {
    bloc.close();
  });

  test('initial state is correct', () {
    expect(
      bloc.state,
      const WodsGeneratorState.initial(),
    );
  });

  String prompt = 'test';
  group('WodsGeneratorEvent.generate', () {
    final List<Wod> result = <Wod>[wod];
    blocTest(
      'should load wods',
      setUp: () {
        when(
          () => repository.getWods(
            prompt: prompt,
          ),
        ).thenAnswer(
          (_) async => Future<List<Wod>>.value(result),
        );
      },
      build: () => bloc,
      act: (WodsGeneratorBloc bloc) {
        return bloc.add(WodsGeneratorEvent.generate(prompt: prompt));
      },
      expect: () => <WodsGeneratorState>[
        const WodsGeneratorState.loading(),
        WodsGeneratorState.success(wods: [wod], prompt: prompt),
      ],
    );
    blocTest(
      'should emit failure',
      setUp: () {
        when(
          () => repository.getWods(
            prompt: prompt,
          ),
        ).thenAnswer(
          (_) async => throw Exception(),
        );
      },
      build: () => bloc,
      act: (WodsGeneratorBloc bloc) => bloc.add(WodsGeneratorEvent.generate(prompt: prompt)),
      expect: () => <WodsGeneratorState>[
        const WodsGeneratorState.loading(),
        const WodsGeneratorState.failure(error: 'Erreur durant le chargement, veuillez réessayer'),
      ],
    );
  });
}
