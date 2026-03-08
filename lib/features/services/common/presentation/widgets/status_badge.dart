import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor,
            width: 1,
          )),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          Icon(
            Icons.circle,
            color: primaryColor,
            size: 14.sp,
          ),
          Text(
            label,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp
            ),
          ),
        ],
      ),
    );
  }
}