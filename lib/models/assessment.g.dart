// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assessment _$AssessmentFromJson(Map<String, dynamic> json) => Assessment(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      workoutImageUrl: json['workoutImageUrl'] as String,
      durationInSec: (json['durationInSec'] as num).toInt(),
      resources: (json['resources'] as List<dynamic>)
          .map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      prerequisites: (json['prerequisites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      benefits:
          (json['benefits'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AssessmentToJson(Assessment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'workoutImageUrl': instance.workoutImageUrl,
      'durationInSec': instance.durationInSec,
      'resources': instance.resources.map((e) => e.toJson()).toList(),
      'prerequisites': instance.prerequisites,
      'benefits': instance.benefits,
    };
