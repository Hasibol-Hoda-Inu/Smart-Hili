import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/education/presentation/screens/school_details.dart';

import '../../../../../application/app_colors.dart';
import '../../../health/presentation/widgets/hospital_card.dart';

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
            Text(
              "স্কুল",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "স্কুল সমূহ",
              style: TextStyle(color: AppColors.themeColor, fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 12,
            children: [
              HospitalCard(
                title: 'ডলি মেমোরিয়াল স্কুল এন্ড কলেজ',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "বেসরকারি",
                    "ক্লাস ৬-১২",
                    "https://www.google.com/maps/place/Dolly+Memorial+School/@25.2891372,89.0087442,17z/data=!4m9!1m2!2m1!1smap!3m5!1s0x39fcbdfc9d7bebf7:0x6889786731d5ce06!8m2!3d25.2891369!4d89.0131815!16s%2Fg%2F11bw2htl7b?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              HospitalCard(
                title: 'ফেরদৌস আলী খান মডেল স্কুল & কলেজ',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "বেসরকারি",
                    "ক্লাস ৬-১০",
                    "https://www.google.com/maps/place/Ferdous+Ali+Khan+Model+School+%26+College/@25.2703169,89.0132099,17.95z/data=!4m6!3m5!1s0x39fc97defd186211:0xae85e2ff5ca9f870!8m2!3d25.2704281!4d89.0129964!16s%2Fg%2F11h_469x74?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              HospitalCard(
                title: 'বাংলা হিলি পাইলট স্কুল এন্ড কলেজ',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "সরকারি",
                    "ক্লাস ৬-১২",
                    "https://www.google.com/maps/place/Bangla+Hili+Pilot+School+And+College/@25.2831468,89.0137099,16.59z/data=!4m6!3m5!1s0x39fcbdfec163bc21:0x2cb732c11516ee7e!8m2!3d25.2826479!4d89.0138832!16s%2Fg%2F1tjmc1zh?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              HospitalCard(
                title: 'বাংলা হিলি সরকারি বালিকা উচ্চ বিদ্যালয়',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "সরকারি",
                    "ক্লাস ৬-১০",
                    "https://www.google.com/maps/place/Banglahili+Government+Girls+High+School/@25.2795898,89.0116976,18.41z/data=!4m6!3m5!1s0x39fc960267ceef7f:0x317bb5477ded1c1c!8m2!3d25.279136!4d89.0113109!16s%2Fg%2F11_qb_llz?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              HospitalCard(
                title: 'হিলি পাবলিক স্কুল',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "বেসরকারি",
                    "ক্লাস ৬-১০",
                    "https://www.google.com/maps/place/Hili+Public+School/@25.2847288,89.0117211,19.09z/data=!4m6!3m5!1s0x39fcbdf93e2ae7b5:0x2ab44035bf2a63df!8m2!3d25.28475!4d89.0119678!16s%2Fg%2F11c5_vs1yd?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              HospitalCard(
                title: 'এনকে রেসিডেনসিয়াল স্কুল',
                onTab: () {
                  _onTapDMSchl(
                    ["017", "019"],
                    "বেসরকারি",
                    "ক্লাস ৬-১০",
                    "https://www.google.com/maps/place/NK+Residential+School/@25.2847948,89.0121845,19.09z/data=!4m6!3m5!1s0x39fcbd5c3219eac7:0x6e70f5c6dc134a0e!8m2!3d25.2849758!4d89.0123748!16s%2Fg%2F11h4glx3xk?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapDMSchl(
    List<String> contactNmbr,
    String category,
    String level,
    String locationUrl,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          contactNmbrs: contactNmbr,
          category: category,
          level: level,
          locationUrl: locationUrl,
        ),
      ),
    );
  }
}
