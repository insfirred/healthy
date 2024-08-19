import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_view_model.dart';
import 'routine_item.dart';

class WorkoutRoutineSection extends ConsumerWidget {
  const WorkoutRoutineSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routines = ref.watch(
      homeViewModelProvider.select((_) => _.routines),
    );

    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Workout Routine',
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
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) => RoutineItem(routines[index]),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
      ],
    );
  }
}
