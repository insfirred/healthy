import 'package:flutter/material.dart';

import '../../../models/resource.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({
    super.key,
    required this.resources,
  });

  final List<Resource> resources;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE8E9ED)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Image.network(
                    resources[0].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                resources[0].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE8E9ED)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Image.network(
                    resources[1].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                resources[1].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE8E9ED)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Image.network(
                    resources[2].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                resources[2].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE8E9ED)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Image.network(
                    resources[3].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                resources[3].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
