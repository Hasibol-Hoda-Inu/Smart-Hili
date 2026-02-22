import 'package:flutter/material.dart';
import 'package:smart_hili/application/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/sos_container.dart';

class EmergencyServiceSos extends StatefulWidget {
  const EmergencyServiceSos({super.key});

  @override
  State<EmergencyServiceSos> createState() => _EmergencyServiceSosState();
}

class _EmergencyServiceSosState extends State<EmergencyServiceSos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Text("জরুরী সেবা"),
        centerTitle: true,
        backgroundColor: AppColors.wbgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 20,
          children: [
            const Text(
              "সরাসরি কল করতে ট্যাপ করুন",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SosContainer(
              title: 'পুলিশ',
              subTitle: 'EMERGENCY',
              icon: Icons.shield,
              color: AppColors.themeColor,
              onTap: () => _launchUrl(Uri.parse('tel:01320136703')),
            ),
            SosContainer(
              title: 'ফায়ার সার্ভিস',
              subTitle: 'RESCUE',
              icon: Icons.local_fire_department_rounded,
              color: AppColors.themeColor,
              onTap: () => _launchUrl(Uri.parse('tel:01755295999')),
            ),
            SosContainer(
              onTap: () => _launchUrl(Uri.parse('tel:01756617390')),
              title: 'এম্বুলেন্স',
              subTitle: 'MEDICAL',
              icon: Icons.car_crash_rounded,
              color: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw Exception('❌ Could not launch $url');
      }
    } catch (e) {
      debugPrint('❌ Error: $e');
    }
  }
}
