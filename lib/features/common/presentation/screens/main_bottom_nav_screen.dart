import 'package:flutter/material.dart';
import 'package:smart_hili/features/gallery/presentation/screens/gallery.dart';
import 'package:smart_hili/features/services/common/presentation/screens/all_services_screen.dart';
import 'package:smart_hili/features/sos/presentation/screens/emargency_service_sos.dart';

import '../../../home/presentation/screens/home_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screens =  [
    const HomeScreen(),
    const AllServicesScreen(),
    const Gallery(),
    const EmergencyServiceSos(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'হোম'),
          NavigationDestination(
              icon: Icon(Icons.dashboard),
              label: 'সেবা সমূহ',
          ),
          NavigationDestination(icon: Icon(Icons.photo_library), label: 'গ্যালারি'),
          NavigationDestination(icon: Icon(Icons.warning_rounded), label: 'জরুরী'),
        ],
    )
    );
  }
}
