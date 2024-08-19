import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_view_model.dart';
import 'my_appointment_section.dart';
import 'my_assessment_section.dart';
import 'view_all_btn.dart';

class QuickAccessSection extends ConsumerWidget {
  const QuickAccessSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstSelected = ref.watch(
      homeViewModelProvider.select((_) => _.isFirstSelected),
    );

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: const Color.fromARGB(255, 229, 229, 255),
      ),
      height: 390,
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 150),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: isFirstSelected
                ? const MyAssessmentSection()
                : const MyAppointmentSection(),
          ),
          const Spacer(),
          const ViewAllBtn(),
        ],
      ),
    );
  }
}
