import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/enums.dart';

part 'routine.g.dart';

@JsonSerializable()
class Routine {
  final String id;
  final String name;
  final String imageUrl;
  final String type;
  final List<String> tags;
  final Difficulty difficulty;

  const Routine({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.tags,
    required this.difficulty,
  });

  factory Routine.fromJson(Map<String, dynamic> json) =>
      _$RoutineFromJson(json);

  Map<String, dynamic> toJson() => _$RoutineToJson(this);
}
