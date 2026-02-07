import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/education/presentation/screens/all_schools.dart';
import 'package:smart_hili/features/services/hospital/presentation/screens/diagnostic_centers.dart';

import '../../../../home/presentation/widgets/service_container.dart';
import '../../../Police/presentation/screens/police_details.dart';
import '../../../education/presentation/screens/all_college.dart';
import '../../../hospital/presentation/screens/hospital_details.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({super.key});

  @override
  State<AllServicesScreen> createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("সকল সেবাসমূহ", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("১. স্বাস্থ:", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              const SizedBox(height: 12,),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "হাসপাতাল",
                    icon: Icons.local_hospital,
                    color: Colors.redAccent,
                    onTap: _onTapH,
                  ),
                  ServiceContainer(
                    title: "ডায়াগনস্টিক সেন্টার",
                    icon: Icons.biotech_rounded,
                    color: Colors.blueGrey,
                    onTap: _onTapD,
                  ),
                  const ServiceContainer(
                    title: "ডেন্টাল",
                    icon: Icons.medical_services_rounded,
                    color: Colors.teal,
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              const Text("২. শিক্ষা", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "স্কুল",
                    icon: Icons.school,
                    color: Colors.blue,
                    onTap: _onTapSchls,
                  ),
                  ServiceContainer(
                    title: "কলেজ",
                    icon: Icons.account_balance,
                    color: Colors.indigo,
                    onTap: _onTapClgs,
                  ),
                  const ServiceContainer(
                    title: "টিউশনি",
                    icon: Icons.menu_book,
                    color: Colors.teal,
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              const Text("৩. ইলেকট্রিসিটি ও ওয়াইফাই", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              const Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "ইলেকট্রিসিটি",
                    icon: Icons.electric_bolt_rounded,
                    color: Colors.lightBlueAccent,
                  ),
                  ServiceContainer(
                    title: "ওয়াইফাই",
                    icon: Icons.wifi,
                    color: Colors.indigo,
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              const Text("৪. টিকিট", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              const Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "বাস",
                    icon: Icons.car_crash_rounded,
                    color: Colors.blueAccent,
                  ),
                  ServiceContainer(
                    title: "ট্রেন",
                    icon: Icons.train_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              const Text("৫. নিরাপত্তা", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "পুলিশ",
                    icon: Icons.shield_moon_rounded,
                    color: Colors.teal,
                    onTap: _onTapP,
                  ),
                  const ServiceContainer(
                    title: "ফায়ার সার্ভিস",
                    icon: Icons.local_fire_department_rounded,
                    color: Colors.redAccent,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
  void _onTapH(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HospitalDetails()));
  }
  void _onTapP(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PoliceDetails()));
  }
  void _onTapD(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DiagnosticCenters()));
  }
  void _onTapSchls(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllSchools()));
  }
  void _onTapClgs(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllCollege()));
  }
}
