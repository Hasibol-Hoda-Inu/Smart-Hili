import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/hospital/presentation/screens/life_cure_d_c.dart';
import 'package:smart_hili/features/services/hospital/presentation/widgets/hospital_card.dart';

import '../../../../../application/app_colors.dart';

class DiagnosticCenters extends StatefulWidget {
  const DiagnosticCenters({super.key});

  @override
  State<DiagnosticCenters> createState() => _DiagnosticCentersState();
}

class _DiagnosticCentersState extends State<DiagnosticCenters> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              HospitalCard(title: 'লাইফ কিওর ডায়াগনস্টিক সেন্টার', onTab: _onTapLCDC),
              HospitalCard(title: 'সেবা ডায়াগনস্টিক সেন্টার', onTab: _onTapSebaDC,),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapLCDC(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LifeCureDC()));
  }
  void _onTapSebaDC(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LifeCureDC()));
  }
}
