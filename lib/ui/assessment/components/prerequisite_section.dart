import 'package:flutter/material.dart';

class PrerequisiteSection extends StatelessWidget {
  const PrerequisiteSection({
    super.key,
    required this.prerequisites,
    required this.imgUrl,
  });

  final List<String> prerequisites;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 35),
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
              const SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF00BF4D).withOpacity(0.1),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/privacy.png',
                      height: 15,
                      width: 13,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'We do not store or share your personal data',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: prerequisites.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 20,
                      child: Text(
                        prerequisites[index],
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
        ),
        Image.network(imgUrl),
      ],
    );
  }
}
