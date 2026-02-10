import 'package:flutter/material.dart';

import '../../../../../application/app_colors.dart';
import '../widgets/hospital_card.dart';

class AllDentalServices extends StatefulWidget {
  const AllDentalServices({super.key});

  @override
  State<AllDentalServices> createState() => _AllDentalServicesState();
}

class _AllDentalServicesState extends State<AllDentalServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Column(
          children: [
            Text("স্বাস্থ্য সেবা", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("সকল Dental সেবাসমূহ", style: TextStyle(color: AppColors.themeColor, fontSize: 14),),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HospitalCard(
              onTab: (){
                _onTapDS();
              },
              title: "Dental Services",
            ),
          ],
        ),
      ),
    );
  }

  void _onTapDS(){

  }
}
