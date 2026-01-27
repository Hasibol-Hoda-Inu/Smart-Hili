import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_hili/application/app_colors.dart';
import 'package:smart_hili/application/assets_path.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/status_badge.dart';

import '../../../common/presentation/widgets/styled_title.dart';

class HospitalDetails extends StatefulWidget {
  const HospitalDetails({super.key});

  @override
  State<HospitalDetails> createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Text("সেবা বিস্তারিত"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                        child: const Text("উপজেলা স্বাস্থ্য কমপ্লেক্স",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.themeColor,
                          ),
                        ),
                      ),
                      const StatusBadge(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              const StyledTitle(title: "যোগাযোগ নম্বর",),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.shade50,
                    child: const Icon(Icons.emergency, color: Colors.red),
                  ),
                  title: const Text(
                    "জরুরি বিভাগ / অ্যাম্বুলেন্স",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("+880 1819-xxxxxx"),
                  trailing: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.call, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              const StyledTitle(title: "সুবিধা সমূহ"),
              const SizedBox(height: 10,),
              _buildFacilityGrid(),
              const SizedBox(height: 20,),

              const StyledTitle(title: "বর্ণনা"),
              const SizedBox(height: 10,),
              _buildDescriptionCard('''চট্টগ্রাম মেডিকেল কলেজ হাসপাতাল চট্টগ্রাম বিভাগের অন্যতম প্রধান সরকারি হাসপাতাল। এখানে অভিজ্ঞ চিকিৎসক দ্বারা ২৪ ঘণ্টা জরুরি সেবা প্রদান করা হয়। আধুনিক যন্ত্রপাতি এবং উন্নত চিকিৎসা ব্যবস্থার জন্য এটি সুপরিচিত।'''),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFacilityGrid() {
    final facilities = [
      {'icon': Icons.emergency, 'label': 'জরুরি বিভাগ', 'color': Colors.teal},
      {'icon': Icons.monitor_heart, 'label': 'আইসিইউ (ICU)', 'color': Colors.blue},
      {'icon': Icons.water_drop, 'label': 'ব্লাড ব্যাংক', 'color': Colors.purple},
      {'icon': Icons.medical_services, 'label': 'ফার্মেসি', 'color': Colors.orange},
      {'icon': Icons.wifi, 'label': 'ফ্রি ওয়াইফাই', 'color': Colors.indigo},
      {'icon': Icons.local_parking, 'label': 'পার্কিং', 'color': Colors.blueGrey},
    ];

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 2.5,
      children: facilities.map((f) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            CircleAvatar(
              radius: 18,
              backgroundColor: (f['color'] as Color).withAlpha(20),
              child: Icon(f['icon'] as IconData, color: f['color'] as Color, size: 18),
            ),
            const SizedBox(width: 10),
            Text(f['label'] as String,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildDescriptionCard(String description) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        // Adding a subtle shadow to match the elevation in the image
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
          height: 1.6, // Adds line spacing for better readability
          color: Colors.grey.shade800,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

