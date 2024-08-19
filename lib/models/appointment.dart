import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.g.dart';

@JsonSerializable()
class Appointment {
  final String id;
  final String name;
  final String imageUrl;

  const Appointment({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}
