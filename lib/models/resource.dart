import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  final String id;
  final String name;
  final String imageUrl;

  const Resource({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
