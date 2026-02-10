import 'package:flutter/material.dart';

import '../../../../../application/app_colors.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/description_card.dart';
import '../../../common/presentation/widgets/service_ds_banner.dart';
import '../../../common/presentation/widgets/styled_title.dart';
import '../../data/doctors_info_data_class.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceDSBanner(title: widget.title,),
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
              const SizedBox(height: 12,),

              const SizedBox(height: 20,),

              const StyledTitle(title: "Doctors"),
              const SizedBox(height: 10,),
              _buildDoctorList(),
              const SizedBox(height: 20,),

              const StyledTitle(title: "বর্ণনা"),
              const SizedBox(height: 10,),
              DescriptionCard(description: widget.description,),
              const SizedBox(height: 20,),
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
