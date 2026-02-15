import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/health/presentation/screens/dental_s_details.dart';

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
                _onTapDS(
                  "Dental Services",
                  [
                    "017",
                    "019",
                  ],
                  "নাসির উদ্দিন পাটোয়ারী",
                  "এক্সপোসিং আব্বাস",
                  "মার্কেটিং",
                  "৮+",
                  "৪.৯",
                  "১.২k+",
                  "https://cdn.banglatribune.net/contents/cache/images/640x358x1/uploads/media/2025/11/03/nasiruddin-patwari-7225fab6a449a8414c8dccae19c233a2.jpg?jadewits_media_id=999515",
                );
              },
              title: "Dental Services",

            ),
          ],
        ),
      ),
    );
  }

  void _onTapDS(String title, List<String> contactNmbrs, String name, String specialty, String degree, String experience, String rating, String patients, String imageUrl){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>
            DentalSDetails(
              title: title,
              contactNmbrs: contactNmbrs,
              name: name,
              specialty: specialty,
              degree: degree,
              experience: experience,
              rating: rating,
              imageUrl: imageUrl,
              patient: patients,
            )
        )
    );
  }
}
