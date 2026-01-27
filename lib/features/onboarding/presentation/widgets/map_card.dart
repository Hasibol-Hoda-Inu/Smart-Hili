import 'package:flutter/material.dart';

class MapCard extends StatefulWidget {
  const MapCard({super.key});

  @override
  State<MapCard> createState() => _MapCardState();
}

class _MapCardState extends State<MapCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeOut,
        // Scale effect: 1.05 on hover, 1.0 normally
        transform: Matrix4.identity()..scale(isHovered ? 1.05 : 1.0),
        width: 300, // Adjust as needed
        height: 300, // Adjust as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          // Using the specific shadow logic we discussed
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0E776E).withAlpha(51), // rgba(14, 119, 110, 0.2)
              blurRadius: 40,
              spreadRadius: -10,
              offset: const Offset(0, 20),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('assets/map_image.png'), // Replace with your map asset
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Bottom Gradient Overlay (to match the map look)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withAlpha(50),
                  ],
                ),
              ),
            ),
            // Floating Pin
            const Center(
              child: Icon(
                Icons.location_on,
                color: Colors.red,
                size: 60,
                shadows: [Shadow(blurRadius: 10, color: Colors.black26)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}