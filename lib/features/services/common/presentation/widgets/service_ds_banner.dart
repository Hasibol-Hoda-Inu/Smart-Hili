import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/status_badge.dart';

import '../../../../../application/app_colors.dart';
import '../../../../../application/assets_path.dart';

class ServiceDSBanner extends StatelessWidget {
  final String title;
  const ServiceDSBanner({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(AssetsPath.banner2),
            fit: BoxFit.cover,
          )
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          spacing: 10,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.themeColor,
                ),
              ),
            ),
            const StatusBadge(),
          ],
        ),
      ),
    );
  }
}