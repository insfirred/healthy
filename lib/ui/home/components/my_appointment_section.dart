import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_view_model.dart';

class MyAppointmentSection extends ConsumerWidget {
  const MyAppointmentSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appointments = ref.watch(
      homeViewModelProvider.select((_) => _.appointments),
    );

    List<Color> colors = [
      const Color(0xFFC6D9FF),
      const Color(0xFFE9C6FF),
      const Color(0xFFFFD4C6),
    ];

    return SizedBox(
      height: 325,
      child: GridView.builder(
        itemCount: appointments.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: colors[index % colors.length],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.network(appointments[index].imageUrl),
              ),
              Text(
                appointments[index].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF222E58),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
