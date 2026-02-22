import 'package:flutter/material.dart';

import '../../../../../application/assets_path.dart';


class SchoolLocationWidget extends StatelessWidget {
  final String address;
  final VoidCallback onOpenMap;

  const SchoolLocationWidget({
    super.key,
    required this.address,
    required this.onOpenMap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.withAlpha(10),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              image: const DecorationImage(
                image: AssetImage(AssetsPath.mapImg),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on, color: Colors.redAccent, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        address,
                        style: const TextStyle(fontSize: 14, height: 1.4),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: onOpenMap,
                    icon: const Icon(Icons.directions, color: Colors.white),
                    label: const Text(
                      "গুগল ম্যাপে দেখুন",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}