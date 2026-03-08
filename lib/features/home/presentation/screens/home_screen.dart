import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
        backgroundColor: AppColors.wbgColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0F2F1), // Light teal background
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, size: 18.sp, color: const Color(0xFF00695C)),
                      SizedBox(width: 4.w),
                      const Text(
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
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            const CarouselSliderWidget(),
            SizedBox(height: 20.h,),
            Text("জনপ্রিয় সেবা সমূহ", style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10.h,),
            GridView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.9.h,
                ),
                itemCount: ServiceCategoryData.serviceItems.length,
                itemBuilder: (context, index) {
                  final item = ServiceCategoryData.serviceItems[index];
                  return ServiceContainer(
                    title: item.title,
                    icon: item.icon,
                    color: item.color,
                    onTap: ()=> _onNavigate(item.destination),
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  );
                }
            ),
            SizedBox(height: 10.h,),
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


