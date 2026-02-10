import 'package:flutter/material.dart';

class DoctorInfoCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String visitingTime;

  const DoctorInfoCard({
    super.key,
    required this.name,
    required this.specialization,
    required this.visitingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      specialization,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(height: 24),
          Row(
            children: [
              const Icon(Icons.access_time_rounded, color: Colors.teal, size: 18),
              const SizedBox(width: 8),
              const Text(
                'রোগী দেখার সময়:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
              const SizedBox(width: 6),
              Text(
                visitingTime,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}