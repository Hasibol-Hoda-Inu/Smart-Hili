import 'package:flutter/material.dart';
import 'package:smart_hili/features/home/presentation/widgets/carousel_slider.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/school_location.dart';
import 'package:smart_hili/features/services/common/presentation/widgets/styled_title.dart';
import 'package:smart_hili/features/services/ticket/presentation/widgets/train_stopping_time_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainDetails extends StatefulWidget {
  final String locationUrl;

  const TrainDetails({
    super.key, 
    required this.locationUrl,
    });

  @override
  State<TrainDetails> createState() => _TrainDetailsState();
}

class _TrainDetailsState extends State<TrainDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "ট্রেন",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "ট্রেন সমূহ",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        child: Column(
          children: [
            const CarouselSliderWidget(),
            const SizedBox(height: 20),

            const StyledTitle(title: "ট্রেন থামার সময়সূচি"),
            const SizedBox(height: 10),
            const TrainStoppingTimeWidget(),
            const SizedBox(height: 20),

            SchoolLocationWidget(
              address: "অবস্থান ও মানচিত্র", 
              onOpenMap: ()=> _launchGMUrl(Uri.parse(widget.locationUrl)),
            ),
          ],
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

}