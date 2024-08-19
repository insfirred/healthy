import 'package:flutter/material.dart';

class AssessmentHeading extends StatelessWidget {
  const AssessmentHeading(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Color(0xFF222E58),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
