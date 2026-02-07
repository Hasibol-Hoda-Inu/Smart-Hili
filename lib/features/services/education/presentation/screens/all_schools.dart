import 'package:flutter/material.dart';

import '../../../../../application/app_colors.dart';
import '../../../hospital/presentation/widgets/hospital_card.dart';

class AllSchools extends StatefulWidget {
  const AllSchools({super.key});

  @override
  State<AllSchools> createState() => _AllSchoolsState();
}

class _AllSchoolsState extends State<AllSchools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text("স্কুল", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("স্কুল সমূহ", style: TextStyle(color: AppColors.themeColor, fontSize: 14),),
          ],
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              HospitalCard(title: 'ডলি মেমোরিয়াল স্কুল এন্ড কলেজ', ),
              HospitalCard(title: 'সবাংলা হিলি পাইলট স্কুল এন্ড কলেজ',),
            ],
          ),
        ),
      ),
    );
  }
}
