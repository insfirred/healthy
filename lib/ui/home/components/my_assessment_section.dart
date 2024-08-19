import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_view_model.dart';
import 'assessment_item.dart';

class MyAssessmentSection extends ConsumerWidget {
  const MyAssessmentSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assessments = ref.watch(
      homeViewModelProvider.select((_) => _.assessments),
    );

    const color1 = Color(0xFFDABE5D);
    const color2 = Color(0xFF69F5BB);

    return SizedBox(
      height: 325,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => AssessmentItem(
          assessment: assessments[index],
          color: index % 2 == 0 ? color1 : color2,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 4),
        itemCount: assessments.length,
      ),
    );
  }
}
