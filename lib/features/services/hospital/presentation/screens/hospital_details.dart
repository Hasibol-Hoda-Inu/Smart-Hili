import 'package:flutter/material.dart';
import 'package:smart_hili/application/app_colors.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/description_card.dart';

import '../../../../../application/app_content.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/service_ds_banner.dart';
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
              const ServiceDSBanner(title: 'হাকিমপুর উপজেলা স্বাস্থ্য কমপ্লেক্স',),
              const SizedBox(height: 20,),

              const StyledTitle(title: "যোগাযোগ নম্বর",),
              const SizedBox(height: 10,),
              const ContactInfo(),
              const SizedBox(height: 20,),

              const StyledTitle(title: "সুবিধা সমূহ"),
              const SizedBox(height: 10,),
              _buildFacilityGrid(),
              const SizedBox(height: 20,),

              const StyledTitle(title: "বর্ণনা"),
              const SizedBox(height: 10,),
              DescriptionCard(description: AppContent.hospitalDescription,),
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
}
