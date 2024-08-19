import 'package:flutter/material.dart';

class StartBtn extends StatelessWidget {
  const StartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF255FD5),
        borderRadius: BorderRadius.circular(29),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/play_triangle.png',
            width: 23,
            height: 23,
          ),
          const SizedBox(width: 6),
          const Text(
            'Start Assessment',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
