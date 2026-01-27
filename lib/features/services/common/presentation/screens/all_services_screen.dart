import 'package:flutter/material.dart';

import '../../../../home/data/service_category_data_model.dart';
import '../../../../home/presentation/widgets/service_container.dart';

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
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("১. স্বাস্থ:", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              SizedBox(height: 12,),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ServiceContainer(
                    title: "হাসপাতাল",
                    icon: Icons.local_hospital,
                    color: Colors.redAccent,
                  ),
                  ServiceContainer(
                    title: "ডায়াগনস্টিক সেন্টার",
                    icon: Icons.biotech_rounded,
                    color: Colors.blueGrey,
                  ),
                  ServiceContainer(
                    title: "ডেন্টাল",
                    icon: Icons.medical_services_rounded,
                    color: Colors.teal,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text("২. শিক্ষা", style: TextStyle(
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
                  ),
                  ServiceContainer(
                    title: "কলেজ",
                    icon: Icons.account_balance,
                    color: Colors.indigo,
                  ),
                  ServiceContainer(
                    title: "টিউশনি",
                    icon: Icons.menu_book,
                    color: Colors.teal,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text("৩. ইলেকট্রিসিটি ও ওয়াইফাই", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              Wrap(
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
              SizedBox(height: 24,),
              Text("৪. টিকিট", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              Wrap(
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
              SizedBox(height: 24,),
              Text("৫. নিরাপত্তা", style: TextStyle(
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
                  ),
                  ServiceContainer(
                    title: "ফায়ার সার্ভিস",
                    icon: Icons.local_fire_department_rounded,
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
