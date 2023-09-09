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
  List ActivityList = [
    ActivityTile(
        name: "Sushi",
        price: "25",
        imagePath: "lib/images/japan5.png",
        rating: "4"),
    ActivityTile(
      name: "Nuddelsuppe",
      price: "18",
      imagePath: "lib/images/japan4.png",
      rating: "4",
    ),
    ActivityTile(
      name: "Kimono",
      price: "49",
      imagePath: "lib/images/japan3.png",
      rating: "5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("J A P A N"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: const Color(0xffffb46c),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message

                    const Text(
                      "32% Nachlass",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(height: 20),
                    MyButton(text: "Buchen", event: () {})

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
              padding: EdgeInsets.symmetric(horizontal: 27.0),
              child: Text("Events",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ActivityList.length,
              itemBuilder: (context, index) => ActivityList[index],
            ),
          ),

          const SizedBox(height: 10),

          // Container(
          //   padding: EdgeInsets.all(20),
          //   width: 210,
          //   margin: const EdgeInsets.only(left: 30),
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 66, 80, 199),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Image.asset(
          //         "lib/images/japan2.png",
          //         height: 165,
          //       ),
          //       const SizedBox(height: 10),
          //       const Text(
          //         "suhsi",
          //         style: TextStyle(fontSize: 22, color: Colors.white),
          //       ),
          //       const SizedBox(height: 10),
          //       const Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "€ 25",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //           Text("4,7"),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 185, 160),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset("lib/images/japan3.png"),
                    ),
                    const SizedBox(width: 40),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kimono Show",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Text("€ 33",
                            style: TextStyle(fontSize: 18, color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
