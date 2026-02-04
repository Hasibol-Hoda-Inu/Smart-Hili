import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final String description;

  const DescriptionCard({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        description,
        style: TextStyle(
          fontSize: 15,
          height: 1.6, // Improves readability
          color: Colors.grey.shade800,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}