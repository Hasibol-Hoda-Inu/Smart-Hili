import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/status_badge.dart';

import '../../../../../application/app_colors.dart';
import '../../../../../application/assets_path.dart';

class HospitalCard extends StatelessWidget {
  final String title;

  const HospitalCard({
    super.key,
    this.onTab,
    required this.title,
  });

  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(50),
              spreadRadius: 2,
              blurRadius: 16,
            )
          ]
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 12,
            children: [
              Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetsPath.banner2),
                    )
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),),
                    const Text("হাকিমপুর দিনাজপুর",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 10,
                      children: [
                        StatusBadge(),
                        Text("24/7 Service"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Row(
            spacing: 12,
            children: [
              ElevatedButton.icon(
                onPressed: onTab,
                icon: const Icon(Icons.info),
                label: const Text("বিস্তারিত",
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ElevatedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.call),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.themeColor,
                  foregroundColor: Colors.white,
                ),
                label: const Text("কল করুন",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          )
        ],
      ),
    );
  }
}