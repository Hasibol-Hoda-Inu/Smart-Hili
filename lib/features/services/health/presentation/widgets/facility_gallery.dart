import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FacilityGallery extends StatelessWidget {
  final List<String> images;

  const FacilityGallery({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            // Large Main Image (Occupies 2x2)
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: _buildImageCard(images[0]),
            ),
            // Side Image 1
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: _buildImageCard(images[1]),
            ),
            // Side Image 2
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: _buildImageCard(images[2]),
            ),
            // Side Image 3 with "View All" Overlay
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: _buildImageCard(images[3], isLast: true, count: images.length - 4),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImageCard(String url, {bool isLast = false, int count = 0}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
      child: isLast && count > 0
          ? Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "+$count",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
          : null,
    );
  }
}