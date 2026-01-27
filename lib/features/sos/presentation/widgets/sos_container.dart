import 'package:flutter/material.dart';

class SosContainer extends StatelessWidget {
  const SosContainer({
    super.key, required this.title, required this.subTitle, required this.icon, required this.color,
  });

  final String title;
  final String subTitle;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: double.maxFinite,

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: color.withAlpha(77),
                  offset: const Offset(0, 10),
                  spreadRadius: -2,
                  blurRadius: 20

              )
            ]
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(color: Colors.white70),
                    shape: BoxShape.circle
                ),
                child: Icon(icon, color: Colors.white,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
                Text(subTitle,
                  style: const TextStyle(
                      color: Colors.white
                  ),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("999",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Free", style: TextStyle(
                      color: Colors.white
                  ),),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}