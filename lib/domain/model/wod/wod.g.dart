// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WodImpl _$$WodImplFromJson(Map<String, dynamic> json) => _$WodImpl(
      name: json['name'] as String,
      timecap: json['timecap'] as int?,
      type: json['type'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WodImplToJson(_$WodImpl instance) => <String, dynamic>{
      'name': instance.name,
      'timecap': instance.timecap,
      'type': instance.type,
      'exercises': instance.exercises,
    };
