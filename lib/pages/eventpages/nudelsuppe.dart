import 'package:app_1/components/button.dart';
import 'package:app_1/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/cart_model.dart'; // Vergewissern Sie sich, dass der Importpfad korrekt ist

class NudelsuppePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Consumer<CartModel>(
        builder: (context, cartModel, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListView(
                      // Ihr restlicher Code, wie Bilder, Text etc.
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
                            "€ 13,00",
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
                                  onPressed: cartModel.removeNudelsuppe,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                cartModel.nudelsuppe.toString(),
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
                                  onPressed: cartModel.addNudelsuppe,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      MyButton(
                        text: "zum Einkaufswagen",
                        event: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
