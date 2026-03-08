import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/doc_profile_header.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/facility_gallery.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/providing_s_grid.dart';

import '../../../../../application/app_colors.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/styled_title.dart';

class DentalSDetails extends StatefulWidget {

  final String title;
  final List<String> contactNmbrs;
  final String name;
  final String specialty;
  final String degree;
  final String experience;
  final String rating;
  final String patient;
  final String imageUrl;
  final List<ServiceType> items;

  const DentalSDetails({
    super.key,
    required this.title,
    required this.contactNmbrs,
    required this.name,
    required this.specialty,
    required this.degree,
    required this.experience,
    required this.rating,
    required this.imageUrl,
    required this.patient,
    required this.items,
  });

  @override
  State<DentalSDetails> createState() => _DentalSDetailsState();
}

class _DentalSDetailsState extends State<DentalSDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Text("চেম্বার বিস্তারিত"),
        centerTitle: true,
        backgroundColor: AppColors.wbgColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DoctorProfileHeader(
                name: widget.name,
                specialty: widget.specialty,
                degree: widget.degree,
                experience: widget.experience,
                rating: widget.rating,
                patients: widget.patient,
                imageUrl: widget.imageUrl,
              ),
              SizedBox(height: 8.h,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_time_filled, size: 18, color: Colors.green.shade700),
                    SizedBox(width: 8.w),
                    Text(
                      "শনি - বৃহস্পতি: বিকাল ৪:০০ - রাত ৯:০০",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
             
              const StyledTitle(title: "যোগাযোগ নম্বর",),
              SizedBox(height: 10.h,),
              Column(
                  children: widget.contactNmbrs.map((number){
                    return ContactInfo(
                      title: 'সিরিয়ালের জন্য',
                      number: number,
                      icon: Icons.event_available,
                      color: Colors.teal,
                      onTap: (){},
                    );
                  }).toList()
              ),
              SizedBox(height: 20.h,),

              const StyledTitle(title: "ট্রিটমেন্টস",),
              SizedBox(height: 10.h,),
              ProvidingServiceGrid(items: widget.items),

              SizedBox(height: 20.h,),
              const StyledTitle(title: "ফ্যাসিলিটি ছবিসমূহ"),
              SizedBox(height: 10.h,),
              const FacilityGallery(images: [
                "https://eclipse-dental.com/wp-content/uploads/2024/12/Dental-equipment-essentials-for-your-modern-practice.jpg",
                "https://verainterior.com/wp-content/uploads/2024/05/Dental-Clinic-Interior-Design-jpg.webp",
                "https://ameldental.com/wp-content/uploads/2020/06/02-min-scaled-e1592552627573.jpg",
                "https://images.stockcake.com/public/c/6/e/c6e4f250-b538-4ab8-95ff-c02038e1e6c1_large/dental-office-interior-stockcake.jpg",
              ]),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
