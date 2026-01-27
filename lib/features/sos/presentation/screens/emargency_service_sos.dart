import 'package:flutter/material.dart';
import 'package:smart_hili/application/app_colors.dart';

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
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 20,
          children: [
            Text("সরাসরি কল করতে ট্যাপ করুন", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SosContainer(title: 'পুলিশ', subTitle: 'EMERGENCY', icon: Icons.shield, color: AppColors.themeColor,),
            SosContainer(title: 'ফায়ার\nসার্ভিস', subTitle: 'RESCUE', icon: Icons.local_fire_department_rounded, color: AppColors.themeColor,),
            SosContainer(title: 'এম্বুলেন্স', subTitle: 'MEDICAL', icon: Icons.car_crash_rounded, color: AppColors.secondaryColor,),
          ],
        ),
      ),
    );
  }
}


