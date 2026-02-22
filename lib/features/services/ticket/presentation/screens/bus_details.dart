import 'package:flutter/material.dart';
import 'package:smart_hili/features/home/presentation/widgets/carousel_slider.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/contact_info.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/school_location.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/styled_title.dart';
import 'package:url_launcher/url_launcher.dart';

class BusDetails extends StatefulWidget {
  final List<String> contactNmbrs;
  final String locationUrl;
  final String? ticketBookingUrl;

  const BusDetails({
    super.key,
    required this.contactNmbrs, 
    required this.locationUrl,
    this.ticketBookingUrl,
    }
  );

  @override
  State<BusDetails> createState() => _BusDetailsState();
}

class _BusDetailsState extends State<BusDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "বাস",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "বাসের বিস্তারিত তথ্য",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CarouselSliderWidget(),
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
                      onTap: (){},
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
               
               if(widget.ticketBookingUrl != null) SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    onPressed: ()=> _launchTBUrl(Uri.parse(widget.ticketBookingUrl!)),
                    icon: const Icon(Icons.bookmark_border_outlined,),
                    label: const Text(
                      "টিকেট বুক করুন", 
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                  ),
                ),

                const SizedBox(height: 20),
                const StyledTitle(title: "অবস্থান ও মানচিত্র"),
                const SizedBox(height: 10),
                SchoolLocationWidget(
                  address: "অবস্থান ও মানচিত্র",
                  onOpenMap: () {
                    _launchGMUrl(Uri.parse(widget.locationUrl));
                  },
                ),
                const SizedBox(height: 20),
            ],
          ),
        )
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
 
  Future<void> _launchTBUrl(Uri url) async {
    try {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw Exception('❌ Could not launch $url');
      }
    } catch (e) {
      debugPrint('❌ Error: $e');
    }
  }
  
}