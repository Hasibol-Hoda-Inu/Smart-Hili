import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/contact_info.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/description_card.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/service_ds_banner.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/styled_title.dart';

import '../../../../../application/app_content.dart';

class PoliceDetails extends StatefulWidget {
  const PoliceDetails({super.key});

  @override
  State<PoliceDetails> createState() => _PoliceDetailsState();
}

class _PoliceDetailsState extends State<PoliceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("সেবা বিস্তারিত"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ServiceDSBanner(title: 'হাকিমপুর (হিলি) থানা',),
              const SizedBox(height: 20),
              const StyledTitle(title: "যোগাযোগ নম্বর"),
              const SizedBox(height: 10),
              const ContactInfo(title: 'police', number: '019487', icon: Icons.security, color: Colors.blueAccent,),
              const SizedBox(height: 20),
              const StyledTitle(title: "বর্ণনা"),
              const SizedBox(height: 10),
              DescriptionCard(
                description: AppContent.policeSDescription,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
