import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../application/app_colors.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/description_card.dart';
import '../../../common/presentation/widgets/service_ds_banner.dart';
import '../../../common/presentation/widgets/styled_title.dart';
import '../../data/doctors_info_data_model.dart';
import '../widgets/doctors_info.dart';

class DiagnosticCentersDetails extends StatefulWidget {
  final String title;
  final List<String> contactNmbrs;
  final String description;
  final List<Doctor> doctors;

  const DiagnosticCentersDetails({
    super.key,
    required this.title,
    required this.contactNmbrs,
    required this.description,
    required this.doctors,
  });

  @override
  State<DiagnosticCentersDetails> createState() => _DiagnosticCentersDetailsState();
}

class _DiagnosticCentersDetailsState extends State<DiagnosticCentersDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Text("সেবা বিস্তারিত"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceDSBanner(title: widget.title,),
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

              const StyledTitle(title: "Doctors"),
              SizedBox(height: 10.h,),
              _buildDoctorList(),
              SizedBox(height: 20.h,),

              const StyledTitle(title: "বর্ণনা"),
              SizedBox(height: 10.h,),
              DescriptionCard(description: widget.description,),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: widget.doctors.length,
      itemBuilder: (context, index) {
        final doctor = widget.doctors[index];
        return DoctorInfoCard(
          name: doctor.name,
          specialization: doctor.specialization,
          visitingTime: doctor.visitingTime,
        );
      },
    );
  }
}
