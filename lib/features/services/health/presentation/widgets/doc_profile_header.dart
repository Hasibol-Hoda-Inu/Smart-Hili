import 'package:flutter/material.dart';

class DoctorProfileHeader extends StatelessWidget {
  final String name;
  final String specialty;
  final String degree;
  final String experience;
  final String rating;
  final String patients;
  final String imageUrl;

  const DoctorProfileHeader({
    super.key,
    required this.name,
    required this.specialty,
    required this.degree,
    required this.experience,
    required this.rating,
    required this.imageUrl,
    required this.patients,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        border: Border.all(color: Colors.grey.shade200, width: 1)
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor Image with Border
              Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.teal.shade50, width: 4),
                ),
              ),
              const SizedBox(width: 20),
              // Doctor Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3232),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      specialty,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal.shade700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      degree,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          // Stats Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatColumn("অভিজ্ঞতা", "$experience বছর"),
              _buildVerticalDivider(),
              _buildStatColumn("রেটিং", rating),
              _buildVerticalDivider(),
              _buildStatColumn("রোগী", patients),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.shade300,
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3232),
          ),
        ),
      ],
    );
  }
}