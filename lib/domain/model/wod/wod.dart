import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wods_generator/domain/model/exercise/exercise.dart';

part 'wod.freezed.dart';
part 'wod.g.dart';

@freezed
class Wod with _$Wod {
  const factory Wod({
    required String name,
    int? timecap,
    required String type,
    required List<Exercise> exercises,
  }) = _Wod;

  factory Wod.fromJson(Map<String, Object?> json) => _$WodFromJson(json);
}
