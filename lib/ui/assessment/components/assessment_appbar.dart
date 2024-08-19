import 'package:flutter/material.dart';

import '../../../models/assessment.dart';

class AssessmentAppBar extends StatelessWidget {
  const AssessmentAppBar({
    super.key,
    required this.assessment,
  });

  final Assessment assessment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                assessment.name,
                style: const TextStyle(
                  color: Color(0xFF222E58),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/clock.png',
                      height: 14,
                      width: 11,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${((assessment.durationInSec / 60).ceil().toString())} min',
                      style: const TextStyle(
                          color: Color(0xFF222E58), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
