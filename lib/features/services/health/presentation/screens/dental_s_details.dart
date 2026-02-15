import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/doc_profile_header.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/facility_gallery.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/treatment_grid.dart';

import '../../../../../application/app_colors.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/description_card.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              const SizedBox(height: 8,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_time_filled, size: 18, color: Colors.green.shade700),
                    const SizedBox(width: 8),
                    Text(
                      "শনি - বৃহস্পতি: বিকাল ৪:০০ - রাত ৯:০০",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const StyledTitle(title: "যোগাযোগ নম্বর",),
              const SizedBox(height: 10,),
              Column(
                  children: widget.contactNmbrs.map((number){
                    return ContactInfo(
                      title: 'সিরিয়ালের জন্য',
                      number: number,
                      icon: Icons.event_available,
                      color: Colors.teal,
                    );
                  }).toList()
              ),
              const SizedBox(height: 20,),
              const StyledTitle(title: "ট্রিটমেন্টস",),
              const SizedBox(height: 10,),
              const TreatmentGrid(),
              const SizedBox(height: 20,),
              const StyledTitle(title: "ফ্যাসিলিটি ছবিসমূহ"),
              const SizedBox(height: 10,),
              const FacilityGallery(images: [
                "https://eclipse-dental.com/wp-content/uploads/2024/12/Dental-equipment-essentials-for-your-modern-practice.jpg",
                "https://verainterior.com/wp-content/uploads/2024/05/Dental-Clinic-Interior-Design-jpg.webp",
                "https://ameldental.com/wp-content/uploads/2020/06/02-min-scaled-e1592552627573.jpg",
                "https://images.stockcake.com/public/c/6/e/c6e4f250-b538-4ab8-95ff-c02038e1e6c1_large/dental-office-interior-stockcake.jpg",
              ]),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
