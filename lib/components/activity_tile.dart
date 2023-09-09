import 'package:app_1/modules/activity.dart';
import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String rating;

  const ActivityTile({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 200,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "€ ${price}",
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  rating,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
