import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/Police/presentation/screens/police_details.dart';
import 'package:smart_hili/features/services/hospital/presentation/screens/all_health_services.dart';

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
  // We use 'static' so you can call it as ServiceCategoryData.serviceItems
  static final List<ServiceItem> serviceItems = [
    ServiceItem(
        title: "হাসপাতাল",
        icon: Icons.local_hospital,
        color: Colors.teal,
        destination: const AllHealthServices(),
    ),
    ServiceItem(title: "শিক্ষা প্রতিষ্ঠান", icon: Icons.school_rounded, color: Colors.blue),
    ServiceItem(title: "ব্যক্তিগত টিউটর", icon: Icons.menu_book, color: Colors.orange),
    ServiceItem(title: "ইন্টারনেট সার্ভিস(WiFi)", icon: Icons.wifi, color: Colors.indigo),
    ServiceItem(
        title: "পুলিশ স্টেশন",
        icon: Icons.shield_moon_rounded,
        color: Colors.teal,
        destination: const PoliceDetails(),
    ),
    ServiceItem(title: "ফায়ার সার্ভিস", icon: Icons.local_fire_department_rounded, color: Colors.redAccent),
    ServiceItem(title: "রেল টিকিট", icon: Icons.train_rounded, color: Colors.green),
    ServiceItem(title: "বাস টিকিট", icon: Icons.bus_alert_rounded, color: Colors.blueAccent),
  ];
}