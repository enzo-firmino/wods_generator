import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    dynamic repetitions,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, Object?> json) => _$ExerciseFromJson(json);
}
