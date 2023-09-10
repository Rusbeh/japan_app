import 'package:app_1/components/button.dart';
import 'package:app_1/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Importieren Sie Provider

class NudelsuppePage extends StatefulWidget {
  const NudelsuppePage({super.key});

  @override
  State<NudelsuppePage> createState() => _NudelsuppePageState();
}

class _NudelsuppePageState extends State<NudelsuppePage> {
  int quantityCount = 0;

//decrement quantity
  void decrementQuantitiy() {
    setState(() {
      quantityCount--;
      if (quantityCount == -1) {
        quantityCount = 0;
      }
    });
  }

  //decrement quantity
  void incrementQuantitiy() {
    setState(() {
      quantityCount++;
    });
  }

  void goToNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPage(quantity: quantityCount),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(
                    "lib/images/japan4.png",
                    height: 220,
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "5,0",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Nuddelsuppe",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Das erwartet Sie",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Das Mitama Matsuri Festival in Tokyo beeindruckt mit Tausenden von leuchtenden Laternen, die den Yasukuni-Schrein erhellen und den Geistern der Kriegsopfer gewidmet sind. Besucher können traditionelle Darbietungen genießen, köstliches japanisches Streetfood probieren und an spirituellen Zeremonien teilnehmen.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Color.fromARGB(255, 61, 91, 212),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "€ 49,00",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => decrementQuantitiy(),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            quantityCount.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => incrementQuantitiy(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: "in den Einkaufswagen",
                    event: () => goToNewPage(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
