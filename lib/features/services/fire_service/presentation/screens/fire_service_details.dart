import 'package:flutter/material.dart';
import 'package:smart_hili/application/app_content.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/contact_info.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/description_card.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/school_location.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/service_ds_banner.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/styled_title.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/providing_s_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class FireServiceDetails extends StatefulWidget {
  final String locationUrl;

  const FireServiceDetails({super.key, required this.locationUrl});

  @override
  State<FireServiceDetails> createState() => _FireServiceDetailsState();
}

class _FireServiceDetailsState extends State<FireServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("সেবা বিস্তারিত"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ServiceDSBanner(title: 'হিলি ফায়ার সার্ভিস স্টেশন'),
              const SizedBox(height: 20),

              const StyledTitle(title: "যোগাযোগ নম্বর"),
              const SizedBox(height: 10),
              ContactInfo(
                title: 'Fire-Service',
                number: '+880 1901-023273',
                icon: Icons.security,
                color: Colors.blueAccent,
                onTap: (){},
              ),

              const SizedBox(height: 20),
              const StyledTitle(title: "প্রদানকৃত সেবাসমূহ"),
              const SizedBox(height: 10),
              ProvidingServiceGrid(
                items: [
                  ServiceType(
                    title: "আগুন নেভানো",
                    icon: Icons.fire_extinguisher,
                    color: Colors.redAccent,
                  ),
                  ServiceType(
                    title: "দুর্ঘটনা উদ্ধার",
                    icon: Icons.traffic,
                    color: Colors.orangeAccent,
                  ),
                  ServiceType(
                    title: "সতর্কতা ও পরামর্শ",
                    icon: Icons.wifi_protected_setup,
                    color: Colors.green,
                  ),
                  
                ],
              ),

              const SizedBox(height: 20),
              const StyledTitle(title: "বর্ণনা"),
              const SizedBox(height: 10),
              DescriptionCard(description: AppContent.fireSDescription),
              const SizedBox(height: 20),

              SchoolLocationWidget(
                address:
                    "হিলি স্থলবন্দর ফায়ার সার্ভিস স্টেশন, ডাঙ্গাপাড়া, বাংলাহিলি, Hakimpur 5270",
                onOpenMap: () => _launchGMUrl(Uri.parse(widget.locationUrl)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchGMUrl(Uri url) async {
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw Exception('❌ Could not launch $url');
      }
    } catch (e) {
      debugPrint('❌ Error: $e');
    }
  }
}
