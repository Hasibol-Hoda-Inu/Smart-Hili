import 'package:flutter/material.dart';

class TrainStoppingTimeWidget extends StatelessWidget {
  const TrainStoppingTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const Row(
              children: [
                Expanded(flex: 3, child: Text('ট্রেনের নাম', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ))),
                Expanded(flex: 2, 
                child: Text('পৌঁছাবে', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ))),
                Expanded(
                  flex: 2, 
                  child: Text(
                    'ছাড়বে', 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
              ],
            ),
          ),

          _buildTrainRow('নীলসাগর এক্সপ্রেস', '২:৩০ PM', '২:৪০ PM'),
          Divider(
            height: 1,
            indent: 16,
            endIndent: 44,
            color: Colors.grey[200],
            ),
          _buildTrainRow('দ্রুতযান এক্সপ্রেস', '৫:১৫ AM', '৫:২৫ AM'),
          Divider(
            height: 1,
            indent: 16,
            endIndent: 44,
            color: Colors.grey[200],
            ),
          _buildTrainRow('একতা এক্সপ্রেস', '১১:১০ PM', '১১:২০ PM'),
          
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildTrainRow(String name, String arrival, String departure) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF00897B)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(arrival, style: const TextStyle(
              fontSize: 16,
              color: Colors.black54)),
          ),
          Expanded(
            flex: 2,
            child: Text(
              departure, 
              style: const TextStyle(
                fontSize: 16, 
                color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}