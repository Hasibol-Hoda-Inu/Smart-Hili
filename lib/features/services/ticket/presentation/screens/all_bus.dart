import 'package:flutter/material.dart';
import 'package:smart_hili/features/services/common/presentation/const/location_urls.dart';
import 'package:smart_hili/features/services/health/presentation/widgets/hospital_card.dart';
import 'package:smart_hili/features/services/ticket/presentation/screens/bus_details.dart';

class AllBus extends StatefulWidget {
  const AllBus({super.key});

  @override
  State<AllBus> createState() => _AllBusState();
}

class _AllBusState extends State<AllBus> {
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
              "বাস সমূহ",
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
            spacing: 12,
            children: [
              HospitalCard(
                title: "এস. আর. ট্রাভেলস",
                onTab: () => _onTap(
                  ["01712345678", "01812345678"],
                  LocationUrls.srUrl,
                  LocationUrls.ticketBookingUrl,
                ),
              ),
              HospitalCard(
                title: "অরিন ট্রাভেলস",
                onTab: () => _onTap(
                  ["01712345678", "01812345678"],
                  LocationUrls.orinUrl,
                  LocationUrls.ticketBookingUrl,
                ),
              ),
              HospitalCard(title: "title"),
              HospitalCard(title: "title"),
              HospitalCard(title: "title"),
              HospitalCard(title: "title"),
              HospitalCard(title: "title"),
              HospitalCard(
                title: "শ্যামলী পরিবহন",
                onTab: () => _onTap(
                  ["01712345678", "01812345678"],
                  LocationUrls.shemoliUrl,
                  LocationUrls.ticketBookingUrl,
                ),
              ),
              HospitalCard(
                title: "হানিফ এন্টারপ্রাইজ",
                onTab: () => _onTap(
                  ["01712345678", "01812345678"],
                  LocationUrls.hanifUrl,
                  LocationUrls.ticketBookingUrl,
                ),
              ),
              HospitalCard(
                title: "লোকাল বাস সমূহ",
                onTab: () => _onTap([
                  "01712345678",
                  "01812345678",
                ], LocationUrls.allbusUrl, null),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(
    List<String> contactNmbrs,
    String locationUrl,
    String? ticketBookingUrl,
  ) {
    {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BusDetails(
            contactNmbrs: contactNmbrs,
            locationUrl: locationUrl,
            ticketBookingUrl: ticketBookingUrl,
          ),
        ),
      );
    }
  }
}
