import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/contact_info.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/providing_s_grid.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/school_location.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/service_ds_banner.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/styled_title.dart';
import 'package:url_launcher/url_launcher.dart';

class ElectricityDetails extends StatefulWidget {
  final String address;
  final String locationUrl;
  final String providerName;
  final List<String> contactNumbers;
  final List<ServiceType> items;

  const ElectricityDetails({
    super.key,
    required this.address,
    required this.locationUrl,
    required this.providerName,
    required this.contactNumbers,
    required this.items,
  });

  @override
  State<ElectricityDetails> createState() => _ElectricityDetailsState();
}

class _ElectricityDetailsState extends State<ElectricityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("সেবা বিস্তারিত"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceDSBanner(title: widget.providerName),
              const SizedBox(height: 20),

              const StyledTitle(title: "যোগাযোগ নম্বর"),
              const SizedBox(height: 10),
              Column(
                children: widget.contactNumbers.map((number) {
                  return ContactInfo(
                    title: 'যোগাযোগের জন্য',
                    number: number,
                    icon: Icons.event_available,
                    color: Colors.teal,
                    onTap: (){},
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              const StyledTitle(title: "সেবা সম্পর্কিত তথ্য"),
              const SizedBox(height: 10),
              ProvidingServiceGrid(items: widget.items),
              const SizedBox(height: 20),

              SchoolLocationWidget(
                address: widget.address,
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
