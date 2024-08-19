import 'package:flutter/material.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({
    super.key,
    required this.benefits,
  });

  final List<String> benefits;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE6E6E6),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 10,
      ),
      child: Column(
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: benefits.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    '•',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Text(
                    benefits[index],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 5),
          ),
        ],
      ),
    );
  }
}
