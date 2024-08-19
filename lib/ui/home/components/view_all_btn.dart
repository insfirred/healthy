import 'package:flutter/material.dart';

class ViewAllBtn extends StatelessWidget {
  const ViewAllBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 21,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xFF232F58),
      ),
      child: const Text(
        'View All',
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
      ),
    );
  }
}
