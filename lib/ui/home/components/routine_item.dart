import 'package:flutter/material.dart';

import '../../../models/routine.dart';

class RoutineItem extends StatelessWidget {
  const RoutineItem(this.routine, {super.key});

  final Routine routine;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: const Color(0xFFCDCDCD)),
      ),
      width: 270,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  topLeft: Radius.circular(21),
                ),
                color: Color(0xFFFCE2BC),
              ),
              child: Image.network(
                routine.imageUrl,
                height: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(
                left: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    routine.name,
                    style: const TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    routine.type,
                    style: const TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFCDCDCD)),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      routine.tags.first,
                      style: const TextStyle(
                        color: Color(0xFF255FD5),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      text: 'Difficulty :',
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: ' ${routine.difficulty.name}',
                          style: const TextStyle(
                            color: Color(0xFFFF88A5),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
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
