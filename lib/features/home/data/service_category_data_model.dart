import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/education/presentation/screens/all_schools.dart';
import 'package:smart_hili/features/services/fire_service/presentation/screens/fire_service_details.dart';
import 'package:smart_hili/features/services/police/presentation/screens/police_details.dart';
import 'package:smart_hili/features/services/common/presentation/const/location_urls.dart';
import 'package:smart_hili/features/services/health/presentation/screens/hospital_details.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/all_bus.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/bus_details.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/train_details.dart';
import 'package:smart_hili/features/services/wifi/presentation/screens/wifi_details.dart';

import '../../services/common/presentation/widgets/providing_s_grid.dart';

class ServiceItem {
  final String title;
  final IconData icon;
  final Color color;
  final Widget? destination;

  ServiceItem({
    required this.title,
    required this.icon,
    required this.color,
    this.destination,
  });
}

class ServiceCategoryData {
  static final List<ServiceItem> serviceItems = [
    ServiceItem(
      title: "হাসপাতাল",
      icon: Icons.local_hospital,
      color: Colors.teal,
      destination: const HospitalDetails(),
    ),
    ServiceItem(
      title: "শিক্ষা প্রতিষ্ঠান",
      icon: Icons.school_rounded,
      color: Colors.blue,
      destination: const AllSchools(),
    ),
    ServiceItem(
      title: "ব্যক্তিগত টিউটর",
      icon: Icons.menu_book,
      color: Colors.orange,
    ),
    ServiceItem(
      title: "ইন্টারনেট সার্ভিস(WiFi)",
      icon: Icons.wifi,
      color: Colors.indigo,
      destination: WifiDetails(
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
    ServiceItem(
      title: "পুলিশ স্টেশন",
      icon: Icons.shield_moon_rounded,
      color: Colors.teal,
      destination: const PoliceDetails(locationUrl: LocationUrls.policeStation),
    ),
    ServiceItem(
      title: "ফায়ার সার্ভিস",
      icon: Icons.local_fire_department_rounded,
      color: Colors.redAccent,
      destination: const FireServiceDetails(
        locationUrl: LocationUrls.fireStation,
      ),
    ),
    ServiceItem(
      title: "রেল টিকিট",
      icon: Icons.train_rounded,
      color: Colors.green,
      destination: const TrainDetails(locationUrl: LocationUrls.trainStation),
    ),
    ServiceItem(
      title: "বাস টিকিট",
      icon: Icons.bus_alert_rounded,
      color: Colors.blueAccent,
      destination: const AllBus(),
    ),
  ];
}
