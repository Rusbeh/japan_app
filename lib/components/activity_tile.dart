import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String rating;
  final void Function()? details;

  const ActivityTile(
      {super.key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.rating,
      required this.details});

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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: details,
              child: Image.asset(
                imagePath,
                height: 200,
              ),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "€ ${price}",
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rating,
                      style: TextStyle(color: Colors.white),
                    ),
                    const Icon(Icons.star,
                        size: 15, color: Color.fromARGB(255, 224, 198, 6))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
