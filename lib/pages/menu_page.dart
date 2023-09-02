import 'package:app_1/components/activity_tile.dart';
import 'package:app_1/components/button.dart';
import 'package:app_1/modules/activity.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List Events = [
    Activity(
        name: "Sushi",
        price: "25",
        imagePath: "lib/images/japan5.png",
        rating: "4"),
    Activity(
      name: "Nuddelsuppe",
      price: "18",
      imagePath: "lib/images/japan4.png",
      rating: "4",
    ),
    Activity(
      name: "Kimono",
      price: "49",
      imagePath: "lib/images/japan3.png",
      rating: "5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 164, 213),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("J A P A N"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Color(0xffffb46c),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message

                    const Text(
                      "Get 32% Promo",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(height: 20),
                    MyButton(text: "Redeem", event: () {})

                    // redeem button
                  ],
                ),
                Image.asset("lib/images/japan8.png", height: 135),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Suche...",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Events",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold))),
          const SizedBox(height: 20),

          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Events.length,
            itemBuilder: (context, index) =>
                ActivityTile(activity: Events[index]),
          ))
        ],
      ),
    );
  }
}
