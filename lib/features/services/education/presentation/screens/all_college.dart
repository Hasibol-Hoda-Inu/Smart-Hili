import 'package:flutter/material.dart';

import '../../../../../application/app_colors.dart';
import '../../../health/presentation/widgets/hospital_card.dart';

class AllCollege extends StatefulWidget {
  const AllCollege({super.key});

  @override
  State<AllCollege> createState() => _AllCollegeState();
}

class _AllCollegeState extends State<AllCollege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text("স্বাস্থ্য সেবা", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("ডায়াগনস্টিক সেন্টার সমূহ", style: TextStyle(color: AppColors.themeColor, fontSize: 14),),
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
              HospitalCard(title: 'লাইফ কিওর ডায়াগনস্টিক সেন্টার', ),
              HospitalCard(title: 'সেবা ডায়াগনস্টিক সেন্টার',),
            ],
          ),
        ),
      ),
    );
  }
}
