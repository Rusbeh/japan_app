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
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    List ActivityList = [
      ActivityTile(
        name: "Mitama Matsuri Festival",
        price: "49",
        imagePath: "lib/images/japan10.png",
        rating: "5",
        details: () {
          // go to menu page
          Navigator.pushNamed(context, '/festivalpage');
        },
      ),
      ActivityTile(
        name: "Nuddelsuppe Restaurant",
        price: "18",
        imagePath: "lib/images/japan4.png",
        rating: "4",
        details: () {
          // go to menu page
          Navigator.pushNamed(context, '/nudelsuppepage');
        },
      ),
      ActivityTile(
        name: "Sushi-Buffet",
        price: "25",
        imagePath: "lib/images/japan5.png",
        rating: "4",
        details: () {
          // go to menu page
          Navigator.pushNamed(context, '/menupage');
        },
      ),
    ];

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
                Container(
                  child: Column(
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
                ),
                Image.asset("lib/images/japan8.png", height: 135),
              ],
            ),
          ),
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0),
            child: Text("Events",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          const SizedBox(height: 5),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ActivityList.length,
              itemBuilder: (context, index) => ActivityList[index],
            ),
          ),

          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0),
            child: Text("Derzeit Beliebt",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),

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
          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 185, 160),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "lib/images/japan3.png",
                      height: 140,
                    ),
                    Container(
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Zeitreise im Kimono",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Row(
                            children: [
                              Text("€ 33",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Container(
                                color: Colors.amber,
                                child: Row(
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    const Icon(Icons.star,
                                        size: 20,
                                        color: Color.fromARGB(255, 224, 198, 6))
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
