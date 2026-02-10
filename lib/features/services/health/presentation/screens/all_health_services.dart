import 'package:flutter/material.dart';
import 'package:smart_hili/application/app_colors.dart';

import '../widgets/hospital_card.dart';
import 'hospital_details.dart';

class AllHealthServices extends StatefulWidget {
  const AllHealthServices({super.key});

  @override
  State<AllHealthServices> createState() => _AllHealthServicesState();
}

class _AllHealthServicesState extends State<AllHealthServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Column(
          children: [
            Text("স্বাস্থ্য সেবা", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("সকল স্বাস্থ্য সেবাসমূহ", style: TextStyle(color: AppColors.themeColor, fontSize: 14),),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HospitalCard(
              onTab: _onTabHDS,
              title: "উপজেলা স্বাস্থ্য কমপ্লেক্স",
            ),
          ],
        ),
      ),
    );
  }
  void _onTabHDS(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>const HospitalDetails()),
    );
  }
}


