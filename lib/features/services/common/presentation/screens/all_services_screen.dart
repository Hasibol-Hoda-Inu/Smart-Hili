import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_hili/features/services/common/presentation/const/location_urls.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/providing_s_grid.dart';
import 'package:smart_hili/features/services/education/presentation/screens/all_schools.dart';
import 'package:smart_hili/features/services/electricity/presentation/screens/electricity_details.dart';
import 'package:smart_hili/features/services/fire_service/presentation/screens/fire_service_details.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/all_bus.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/train_details.dart';
import 'package:smart_hili/features/services/wifi/presentation/screens/wifi_details.dart';

import '../../../../home/presentation/widgets/service_container.dart';
import '../../../police/presentation/screens/police_details.dart';
import '../../../education/presentation/screens/all_college.dart';
import '../../../health/presentation/screens/all_dental_services.dart';
import '../../../health/presentation/screens/diagnostic_centers.dart';
import '../../../health/presentation/screens/hospital_details.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({super.key});

  @override
  State<AllServicesScreen> createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "সকল সেবাসমূহ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "১. স্বাস্থ:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              SizedBox(height: 12.h),
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children: [
                  ServiceContainer(
                    title: "হাসপাতাল",
                    icon: Icons.local_hospital,
                    color: Colors.redAccent,
                    onTap: _onTapH,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "ডায়াগনস্টিক সেন্টার",
                    icon: Icons.biotech_rounded,
                    color: Colors.blueGrey,
                    onTap: _onTapD,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "ডেন্টাল",
                    icon: Icons.medical_services_rounded,
                    color: Colors.teal,
                    onTap: _onTapDS,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "২. শিক্ষা",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children: [
                  ServiceContainer(
                    title: "স্কুল",
                    icon: Icons.school,
                    color: Colors.blue,
                    onTap: _onTapSchls,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "কলেজ",
                    icon: Icons.account_balance,
                    color: Colors.indigo,
                    onTap: _onTapClgs,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "টিউশনি",
                    icon: Icons.menu_book,
                    color: Colors.teal,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Text(
                "৩. ইলেকট্রিসিটি ও ওয়াইফাই",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children: [
                 ServiceContainer(
                    title: "ইলেকট্রিসিটি",
                    icon: Icons.electric_bolt_rounded,
                    color: Colors.lightBlueAccent,
                    onTap: _onTapElectricity,
                   screenWidth: screenWidth,
                   screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "ওয়াইফাই",
                    icon: Icons.wifi,
                    color: Colors.indigo,
                    onTap: _onTapWifi,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Text(
                "৪. টিকিট",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              Wrap(
                spacing: 16.h,
                runSpacing: 16.w,
                children: [
                  ServiceContainer(
                    title: "বাস",
                    icon: Icons.car_crash_rounded,
                    color: Colors.blueAccent,
                    onTap: _onTapBus,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "ট্রেন",
                    icon: Icons.train_rounded,
                    color: Colors.green,
                    onTap: _onTapTrain,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Text(
                "৫. নিরাপত্তা",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children: [
                  ServiceContainer(
                    title: "পুলিশ",
                    icon: Icons.shield_moon_rounded,
                    color: Colors.teal,
                    onTap: _onTapP,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  ServiceContainer(
                    title: "ফায়ার সার্ভিস",
                    icon: Icons.local_fire_department_rounded,
                    color: Colors.redAccent,
                    onTap: _onTapfire,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapH() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HospitalDetails()),
    );
  }

  void _onTapP() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const PoliceDetails(locationUrl: LocationUrls.policeStation),
      ),
    );
  }

  void _onTapD() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DiagnosticCenters()),
    );
  }

  void _onTapSchls() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllSchools()),
    );
  }

  void _onTapClgs() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllCollege()),
    );
  }

  void _onTapDS() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllDentalServices()),
    );
  }

  void _onTapBus() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllBus()),
    );
  }

  void _onTapTrain() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const TrainDetails(locationUrl: LocationUrls.trainStation),
      ),
    );
  }

  void _onTapfire() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const FireServiceDetails(locationUrl: LocationUrls.fireStation),
      ),
    );
  }

  void _onTapWifi() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WifiDetails(
          locationUrl: LocationUrls.wifiStation,
          address: 'সিপি রোড হাকিমপুর',
          providerName: 'ফ্রেন্ডস ব্রডব্যান্ড নেটওয়ার্ক',
          contactNumbers: const ["019487", "0176543210"],
          items: [
            ServiceType(
              title: "ইন্টারনেট প্যাকেজ",
              icon: Icons.wifi,
              color: Colors.blueAccent,
            ),

            ServiceType(
              title: "গ্রাহক সেবা",
              icon: Icons.support_agent,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
  
  void _onTapElectricity() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ElectricityDetails(
          address: 'মধ্যবাসুদেবপুর (উপজেলা পরিষদ সংলগ্ন), বাংলাহিলি, Hakimpur 5270',
          locationUrl: LocationUrls.electricityStation,
          providerName: 'পল্লী বিদ্যুৎ অফিস',
          contactNumbers: const ["019487", "0176543210"],
          items: [
            ServiceType(
              title: "ইন্টারনেট প্যাকেজ",
              icon: Icons.wifi,
              color: Colors.blueAccent,
            ),

            ServiceType(
              title: "গ্রাহক সেবা",
              icon: Icons.support_agent,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );

  }
}
