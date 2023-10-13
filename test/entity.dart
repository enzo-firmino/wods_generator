import 'package:wods_generator/domain/model/exercise/exercise.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';

const Wod wod = Wod(
  name: 'wod',
  type: 'AMRAP',
  exercises: [exercise],
);

const Exercise exercise = Exercise(name: 'exercise', repetitions: 10);