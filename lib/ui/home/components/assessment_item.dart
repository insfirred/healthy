import 'package:flutter/material.dart';

import '../../../models/assessment.dart';
import '../../assessment/assessment_view.dart';

class AssessmentItem extends StatelessWidget {
  const AssessmentItem({
    required this.assessment,
    required this.color,
    super.key,
  });

  final Assessment assessment;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(11),
                  topLeft: Radius.circular(11),
                ),
                color: color,
              ),
              child: Hero(
                tag: assessment.id,
                child: Image.network(
                  assessment.imageUrl,
                  errorBuilder: (context, error, stackTrace) =>
                      const Text('unable to fetch image'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    assessment.name,
                    style: const TextStyle(
                      color: Color(0xFF222E58),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    assessment.description,
                    style: const TextStyle(
                      color: Color(0xFF2A2A2A),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AssessmentView(
                            bgColor: color,
                            assessment: assessment,
                          ),
                        ),
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/play.png',
                          width: 23,
                          height: 23,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'Start',
                          style: TextStyle(
                            color: Color(0xFF255FD5),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
