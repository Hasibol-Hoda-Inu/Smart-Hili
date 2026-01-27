import 'package:flutter/material.dart';

class ServiceItem {
  final String title;
  final IconData icon;
  final Color color;

  ServiceItem({
    required this.title,
    required this.icon,
    required this.color,
  });
}

class ServiceCategoryData {
  // We use 'static' so you can call it as ServiceCategoryData.serviceItems
  static final List<ServiceItem> serviceItems = [
    ServiceItem(title: "হাসপাতাল", icon: Icons.local_hospital, color: Colors.teal),
    ServiceItem(title: "শিক্ষা প্রতিষ্ঠান", icon: Icons.school_rounded, color: Colors.blue),
    ServiceItem(title: "ব্যক্তিগত টিউটর", icon: Icons.menu_book, color: Colors.orange),
    ServiceItem(title: "ইন্টারনেট সার্ভিস(WiFi)", icon: Icons.wifi, color: Colors.indigo),
    ServiceItem(title: "পুলিশ স্টেশন", icon: Icons.shield_moon_rounded, color: Colors.teal),
    ServiceItem(title: "ফায়ার সার্ভিস", icon: Icons.local_fire_department_rounded, color: Colors.redAccent),
    ServiceItem(title: "রেল টিকিট", icon: Icons.train_rounded, color: Colors.green),
    ServiceItem(title: "বাস টিকিট", icon: Icons.bus_alert_rounded, color: Colors.blueAccent),
  ];
}