import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/status_badge.dart';

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
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 12,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
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
            // Divider(
            //   color: Colors.grey.shade300,
            // ),
            // Row(
            //   spacing: 12,
            //   children: [
            //     ElevatedButton.icon(
            //       onPressed: onTab,
            //       icon: const Icon(Icons.info),
            //       label: const Text("বিস্তারিত",
            //         style: TextStyle(fontWeight: FontWeight.bold),),
            //     ),
            //     ElevatedButton.icon(
            //       onPressed: (){},
            //       icon: const Icon(Icons.call),
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: AppColors.themeColor,
            //         foregroundColor: Colors.white,
            //       ),
            //       label: const Text("কল করুন",
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}