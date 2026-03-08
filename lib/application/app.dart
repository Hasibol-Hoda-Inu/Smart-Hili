import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_hili/features/onboarding/presentation/screens/splash_screen.dart';

import 'app_theme_data.dart';


class SmartHili extends StatelessWidget {
  const SmartHili({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(432, 912),
      minTextAdapt: true,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.lightThemeData,
        darkTheme: AppThemeData.darkThemeData,
        themeMode: ThemeMode.light,

        home: const OnboardingScreen(),
      ),
    );
  }
}
