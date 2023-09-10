import 'package:app_1/components/button.dart';
import 'package:app_1/pages/cart.dart';
import 'package:flutter/material.dart';

class FestivalPage extends StatefulWidget {
  const FestivalPage({super.key});

  @override
  State<FestivalPage> createState() => _FestivalPageState();
}

class _FestivalPageState extends State<FestivalPage> {
  int quantityCount = 0;

  // Decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
      if (quantityCount < 0) {
        quantityCount = 0;
      }
    });
  }

  // Increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // Navigate to NewPage and potentially receive a result
  void goToNewPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPage(quantity: quantityCount),
      ),
    );

    if (result != null && result is int) {
      setState(() {
        quantityCount = result;
      });
    }
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
          // ... (Ihr bisheriger Code bleibt hier unverändert)

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
                              onPressed: () => decrementQuantity(),
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
                              onPressed: () => incrementQuantity(),
                            ),
                          ),
                        ],
                      ),

                      // ... (Ihr bisheriger Code bleibt hier unverändert)
                    ],
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: "in den Einkaufswagen",
                    event: () => goToNewPage(), // Änderung hier
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
