import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/school_location.dart';
import 'package:smart_hili/features/services/education/presentation/widgets/school_status.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../application/app_colors.dart';
import '../../../../home/presentation/widgets/carousel_slider.dart';
import '../../../common/presentation/widgets/contact_info.dart';
import '../../../common/presentation/widgets/styled_title.dart';

class DetailsScreen extends StatefulWidget {
  final List<String> contactNmbrs;
  final String category;
  final String level;
  final String locationUrl;

  const DetailsScreen({
    super.key,
    required this.contactNmbrs,
    required this.category,
    required this.level,
    required this.locationUrl,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
        title: const Text("স্কুল বিস্তারিত"),
        centerTitle: true,
        backgroundColor: AppColors.wbgColor,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CarouselSliderWidget(),
              const SizedBox(height: 10),
              SchoolStatusWidget(
                category: widget.category,
                level: widget.level,
              ),
              const SizedBox(height: 20),
              const StyledTitle(title: "যোগাযোগের নম্বর"),
              const SizedBox(height: 10),
              Column(
                children: widget.contactNmbrs.map((number) {
                  return ContactInfo(
                    title: 'যোগাযোগের জন্য',
                    number: number,
                    icon: Icons.event_available,
                    color: Colors.teal,
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const StyledTitle(title: "অবস্থান ও মানচিত্র"),
              const SizedBox(height: 10),
              SchoolLocationWidget(
                address: "অবস্থান ও মানচিত্র",
                onOpenMap: () {
                  _launchUrl(Uri.parse(widget.locationUrl));
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _launchUrl(Uri url) async {
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw Exception('❌ Could not launch $url');
      }
    } catch (e) {
      debugPrint('❌ Error: $e');
    }
  }
}
