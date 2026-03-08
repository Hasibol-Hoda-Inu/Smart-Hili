import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceType {
  final String title;
  final IconData icon;
  final Color color;

  ServiceType({required this.title, required this.icon, required this.color,});
}

class ProvidingServiceGrid extends StatelessWidget {
  final List<ServiceType> items;

  const ProvidingServiceGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 0.9.h,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildProvidingServiceCard(item);
      },
    );
  }

  Widget _buildProvidingServiceCard(ServiceType item) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: item.color.withAlpha(26),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: item.color.withAlpha(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, color: item.color, size: 30.sp),
          SizedBox(height: 10.h),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3232),
            ),
          ),
        ],
      ),
    );
  }
}
