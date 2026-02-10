import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_hili/features/home/data/service_category_data_model.dart';
import 'package:smart_hili/features/home/presentation/widgets/carousel_slider.dart';

import '../../../../application/app_colors.dart';
import '../widgets/service_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _getBanglaDate(){
    final now = DateTime.now();
    return DateFormat("d MMMM", "bn").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('স্বাগতম', style: TextStyle(color: Colors.grey, fontSize: 14),),
            Text('সিটি সেবা', style: TextStyle(color: AppColors.themeColor, fontSize: 28, fontWeight: FontWeight.bold),),
          ],
        ),
        actions: [
          IconButton.filledTonal(
              onPressed: (){},
              icon: const Icon(
                Icons.add,
                color: AppColors.themeColor,
              )),
          const SizedBox(width: 18,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0F2F1), // Light teal background
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.location_on, size: 18, color: Color(0xFF00695C)),
                      SizedBox(width: 4),
                      Text(
                        "বাংলা হিলি, হাকিমপুর, দিনাজপুর",
                        style: TextStyle(
                          color: Color(0xFF00695C), // Dark teal text
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "আজ, ${_getBanglaDate()}",
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const CarouselSliderWidget(),
            const SizedBox(height: 20,),
            const Text("জনপ্রিয় সেবা সমূহ", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: ServiceCategoryData.serviceItems.length,
                  itemBuilder: (context, index) {
                    final item = ServiceCategoryData.serviceItems[index];
                    return ServiceContainer(
                      title: item.title,
                      icon: item.icon,
                      color: item.color,
                      onTap: ()=> _onNavigate(item.destination),
                    );
                  }
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  void _onNavigate(Widget? screen){
    Navigator.push(context,
      MaterialPageRoute(builder: (context)=>screen ?? const SizedBox.shrink()),);
  }
}


