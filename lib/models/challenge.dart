import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge.g.dart';

@JsonSerializable()
class Challenge {
  final String id;
  final String name;
  final int totalSteps;
  final int stepsCompleted;

  const Challenge({
    required this.id,
    required this.name,
    required this.totalSteps,
    required this.stepsCompleted,
  });

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);

  Map<String, dynamic> toJson() => _$ChallengeToJson(this);
}
