// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Challenge _$ChallengeFromJson(Map<String, dynamic> json) => Challenge(
      id: json['id'] as String,
      name: json['name'] as String,
      totalSteps: (json['totalSteps'] as num).toInt(),
      stepsCompleted: (json['stepsCompleted'] as num).toInt(),
    );

Map<String, dynamic> _$ChallengeToJson(Challenge instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'totalSteps': instance.totalSteps,
      'stepsCompleted': instance.stepsCompleted,
    };
