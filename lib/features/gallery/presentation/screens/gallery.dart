import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../application/app_colors.dart';
import 'image_pop_widget.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wbgColor,
      appBar: AppBar(
          title: const Text("শহরের গ্যালারি"),
        centerTitle: true,
        backgroundColor: AppColors.wbgColor,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("প্রদর্শন"),
            const Text(
              "আমাদের শহরের\nঐতিহ্য ও সৌন্দর্য",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: MasonryGridView.builder(
                itemCount: 12,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                itemBuilder: (context, index){
                  String imagePath = 'assets/images/img${index + 1}.jpg';
                  return GestureDetector(
                  onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return DetailScreen(
                          imagePath: imagePath,
                          tag: 'img${index + 1}',
                        );
                      })
                  ),
                  child: Hero(
                    tag: 'img${index + 1}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(imagePath),
                    ),
                  ),
                );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
