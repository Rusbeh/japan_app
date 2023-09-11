import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 165, 187),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Warenkorb"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (cart.nudelsuppe > 0)
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 61, 91, 212),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          title: const Text(
                            "Nudelsuppe",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            "€ 18,00",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cart.nudelsuppe.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(width: 14),
                              IconButton(
                                onPressed: () => cart.clearNudelsuppe(),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 12),
                    if (cart.festival > 0)
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 61, 91, 212),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          title: Text(
                            "Festival",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            "€ 49,00",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(cart.festival.toString(),
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(width: 14),
                              IconButton(
                                onPressed: () => cart.clearFestival(),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    // Fügen Sie hier weitere Produkte hinzu, aber nur wenn deren Anzahl > 0 ist
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
