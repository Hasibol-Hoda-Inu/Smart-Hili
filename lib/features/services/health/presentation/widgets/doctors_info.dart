import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 2.w),
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
              CircleAvatar(
                radius: 28.sp,
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, color: Colors.white, size: 30.sp),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.h),
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
          Divider(height: 24.h),
          Row(
            children: [
              Icon(Icons.access_time_rounded, color: Colors.teal, size: 18.sp),
              SizedBox(width: 8.w),
              Text(
                'রোগী দেখার সময়:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.w),
              ),
              SizedBox(width: 6.w),
              Text(
                visitingTime,
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}