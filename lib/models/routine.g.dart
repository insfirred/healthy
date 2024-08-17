// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Routine _$RoutineFromJson(Map<String, dynamic> json) => Routine(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      difficulty: $enumDecode(_$DifficultyEnumMap, json['difficulty']),
    );

Map<String, dynamic> _$RoutineToJson(Routine instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'tags': instance.tags,
      'difficulty': _$DifficultyEnumMap[instance.difficulty]!,
    };

const _$DifficultyEnumMap = {
  Difficulty.easy: 'easy',
  Difficulty.medium: 'medium',
  Difficulty.hard: 'hard',
};
