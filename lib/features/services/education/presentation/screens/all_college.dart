import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/education/presentation/screens/school_details.dart';

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
            Text(
              "কলেজ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "কলেজ সমূহ",
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
                title: 'হাকিমপুর সরকারি ডিগ্রী কলেজ',
                onTab: () {
                  _onTap(
                    const ["017", "019"],
                    "সরকারি",
                    "১১-১২ ও ডিগ্রি",
                    "https://www.google.com/maps/place/Hakimpur+Government+Degree+College/@25.2841236,89.0131767,17.95z/data=!4m6!3m5!1s0x39fcbdf93bdc6bb1:0x720f73c609ece7db!8m2!3d25.2845154!4d89.0123463!16s%2Fg%2F11xh8zzkv?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                  );
                },

              ),
              HospitalCard(
                title: 'হাকিমপুর মহিলা ডিগ্রি কলেজ',
                onTab: (){
                  _onTap(
                    const ["017", "019"],
                   "সরকারি", 
                   "১১-১২ ও ডিগ্রি", 
                   "https://www.google.com/maps/place/Hakimpur+Women's+Degree+College/@25.2692083,89.013374,17.27z/data=!4m6!3m5!1s0x39fc960f4d83de11:0x2c4df2b92b33ac6f!8m2!3d25.2681682!4d89.0129445!16s%2Fg%2F11x9t04y1?entry=ttu&g_ep=EgoyMDI2MDIxMS4wIKXMDSoASAFQAw%3D%3D",
                   );
                },
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(
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
