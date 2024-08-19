import 'package:freezed_annotation/freezed_annotation.dart';

import 'resource.dart';

part 'assessment.g.dart';

@JsonSerializable()
class Assessment {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String workoutImageUrl;
  final int durationInSec;
  final List<Resource> resources;
  final List<String> prerequisites;
  final List<String> benefits;

  const Assessment({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.workoutImageUrl,
    required this.durationInSec,
    required this.resources,
    required this.prerequisites,
    required this.benefits,
  });

  factory Assessment.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentToJson(this);
}
