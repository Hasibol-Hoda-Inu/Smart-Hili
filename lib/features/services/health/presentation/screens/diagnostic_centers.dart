import 'package:flutter/material.dart';

import '../../../../../application/app_colors.dart';
import '../../data/doctors_info_data_class.dart';
import '../widgets/hospital_card.dart';
import 'diagnostic_centers_details.dart';

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
              HospitalCard(
                  title: 'লাইফ কিওর ডায়াগনস্টিক সেন্টার',
                  onTab: (){
                    _onTapDS(
                        "লাইফ কিওর ডায়াগনস্টিক সেন্টার",
                        [
                          "01708-612461",
                          "01785-728276",
                        ],
                        "Description",
                      lcDoctors,
                    );
                  }
                  ),
              HospitalCard(
                title: 'সেবা ডায়াগনস্টিক সেন্টার',
                onTab: () {
                  _onTapDS("সেবা ডায়াগনস্টিক সেন্টার", ["contactNmbr"], "description", SebaDoctors);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapDS(String title, List<String> contactNmbrs, String description, List<Doctor> doctors){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>
            DiagnosticCentersDetails(
              title: title,
              description: description,
              contactNmbrs: contactNmbrs,
              doctors: doctors,
            )
        )
    );
  }

  final List<Doctor> lcDoctors = [
    Doctor(name: 'ডাঃ মাহাদী হাসান', specialization: 'মেডিসিন বিশেষজ্ঞ', visitingTime: 'বিকাল ৫টা - রাত ৯টা'),
    Doctor(name: 'ডাঃ নুসরাত জাহান', specialization: 'চর্ম ও যৌন রোগ বিশেষজ্ঞ', visitingTime: 'সকাল ১০টা - দুপুর ১টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
  ];
  final List<Doctor> SebaDoctors = [
    Doctor(name: 'ডাঃ মাহাদী হাসান', specialization: 'মেডিসিন বিশেষজ্ঞ', visitingTime: 'বিকাল ৫টা - রাত ৯টা'),
    Doctor(name: 'ডাঃ নুসরাত জাহান', specialization: 'চর্ম ও যৌন রোগ বিশেষজ্ঞ', visitingTime: 'সকাল ১০টা - দুপুর ১টা'),
    Doctor(name: 'ডাঃ আরিফ আহমেদ', specialization: 'হৃদরোগ বিশেষজ্ঞ', visitingTime: 'সন্ধ্যা ৬টা - রাত ১০টা'),
  ];
}
