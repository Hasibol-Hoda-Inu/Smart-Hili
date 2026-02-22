import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imagePath;
  final String tag;

  const DetailScreen({super.key, required this.imagePath, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background makes the image pop
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Hero(
            tag: tag, // Must match the tag from the grid
            child: InteractiveViewer( // Allows users to pinch and zoom
              child: Image.asset(imagePath),
            ),
          ),
        ),
      ),
    );
  }
}