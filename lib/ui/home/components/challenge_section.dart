import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_view_model.dart';

class ChallengeSection extends ConsumerWidget {
  const ChallengeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenge = ref.watch(
      homeViewModelProvider.select((_) => _.challenge),
    );

    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Challenges',
              style: TextStyle(
                color: Color(0xFF303030),
                fontSize: 15,
              ),
            ),
            const Spacer(),
            const Text(
              'View All',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xFF303030),
                fontSize: 15,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: Color(0xFF232F58),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: Image.asset('assets/forward_arrow.png'),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFC1EAD1),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 17,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today\'s Challenge!',
                        style: TextStyle(
                          color: Color(0xFF2B7A71),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2B7A71),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          challenge!.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Stack(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF88A5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                            text:
                                '${challenge.stepsCompleted}/${challenge.totalSteps}',
                            style: const TextStyle(
                              color: Color(0xFF323232),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                            children: const [
                              TextSpan(
                                text: ' completed',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                      const SizedBox(height: 11),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/play.png',
                              width: 23,
                              height: 23,
                            ),
                            const SizedBox(width: 9),
                            const Text(
                              'Continue',
                              style: TextStyle(
                                color: Color(0xFF255FD5),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 5,
                child: Image.network(
                  challenge.imageUrl,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
