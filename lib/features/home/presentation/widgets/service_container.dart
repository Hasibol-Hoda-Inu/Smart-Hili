import 'package:flutter/material.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    this.onTap,
    required this.screenWidth,
    required this.screenHeight,
  });

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;
  final double screenWidth;
  final double screenHeight;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        // width: screenWidth * 0.43,
        // height: screenHeight * 0.25,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: color.withAlpha(30),
                      // border: Border.all(color: color.withAlpha(177)),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                    icon,
                    size: 24,
                    color: color,
                  ),
              ),
            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}