import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final String label;
  final bool isOpen;

  const StatusBadge({
    super.key,
    this.label = "খোলা আছে",
    this.isOpen = true,
  });

  @override
  Widget build(BuildContext context) {
    // Define colors based on status
    final Color primaryColor = isOpen ? Colors.green : Colors.red;
    final Color bgColor = isOpen ? Colors.green.shade50 : Colors.red.shade50;
    final Color borderColor = isOpen ? Colors.green.shade300 : Colors.red.shade300;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor,
            width: 1,
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Takes only required space
        spacing: 8,
        children: [
          Icon(
            Icons.circle,
            color: primaryColor,
            size: 14,
          ),
          Text(
            label,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}