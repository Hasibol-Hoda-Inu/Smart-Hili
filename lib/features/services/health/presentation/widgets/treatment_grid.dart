import 'package:flutter/material.dart';

class TreatmentType {
  final String title;
  final IconData icon;
  final Color color;

  TreatmentType({
    required this.title,
    required this.icon,
    required this.color,
  });
}

class TreatmentGrid extends StatelessWidget {
  const TreatmentGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TreatmentType> treatments = [
      TreatmentType(title: "স্কেলিং", icon: Icons.clean_hands, color: Colors.blue),
      TreatmentType(title: "রুট ক্যানেল", icon: Icons.biotech, color: Colors.orange),
      TreatmentType(title: "ব্রেসেস", icon: Icons.grid_on, color: Colors.purple),
      TreatmentType(title: "দাঁত তোলা", icon: Icons.remove_circle_outline, color: Colors.red),
      TreatmentType(title: "ডেন্টাল ইমপ্ল্যান্ট", icon: Icons.settings_backup_restore, color: Colors.teal),
      TreatmentType(title: "চেকআপ", icon: Icons.visibility, color: Colors.green),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.9, // Adjust height/width ratio
          ),
          itemCount: treatments.length,
          itemBuilder: (context, index) {
            final item = treatments[index];
            return _buildTreatmentCard(item);
          },
        ),
      ],
    );
  }

  Widget _buildTreatmentCard(TreatmentType item) {
    return Container(
      decoration: BoxDecoration(
        color: item.color.withAlpha(26),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: item.color.withAlpha(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, color: item.color, size: 30),
          const SizedBox(height: 10),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D3232),
            ),
          ),
        ],
      ),
    );
  }
}